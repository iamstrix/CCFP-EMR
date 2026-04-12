<?php
/**
 * dashboard/index.php — Analytics Dashboard
 * ------------------------------------------
 * Queries:
 *   1. Top 10 diagnoses (bar chart)
 *   2. Visits per month past 12 months (line chart)
 *   3. Sex breakdown (pie chart)
 *   4. Age group breakdown (pie chart)
 *   5. Category breakdown (doughnut chart)
 *   6. IP vs Non-IP vs NHTS (bar chart)
 *
 * Chart.js assumed at: /assets/js/chart.min.js
 */
define('ROOT', dirname(__DIR__));
require_once ROOT . '/db_connect.php';

$pageTitle = 'Analytics Dashboard';
$activeNav = 'home';

// ── 1. Top diagnoses ──────────────────────────────────────
$topDx = $pdo->query(
    "SELECT diagnosis, COUNT(*) AS cnt
     FROM consultation
     WHERE diagnosis IS NOT NULL AND diagnosis <> ''
     GROUP BY diagnosis
     ORDER BY cnt DESC
     LIMIT 10"
)->fetchAll();

// ── 2. Visits per month (last 12) ────────────────────────
$visitsByMonth = $pdo->query(
    "SELECT DATE_FORMAT(visit_date,'%Y-%m') AS ym,
            DATE_FORMAT(visit_date,'%b %Y') AS label,
            COUNT(*) AS cnt
     FROM consultation
     WHERE visit_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
     GROUP BY ym, label
     ORDER BY ym"
)->fetchAll();

// ── 3. Sex breakdown ─────────────────────────────────────
$sexBreakdown = $pdo->query(
    "SELECT sex, COUNT(*) AS cnt FROM patient GROUP BY sex"
)->fetchAll();

// ── 4. Age groups ─────────────────────────────────────────
$ageGroups = $pdo->query(
    "SELECT
       CASE
         WHEN TIMESTAMPDIFF(YEAR,dob,CURDATE()) < 5  THEN '0–4'
         WHEN TIMESTAMPDIFF(YEAR,dob,CURDATE()) < 13 THEN '5–12'
         WHEN TIMESTAMPDIFF(YEAR,dob,CURDATE()) < 19 THEN '13–18'
         WHEN TIMESTAMPDIFF(YEAR,dob,CURDATE()) < 36 THEN '19–35'
         WHEN TIMESTAMPDIFF(YEAR,dob,CURDATE()) < 60 THEN '36–59'
         ELSE '60+'
       END AS age_group,
       COUNT(*) AS cnt
     FROM patient
     GROUP BY age_group
     ORDER BY MIN(dob)"
)->fetchAll();

// ── 5. Category breakdown ─────────────────────────────────
$catBreakdown = $pdo->query(
    "SELECT IFNULL(cat.name,'Uncategorized') AS name, COUNT(*) AS cnt
     FROM consultation c
     LEFT JOIN category cat ON c.category_id = cat.category_id
     GROUP BY cat.name
     ORDER BY cnt DESC"
)->fetchAll();

// ── 6. Demographic tags ──────────────────────────────────
$demog = $pdo->query(
    "SELECT
       SUM(is_ip=1 AND is_nhts=0)  AS ip_only,
       SUM(is_nhts=1 AND is_ip=0)  AS nhts_only,
       SUM(is_ip=1 AND is_nhts=1)  AS ip_and_nhts,
       SUM(is_ip=0 AND is_nhts=0)  AS regular
     FROM household"
)->fetch();

// ── Summary stats ─────────────────────────────────────────
$totPat  = $pdo->query("SELECT COUNT(*) FROM patient")->fetchColumn();
$totCons = $pdo->query("SELECT COUNT(*) FROM consultation")->fetchColumn();
$totHH   = $pdo->query("SELECT COUNT(*) FROM household")->fetchColumn();
$thisMonth = $pdo->query("SELECT COUNT(*) FROM consultation WHERE MONTH(visit_date)=MONTH(CURDATE()) AND YEAR(visit_date)=YEAR(CURDATE())")->fetchColumn();

// ── PHP → JS helpers ──────────────────────────────────────
function jsArray(array $data, string $key): string {
    return json_encode(array_column($data, $key));
}
function palette(int $n): string {
    $colors = ['#1f3b9a','#dfc14f','#0284c7','#dc2626','#16a34a','#7c3aed','#db2777','#ea580c','#65a30d','#0891b2'];
    $out = [];
    for ($i=0; $i<$n; $i++) $out[] = $colors[$i % count($colors)];
    return json_encode($out);
}

require_once ROOT . '/includes/header.php';
?>

<!-- Stat tiles -->
<div class="stat-grid">
  <div class="stat-tile">
    <div class="label">Total Patients</div>
    <div class="value"><?= number_format($totPat) ?></div>
  </div>
  <div class="stat-tile accent">
    <div class="label">Households</div>
    <div class="value"><?= number_format($totHH) ?></div>
  </div>
  <div class="stat-tile success">
    <div class="label">Total Encounters</div>
    <div class="value"><?= number_format($totCons) ?></div>
  </div>
  <div class="stat-tile info">
    <div class="label">This Month</div>
    <div class="value"><?= number_format($thisMonth) ?></div>
  </div>
</div>

<!-- Row 1: Top diagnoses + Monthly visits -->
<div class="chart-grid">
  <div class="card">
    <div class="card-title">Top 10 Diagnoses</div>
    <div class="chart-box"><canvas id="chartDx"></canvas></div>
  </div>
  <div class="card">
    <div class="card-title">Monthly Visits (Last 12 Months)</div>
    <div class="chart-box"><canvas id="chartMonthly"></canvas></div>
  </div>
</div>

<!-- Row 2: Pie / doughnut charts -->
<div class="chart-grid" style="grid-template-columns:repeat(auto-fill,minmax(280px,1fr));">
  <div class="card">
    <div class="card-title">Sex Breakdown</div>
    <div class="chart-box" style="height:240px;"><canvas id="chartSex"></canvas></div>
  </div>
  <div class="card">
    <div class="card-title">Age Groups</div>
    <div class="chart-box" style="height:240px;"><canvas id="chartAge"></canvas></div>
  </div>
  <div class="card">
    <div class="card-title">Visits by Category</div>
    <div class="chart-box" style="height:240px;"><canvas id="chartCat"></canvas></div>
  </div>
  <div class="card">
    <div class="card-title">Household Demographics</div>
    <div class="chart-box" style="height:240px;"><canvas id="chartDemog"></canvas></div>
  </div>
</div>

<!-- Top diagnoses table -->
<div class="card">
  <div class="card-title">Diagnosis Frequency Table</div>
  <div class="table-wrap">
    <table>
      <thead><tr><th>Rank</th><th>Diagnosis</th><th>Encounter Count</th></tr></thead>
      <tbody>
        <?php if (empty($topDx)): ?>
          <tr><td colspan="3" class="text-muted">No diagnoses recorded yet.</td></tr>
        <?php else: ?>
          <?php foreach ($topDx as $rank => $row): ?>
          <tr>
            <td><?= $rank+1 ?></td>
            <td><?= htmlspecialchars($row['diagnosis']) ?></td>
            <td><strong><?= $row['cnt'] ?></strong></td>
          </tr>
          <?php endforeach; ?>
        <?php endif; ?>
      </tbody>
    </table>
  </div>
</div>

<!-- Chart.js — loaded locally -->
<script src="<?= str_repeat('../',1) ?>assets/js/chart.min.js"></script>
<script>
Chart.defaults.font.family = "'Segoe UI', Arial, sans-serif";
Chart.defaults.plugins.legend.position = 'bottom';

const PRIMARY = '#1f3b9a';
const AMBER  = '#dfc14f';
const MUTED  = '#6b7280';

/* ── 1. Top Diagnoses Bar ── */
new Chart(document.getElementById('chartDx'), {
  type: 'bar',
  data: {
    labels : <?= jsArray($topDx, 'diagnosis') ?>,
    datasets: [{
      label: 'Encounters',
      data : <?= jsArray($topDx, 'cnt') ?>,
      backgroundColor: <?= palette(count($topDx)) ?>,
      borderRadius: 6
    }]
  },
  options: {
    responsive: true, maintainAspectRatio: false,
    plugins: { legend: { display: false } },
    scales: {
      x: { ticks: { maxRotation: 30, font: { size: 11 } } },
      y: { beginAtZero: true, ticks: { precision: 0 } }
    }
  }
});

/* ── 2. Monthly Line ── */
new Chart(document.getElementById('chartMonthly'), {
  type: 'line',
  data: {
    labels : <?= jsArray($visitsByMonth, 'label') ?>,
    datasets: [{
      label: 'Visits',
      data : <?= jsArray($visitsByMonth, 'cnt') ?>,
      borderColor: PRIMARY,
      backgroundColor: 'rgba(31,59,154,.12)',
      fill: true,
      tension: 0.4,
      pointBackgroundColor: PRIMARY,
      pointRadius: 5
    }]
  },
  options: {
    responsive: true, maintainAspectRatio: false,
    plugins: { legend: { display: false } },
    scales: { y: { beginAtZero: true, ticks: { precision: 0 } } }
  }
});

/* ── 3. Sex Pie ── */
new Chart(document.getElementById('chartSex'), {
  type: 'pie',
  data: {
    labels : <?= jsArray($sexBreakdown, 'sex') ?>,
    datasets: [{ data: <?= jsArray($sexBreakdown, 'cnt') ?>, backgroundColor: <?= palette(count($sexBreakdown)) ?> }]
  },
  options: { responsive: true, maintainAspectRatio: false }
});

/* ── 4. Age Groups Doughnut ── */
new Chart(document.getElementById('chartAge'), {
  type: 'doughnut',
  data: {
    labels : <?= jsArray($ageGroups, 'age_group') ?>,
    datasets: [{ data: <?= jsArray($ageGroups, 'cnt') ?>, backgroundColor: <?= palette(count($ageGroups)) ?> }]
  },
  options: { responsive: true, maintainAspectRatio: false }
});

/* ── 5. Category Doughnut ── */
new Chart(document.getElementById('chartCat'), {
  type: 'doughnut',
  data: {
    labels : <?= jsArray($catBreakdown, 'name') ?>,
    datasets: [{ data: <?= jsArray($catBreakdown, 'cnt') ?>, backgroundColor: <?= palette(count($catBreakdown)) ?> }]
  },
  options: { responsive: true, maintainAspectRatio: false }
});

/* ── 6. Household Demographics Bar ── */
new Chart(document.getElementById('chartDemog'), {
  type: 'bar',
  data: {
    labels: ['IP Only','NHTS Only','IP + NHTS','Regular'],
    datasets: [{
      data: [
        <?= (int)$demog['ip_only'] ?>,
        <?= (int)$demog['nhts_only'] ?>,
        <?= (int)$demog['ip_and_nhts'] ?>,
        <?= (int)$demog['regular'] ?>
      ],
      backgroundColor: ['#7c3aed','#dfc14f','#dc2626','#1f3b9a'],
      borderRadius: 6
    }]
  },
  options: {
    responsive: true, maintainAspectRatio: false,
    plugins: { legend: { display: false } },
    scales: { y: { beginAtZero: true, ticks: { precision: 0 } } }
  }
});
</script>

<?php require_once ROOT . '/includes/footer.php'; ?>
