<?php
/**
 * consultations/new.php
 * ---------------------
 * Two-role form:
 *   Nurse: selects patient, records vitals + chief complaint
 *   Doctor: fills diagnosis, treatment, follow-up
 * All fields are on one form for simplicity (offline clinic).
 */
define('ROOT', dirname(__DIR__));
require_once ROOT . '/db_connect.php';

$pageTitle    = 'New Encounter';
$activeNav    = 'consult-new';

$errors       = [];
$success      = '';
$prefillPat   = (int)($_GET['patient_id'] ?? 0);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $patId      = (int)($_POST['patient_id']   ?? 0);
    $physId     = ($_POST['physician_id'] !== '') ? (int)$_POST['physician_id'] : null;
    $catId      = ($_POST['category_id']  !== '') ? (int)$_POST['category_id']  : null;
    $visitDate  = $_POST['visit_date']           ?? date('Y-m-d');
    $visitTime  = $_POST['visit_time']           ?? null;
    $complaint  = trim($_POST['chief_complaint'] ?? '');

    // Vitals (nullable)
    $nullify = fn($v) => ($v === '' ? null : $v);
    $weightKg   = $nullify($_POST['weight_kg']       ?? '');
    $heightCm   = $nullify($_POST['height_cm']       ?? '');
    $bpSys      = $nullify($_POST['bp_systolic']     ?? '');
    $bpDia      = $nullify($_POST['bp_diastolic']    ?? '');
    $temp       = $nullify($_POST['temperature_c']   ?? '');
    $pulse      = $nullify($_POST['pulse_rate']      ?? '');
    $rr         = $nullify($_POST['respiratory_rate']?? '');
    $spo2       = $nullify($_POST['oxygen_sat']      ?? '');

    // Clinical
    $symptoms   = $nullify(trim($_POST['symptoms']   ?? ''));
    $diagnosis  = $nullify(trim($_POST['diagnosis']  ?? ''));
    $icd10      = $nullify(trim($_POST['icd10_code'] ?? ''));
    $treatment  = $nullify(trim($_POST['treatment']  ?? ''));
    $meds       = $nullify(trim($_POST['medications']?? ''));
    $remarks    = $nullify(trim($_POST['remarks']    ?? ''));
    $followUp   = $nullify($_POST['follow_up_date']  ?? '');
    $referred   = isset($_POST['is_referred']) ? 1 : 0;

    if (!$patId)    $errors[] = 'Please select a patient.';
    if (!$complaint)$errors[] = 'Chief complaint is required.';

    if (empty($errors)) {
        $stmt = $pdo->prepare(
            "INSERT INTO consultation
               (patient_id, physician_id, category_id, visit_date, visit_time,
                weight_kg, height_cm, bp_systolic, bp_diastolic, temperature_c,
                pulse_rate, respiratory_rate, oxygen_sat,
                chief_complaint, symptoms, diagnosis, icd10_code,
                treatment, medications, remarks, follow_up_date, is_referred)
             VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
        );
        $stmt->execute([
            $patId, $physId, $catId, $visitDate, $visitTime,
            $weightKg, $heightCm, $bpSys, $bpDia, $temp,
            $pulse, $rr, $spo2,
            $complaint, $symptoms, $diagnosis, $icd10,
            $treatment, $meds, $remarks, $followUp, $referred
        ]);
        $newId = $pdo->lastInsertId();
        $success = "Encounter saved! <a href='view.php?id=$newId'>View encounter #$newId</a> · <a href='new.php'>New encounter</a>";
    }
}

// Lookup data
$patients   = $pdo->query("SELECT patient_id, CONCAT(last_name,', ',first_name) AS name FROM patient ORDER BY last_name, first_name")->fetchAll();
$physicians = $pdo->query("SELECT physician_id, CONCAT(last_name,', ',first_name,' — ',IFNULL(specialty,'General')) AS name FROM physician WHERE is_active=1 ORDER BY last_name")->fetchAll();
$categories = $pdo->query("SELECT category_id, name FROM category ORDER BY name")->fetchAll();

require_once ROOT . '/includes/header.php';
?>

<?php if ($errors): ?>
  <div class="alert alert-error"><?= implode('<br>', array_map('htmlspecialchars', $errors)) ?></div>
<?php endif; ?>
<?php if ($success): ?>
  <div class="alert alert-success"><?= $success ?></div>
<?php endif; ?>

<form method="POST" action="">
  <!-- SECTION: Encounter Info -->
  <div class="card">
    <div class="card-title">Encounter Information</div>
    <div class="form-grid">
      <div class="form-group">
        <label for="patient_id">Patient *</label>
        <select name="patient_id" id="patient_id" required>
          <option value="">— Select patient —</option>
          <?php foreach ($patients as $p): ?>
            <option value="<?= $p['patient_id'] ?>"
              <?= ((int)($_POST['patient_id'] ?? $prefillPat) === (int)$p['patient_id']) ? 'selected' : '' ?>>
              #<?= $p['patient_id'] ?> — <?= htmlspecialchars($p['name']) ?>
            </option>
          <?php endforeach; ?>
        </select>
      </div>
      <div class="form-group">
        <label for="physician_id">Physician</label>
        <select name="physician_id" id="physician_id">
          <option value="">— Unassigned —</option>
          <?php foreach ($physicians as $ph): ?>
            <option value="<?= $ph['physician_id'] ?>"
              <?= (($_POST['physician_id'] ?? '') == $ph['physician_id']) ? 'selected' : '' ?>>
              <?= htmlspecialchars($ph['name']) ?>
            </option>
          <?php endforeach; ?>
        </select>
      </div>
      <div class="form-group">
        <label for="category_id">Category / Service</label>
        <select name="category_id" id="category_id">
          <option value="">— Select —</option>
          <?php foreach ($categories as $cat): ?>
            <option value="<?= $cat['category_id'] ?>"
              <?= (($_POST['category_id'] ?? '') == $cat['category_id']) ? 'selected' : '' ?>>
              <?= htmlspecialchars($cat['name']) ?>
            </option>
          <?php endforeach; ?>
        </select>
      </div>
      <div class="form-group">
        <label for="visit_date">Visit Date *</label>
        <input type="date" name="visit_date" id="visit_date"
               value="<?= htmlspecialchars($_POST['visit_date'] ?? date('Y-m-d')) ?>" required>
      </div>
      <div class="form-group">
        <label for="visit_time">Visit Time</label>
        <input type="time" name="visit_time" id="visit_time"
               value="<?= htmlspecialchars($_POST['visit_time'] ?? '') ?>">
      </div>
    </div>
  </div>

  <!-- SECTION: Nursing Triage / Vitals -->
  <div class="card">
    <div class="card-title">Nursing Triage — Vitals</div>
    <div class="form-grid">
      <div class="form-group">
        <label for="weight_kg">Weight (kg)</label>
        <input type="number" step="0.01" min="0" name="weight_kg" id="weight_kg"
               value="<?= htmlspecialchars($_POST['weight_kg'] ?? '') ?>">
      </div>
      <div class="form-group">
        <label for="height_cm">Height (cm)</label>
        <input type="number" step="0.1" min="0" name="height_cm" id="height_cm"
               value="<?= htmlspecialchars($_POST['height_cm'] ?? '') ?>">
      </div>
      <div class="form-group">
        <label>Blood Pressure (mmHg)</label>
        <div class="flex gap-2">
          <input type="number" name="bp_systolic" placeholder="Systolic" min="0" max="300"
                 value="<?= htmlspecialchars($_POST['bp_systolic'] ?? '') ?>" style="width:50%">
          <input type="number" name="bp_diastolic" placeholder="Diastolic" min="0" max="200"
                 value="<?= htmlspecialchars($_POST['bp_diastolic'] ?? '') ?>" style="width:50%">
        </div>
      </div>
      <div class="form-group">
        <label for="temperature_c">Temperature (°C)</label>
        <input type="number" step="0.1" min="30" max="45" name="temperature_c" id="temperature_c"
               value="<?= htmlspecialchars($_POST['temperature_c'] ?? '') ?>">
      </div>
      <div class="form-group">
        <label for="pulse_rate">Pulse Rate (bpm)</label>
        <input type="number" min="0" max="300" name="pulse_rate" id="pulse_rate"
               value="<?= htmlspecialchars($_POST['pulse_rate'] ?? '') ?>">
      </div>
      <div class="form-group">
        <label for="respiratory_rate">Resp. Rate (brpm)</label>
        <input type="number" min="0" max="100" name="respiratory_rate" id="respiratory_rate"
               value="<?= htmlspecialchars($_POST['respiratory_rate'] ?? '') ?>">
      </div>
      <div class="form-group">
        <label for="oxygen_sat">SpO₂ (%)</label>
        <input type="number" min="0" max="100" name="oxygen_sat" id="oxygen_sat"
               value="<?= htmlspecialchars($_POST['oxygen_sat'] ?? '') ?>">
      </div>
      <div class="form-group" style="grid-column:1/-1;">
        <label for="chief_complaint">Chief Complaint *</label>
        <textarea name="chief_complaint" id="chief_complaint" rows="3" required
                  placeholder="e.g. Fever for 3 days, headache, body malaise"><?= htmlspecialchars($_POST['chief_complaint'] ?? '') ?></textarea>
      </div>
    </div>
  </div>

  <!-- SECTION: Doctor's Clinical Notes -->
  <div class="card">
    <div class="card-title">Doctor&#8217;s Clinical Notes</div>
    <div class="form-grid">
      <div class="form-group" style="grid-column:1/-1;">
        <label for="symptoms">Symptoms / History of Present Illness</label>
        <textarea name="symptoms" id="symptoms" rows="3"><?= htmlspecialchars($_POST['symptoms'] ?? '') ?></textarea>
      </div>
      <div class="form-group">
        <label for="diagnosis">Diagnosis</label>
        <input type="text" name="diagnosis" id="diagnosis" maxlength="500"
               value="<?= htmlspecialchars($_POST['diagnosis'] ?? '') ?>"
               placeholder="e.g. Acute Gastroenteritis">
      </div>
      <div class="form-group">
        <label for="icd10_code">ICD-10 Code (optional)</label>
        <input type="text" name="icd10_code" id="icd10_code" maxlength="10"
               placeholder="e.g. A09"
               value="<?= htmlspecialchars($_POST['icd10_code'] ?? '') ?>">
      </div>
      <div class="form-group" style="grid-column:1/-1;">
        <label for="treatment">Treatment / Management</label>
        <textarea name="treatment" id="treatment" rows="3"><?= htmlspecialchars($_POST['treatment'] ?? '') ?></textarea>
      </div>
      <div class="form-group" style="grid-column:1/-1;">
        <label for="medications">Medications Prescribed</label>
        <textarea name="medications" id="medications" rows="2"><?= htmlspecialchars($_POST['medications'] ?? '') ?></textarea>
      </div>
      <div class="form-group" style="grid-column:1/-1;">
        <label for="remarks">Remarks / Nurse&#8217;s Notes</label>
        <textarea name="remarks" id="remarks" rows="2"><?= htmlspecialchars($_POST['remarks'] ?? '') ?></textarea>
      </div>
      <div class="form-group">
        <label for="follow_up_date">Follow-up Date</label>
        <input type="date" name="follow_up_date" id="follow_up_date"
               value="<?= htmlspecialchars($_POST['follow_up_date'] ?? '') ?>">
      </div>
      <div class="form-group" style="justify-content:flex-end;">
        <label>&nbsp;</label>
        <label class="form-check">
          <input type="checkbox" name="is_referred"
            <?= !empty($_POST['is_referred']) ? 'checked' : '' ?>>
          Referred to hospital
        </label>
      </div>

      <div class="form-actions">
        <button type="submit" class="btn btn-primary">&#128190; Save Encounter</button>
        <a href="../patients/list.php" class="btn btn-outline">Cancel</a>
      </div>
    </div>
  </div>
</form>

<?php require_once ROOT . '/includes/footer.php'; ?>
