<?php
/**
 * consultations/list.php — Encounter log with filters
 */
define('ROOT', dirname(__DIR__));
require_once ROOT . '/db_connect.php';

$pageTitle = 'Encounter Log';
$activeNav = 'consult-list';

$search  = trim($_GET['q']       ?? '');
$dateFrom= trim($_GET['date_from']?? '');
$dateTo  = trim($_GET['date_to'] ?? '');

$params = [];
$where  = ['1=1'];

if ($search) {
    $like = "%$search%";
    $where[] = "(p.patient_name LIKE ? OR c.chief_complaint LIKE ? OR c.diagnosis LIKE ?)";
    $params  = array_merge($params, [$like,$like,$like]);
}
if ($dateFrom) { $where[] = "c.visit_date >= ?"; $params[] = $dateFrom; }
if ($dateTo)   { $where[] = "c.visit_date <= ?"; $params[] = $dateTo;   }

$sql = "SELECT c.consultation_id, c.visit_date, c.chief_complaint, c.diagnosis,
               p.patient_name, p.patient_id,
               CONCAT(ph.last_name,', ',ph.first_name) AS physician
        FROM consultation c
        JOIN patient p ON c.patient_id = p.patient_id
        LEFT JOIN physician ph  ON c.physician_id = ph.physician_id
        WHERE " . implode(' AND ', $where) . "
        ORDER BY c.visit_date DESC, c.consultation_id DESC
        LIMIT 500";

$stmt = $pdo->prepare($sql);
$stmt->execute($params);
$rows = $stmt->fetchAll();

require_once ROOT . '/includes/header.php';
?>

<!-- Page Header -->
<div class="page-header">
  <div class="page-header-title">
    <h1>Clinical Encounter Log</h1>
    <p class="text-muted">History of patient consultations and treatments.</p>
  </div>
  <div class="page-header-actions no-print">
    <a href="../index.php" class="btn btn-back-hub">
      <svg width="18" height="18" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path d="M10 19l-7-7m0 0l7-7m-7 7h18"></path></svg>
      Back to Dashboard
    </a>
  </div>
</div>

<div class="card" style="margin-bottom:1rem;">
  <form method="GET">
    <div style="display:flex; gap:.75rem; flex-wrap:wrap; align-items:flex-end;">
      <div class="form-group" style="flex:1; min-width:180px;">
        <label for="q">Search patient / diagnosis</label>
        <input type="text" name="q" id="q" value="<?= htmlspecialchars($search) ?>" placeholder="e.g. Fever, Santos…">
      </div>
      <div class="form-group">
        <label for="date_from">From</label>
        <input type="date" name="date_from" id="date_from" value="<?= htmlspecialchars($dateFrom) ?>">
      </div>
      <div class="form-group">
        <label for="date_to">To</label>
        <input type="date" name="date_to" id="date_to" value="<?= htmlspecialchars($dateTo) ?>">
      </div>
      <button type="submit" class="btn btn-primary btn-sm">Filter</button>
      <a href="list.php" class="btn btn-outline btn-sm">Reset</a>
    </div>
  </form>
</div>

<div class="card">
  <div class="card-title" style="justify-content:space-between; display:flex; flex-wrap:wrap; gap:.5rem;">
    <span>Encounters <span style="font-weight:400;color:var(--clr-text-muted);font-size:.85rem;">(<?= count($rows) ?>)</span></span>
    <a href="new.php" class="btn btn-primary btn-sm">New Encounter</a>
  </div>

  <?php if (empty($rows)): ?>
    <p class="text-muted">No encounters match your filters.</p>
  <?php else: ?>
  <div class="table-wrap">
    <table>
      <thead>
        <tr>
          <th>#</th>
          <th>Date</th>
          <th>Patient</th>
          <th>Chief Complaint</th>
          <th>Diagnosis</th>
          <th>Physician</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($rows as $r): ?>
        <tr>
          <td><?= $r['consultation_id'] ?></td>
          <td style="white-space:nowrap;"><?= htmlspecialchars($r['visit_date']) ?></td>
          <td><a href="../patients/view.php?id=<?= $r['patient_id'] ?>"><?= htmlspecialchars($r['patient_name']) ?></a></td>
          <td><?= htmlspecialchars(mb_strimwidth($r['chief_complaint'] ?? '—', 0, 40, '…')) ?></td>
          <td><span class="badge badge-blue"><?= htmlspecialchars(mb_strimwidth($r['diagnosis'] ?? '—', 0, 40, '…')) ?></span></td>
          <td><?= htmlspecialchars($r['physician'] ?? '—') ?></td>
          <td><a href="view.php?id=<?= $r['consultation_id'] ?>" class="btn btn-sm btn-outline">View</a></td>
        </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </div>
  <?php endif; ?>
</div>

<?php require_once ROOT . '/includes/footer.php'; ?>
