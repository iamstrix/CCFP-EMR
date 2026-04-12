<?php
/**
 * consultations/view.php — Single encounter detail
 */
define('ROOT', dirname(__DIR__));
require_once ROOT . '/db_connect.php';

$id = (int)($_GET['id'] ?? 0);
if (!$id) { header('Location: list.php'); exit; }

$stmt = $pdo->prepare(
    "SELECT c.*,
            CONCAT(p.last_name,', ',p.first_name) AS patient_name, p.patient_id,
            TIMESTAMPDIFF(YEAR, p.dob, c.visit_date)     AS age_at_visit,
            p.sex, p.dob,
            h.barangay, h.is_ip, h.is_nhts,
            cat.name AS category_name,
            CONCAT(ph.last_name,', ',ph.first_name) AS physician_name,
            ph.specialty
     FROM consultation c
     JOIN patient p ON c.patient_id = p.patient_id
     JOIN household h ON p.household_id = h.household_id
     LEFT JOIN category cat ON c.category_id = cat.category_id
     LEFT JOIN physician ph  ON c.physician_id = ph.physician_id
     WHERE c.consultation_id = ?"
);
$stmt->execute([$id]);
$c = $stmt->fetch();
if (!$c) { header('Location: list.php'); exit; }

$pageTitle = 'Encounter #' . $id;
$activeNav = 'consult-list';
require_once ROOT . '/includes/header.php';
?>

<div class="no-print flex gap-2" style="margin-bottom:1rem; flex-wrap:wrap;">
  <a href="list.php" class="btn btn-outline btn-sm">&#8592; Encounter Log</a>
  <a href="../patients/view.php?id=<?= $c['patient_id'] ?>" class="btn btn-outline btn-sm">&#128100; Patient Record</a>
  <button onclick="window.print()" class="btn btn-outline btn-sm">&#128438; Print</button>
</div>

<!-- Print header (only visible when printing) -->
<div style="display:none;" class="print-header">
  <h2 style="text-align:center; font-size:1.2rem;">VALDESCARE — Consultation Record</h2>
  <p style="text-align:center; font-size:.85rem;">Encounter #<?= $id ?> · <?= htmlspecialchars($c['visit_date']) ?></p>
  <hr>
</div>

<div class="card">
  <div style="display:flex; justify-content:space-between; flex-wrap:wrap; gap:1rem;">
    <div>
      <h3 style="font-size:1.3rem; font-weight:800; color:var(--clr-primary-dk);">
        <?= htmlspecialchars($c['patient_name']) ?>
      </h3>
      <p class="text-muted">
        <?= $c['age_at_visit'] ?> years old · <?= htmlspecialchars($c['sex']) ?>
        &bull; <?= htmlspecialchars($c['barangay']) ?>
        <?php if ($c['is_ip']): ?>  · <span class="badge badge-purple">IP</span> <?php endif; ?>
        <?php if ($c['is_nhts']): ?>· <span class="badge badge-amber">NHTS</span><?php endif; ?>
      </p>
    </div>
    <div style="text-align:right;">
      <div class="bold" style="font-size:1.1rem;"><?= htmlspecialchars($c['visit_date']) ?><?= $c['visit_time'] ? ' · '.htmlspecialchars($c['visit_time']) : '' ?></div>
      <?php if ($c['category_name']): ?>
        <span class="badge badge-green"><?= htmlspecialchars($c['category_name']) ?></span>
      <?php endif; ?>
      <?php if ($c['physician_name']): ?>
        <div class="text-muted" style="margin-top:.3rem;">Dr. <?= htmlspecialchars($c['physician_name']) ?><?= $c['specialty'] ? ' — '.$c['specialty'] : '' ?></div>
      <?php endif; ?>
    </div>
  </div>
</div>

<!-- Vitals -->
<div class="card">
  <div class="card-title">Vitals</div>
  <div class="form-grid">
    <?php
    $vitals = [
      'Weight'        => $c['weight_kg']        ? $c['weight_kg'].' kg'    : '—',
      'Height'        => $c['height_cm']        ? $c['height_cm'].' cm'   : '—',
      'Blood Pressure'=> ($c['bp_systolic'] && $c['bp_diastolic']) ? $c['bp_systolic'].'/'.$c['bp_diastolic'].' mmHg' : '—',
      'Temperature'   => $c['temperature_c']   ? $c['temperature_c'].'°C' : '—',
      'Pulse Rate'    => $c['pulse_rate']       ? $c['pulse_rate'].' bpm'  : '—',
      'Resp. Rate'    => $c['respiratory_rate'] ? $c['respiratory_rate'].' brpm':'—',
      'SpO₂'          => $c['oxygen_sat']       ? $c['oxygen_sat'].'%'     : '—',
    ];
    foreach ($vitals as $label => $val): ?>
    <div class="form-group">
      <label><?= $label ?></label>
      <div class="bold"><?= htmlspecialchars($val) ?></div>
    </div>
    <?php endforeach; ?>
  </div>
</div>

<!-- Clinical notes -->
<div class="card">
  <div class="card-title">Clinical Notes</div>
  <div class="form-grid">
    <div class="form-group" style="grid-column:1/-1;">
      <label>Chief Complaint</label>
      <div><?= nl2br(htmlspecialchars($c['chief_complaint'])) ?></div>
    </div>
    <?php if ($c['symptoms']): ?>
    <div class="form-group" style="grid-column:1/-1;">
      <label>Symptoms / HPI</label>
      <div><?= nl2br(htmlspecialchars($c['symptoms'])) ?></div>
    </div>
    <?php endif; ?>
    <div class="form-group">
      <label>Diagnosis</label>
      <div class="bold"><?= htmlspecialchars($c['diagnosis'] ?? '—') ?></div>
    </div>
    <div class="form-group">
      <label>ICD-10</label>
      <div><?= htmlspecialchars($c['icd10_code'] ?? '—') ?></div>
    </div>
    <?php if ($c['treatment']): ?>
    <div class="form-group" style="grid-column:1/-1;">
      <label>Treatment</label>
      <div><?= nl2br(htmlspecialchars($c['treatment'])) ?></div>
    </div>
    <?php endif; ?>
    <?php if ($c['medications']): ?>
    <div class="form-group" style="grid-column:1/-1;">
      <label>Medications</label>
      <div><?= nl2br(htmlspecialchars($c['medications'])) ?></div>
    </div>
    <?php endif; ?>
    <?php if ($c['remarks']): ?>
    <div class="form-group" style="grid-column:1/-1;">
      <label>Remarks</label>
      <div><?= nl2br(htmlspecialchars($c['remarks'])) ?></div>
    </div>
    <?php endif; ?>
    <div class="form-group">
      <label>Follow-up Date</label>
      <div><?= $c['follow_up_date'] ? htmlspecialchars($c['follow_up_date']) : '—' ?></div>
    </div>
    <div class="form-group">
      <label>Referred to Hospital</label>
      <div><?= $c['is_referred'] ? '<span class="badge badge-red">Yes</span>' : 'No' ?></div>
    </div>
  </div>
</div>

<?php require_once ROOT . '/includes/footer.php'; ?>
