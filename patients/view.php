<?php
/**
 * patients/view.php — Patient detail + consultation history
 */
define('ROOT', dirname(__DIR__));
require_once ROOT . '/db_connect.php';

$id = (int)($_GET['id'] ?? 0);
if (!$id) { header('Location: list.php'); exit; }

$stmt = $pdo->prepare(
    "SELECT p.*, h.barangay, h.street_address, h.municipality, h.is_ip, h.is_nhts,
            TIMESTAMPDIFF(YEAR, p.dob, CURDATE()) AS age
     FROM patient p JOIN household h ON p.household_id = h.household_id
     WHERE p.patient_id = ?"
);
$stmt->execute([$id]);
$patient = $stmt->fetch();
if (!$patient) { header('Location: list.php'); exit; }

// Consultation history
$history = $pdo->prepare(
    "SELECT c.consultation_id, c.visit_date, c.chief_complaint,
            c.diagnosis, c.treatment, c.follow_up_date, c.is_referred,
            cat.name AS category,
            CONCAT(ph.last_name,', ',ph.first_name) AS physician
     FROM consultation c
     LEFT JOIN category cat ON c.category_id = cat.category_id
     LEFT JOIN physician ph  ON c.physician_id = ph.physician_id
     WHERE c.patient_id = ?
     ORDER BY c.visit_date DESC"
);
$history->execute([$id]);
$consults = $history->fetchAll();

$pageTitle = htmlspecialchars($patient['last_name'] . ', ' . $patient['first_name']);
$activeNav = 'patients';
require_once ROOT . '/includes/header.php';
?>

<!-- Header block -->
<div class="card">
  <div style="display:flex; justify-content:space-between; align-items:flex-start; flex-wrap:wrap; gap:1rem;">
    <div>
      <h2 style="font-size:1.4rem; font-weight:800; color:var(--clr-primary-dk);">
        <?= htmlspecialchars($patient['last_name'] . ', ' . $patient['first_name'])
           . ($patient['middle_name'] ? ' ' . htmlspecialchars($patient['middle_name']) : '') ?>
      </h2>
      <p class="text-muted" style="margin-top:.25rem;">
        Patient #<?= $patient['patient_id'] ?>
        &bull; <?= $patient['age'] ?> years old &bull; <?= htmlspecialchars($patient['sex']) ?>
      </p>
    </div>
    <div class="flex gap-2" style="flex-wrap:wrap;">
      <?php if ($patient['is_ip']): ?>   <span class="badge badge-purple">IP</span>   <?php endif; ?>
      <?php if ($patient['is_nhts']): ?> <span class="badge badge-amber">NHTS</span>  <?php endif; ?>
      <span class="badge badge-<?= $patient['school_status']==='Enrolled' ? 'green' : ($patient['school_status']==='Out of School' ? 'red' : 'gray') ?>">
        <?= htmlspecialchars($patient['school_status']) ?>
      </span>
    </div>
  </div>

  <div class="form-grid" style="margin-top:1.2rem;">
    <div class="form-group">
      <label>Date of Birth</label>
      <div><?= htmlspecialchars($patient['dob']) ?></div>
    </div>
    <div class="form-group">
      <label>PhilHealth #</label>
      <div><?= htmlspecialchars($patient['philhealth_no'] ?? '—') ?></div>
    </div>
    <div class="form-group">
      <label>Address</label>
      <div><?= htmlspecialchars($patient['street_address'] . ', ' . $patient['barangay'] . ', ' . $patient['municipality']) ?></div>
    </div>
    <div class="form-group">
      <label>Total Visits</label>
      <div class="bold" style="font-size:1.5rem; color:var(--clr-primary);"><?= count($consults) ?></div>
    </div>
  </div>

  <div class="form-actions" style="margin-top:.8rem;">
    <a href="../consultations/new.php?patient_id=<?= $id ?>" class="btn btn-primary">&#128203; New Encounter</a>
    <a href="list.php" class="btn btn-outline">&#8592; Back to List</a>
    <a href="../exports/report.php?patient_id=<?= $id ?>" class="btn btn-outline no-print">&#128438; Print Record</a>
  </div>
</div>

<!-- Consultation history -->
<div class="card">
  <div class="card-title">Consultation History</div>
  <?php if (empty($consults)): ?>
    <p class="text-muted">No consultations yet. <a href="../consultations/new.php?patient_id=<?= $id ?>">Start one now</a>.</p>
  <?php else: ?>
  <div class="table-wrap">
    <table>
      <thead>
        <tr>
          <th>Date</th>
          <th>Category</th>
          <th>Physician</th>
          <th>Chief Complaint</th>
          <th>Diagnosis</th>
          <th>Follow-up</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($consults as $c): ?>
        <tr>
          <td style="white-space:nowrap;"><?= htmlspecialchars($c['visit_date']) ?></td>
          <td>
            <?php if ($c['category']): ?>
              <span class="badge badge-green"><?= htmlspecialchars($c['category']) ?></span>
            <?php else: ?><span class="badge badge-gray">—</span><?php endif; ?>
          </td>
          <td><?= htmlspecialchars($c['physician'] ?? '—') ?></td>
          <td><?= htmlspecialchars(mb_strimwidth($c['chief_complaint'], 0, 50, '…')) ?></td>
          <td><?= htmlspecialchars(mb_strimwidth($c['diagnosis'] ?? '—', 0, 50, '…')) ?></td>
          <td>
            <?= $c['follow_up_date'] ? htmlspecialchars($c['follow_up_date']) : '—' ?>
            <?php if ($c['is_referred']): ?> <span class="badge badge-red">Referred</span><?php endif; ?>
          </td>
          <td>
            <a href="../consultations/view.php?id=<?= $c['consultation_id'] ?>" class="btn btn-sm btn-outline">View</a>
          </td>
        </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </div>
  <?php endif; ?>
</div>

<?php require_once ROOT . '/includes/footer.php'; ?>
