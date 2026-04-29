<?php
/**
 * physicians/edit.php — Edit physician details
 */
define('ROOT', dirname(__DIR__));
require_once ROOT . '/db_connect.php';

$pageTitle = 'Edit Physician';
$activeNav = 'physicians';

$id = (int)($_GET['id'] ?? 0);
if (!$id) {
    die("Invalid physician ID.");
}

$errors  = [];
$success = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $first   = trim($_POST['first_name'] ?? '');
    $last    = trim($_POST['last_name']  ?? '');
    $spec    = trim($_POST['specialty']  ?? '') ?: null;
    $license = trim($_POST['license_no'] ?? '') ?: null;

    if (!$first) $errors[] = 'First name required.';
    if (!$last)  $errors[] = 'Last name required.';

    if (empty($errors)) {
        $stmt = $pdo->prepare("UPDATE physician SET first_name=?, last_name=?, specialty=?, license_no=? WHERE physician_id=?");
        $stmt->execute([$first, $last, $spec, $license, $id]);
        $success = "Physician details updated successfully. <a href='manage.php'>Back to directory</a>";
    }
}

$stmt = $pdo->prepare("SELECT * FROM physician WHERE physician_id = ?");
$stmt->execute([$id]);
$physician = $stmt->fetch();

if (!$physician) {
    die("Physician not found.");
}

require_once ROOT . '/includes/header.php';
?>

<?php if ($errors): ?>
  <div class="alert alert-error"><?= implode('<br>', array_map('htmlspecialchars', $errors)) ?></div>
<?php endif; ?>
<?php if ($success): ?>
  <div class="alert alert-success"><?= $success ?></div>
<?php endif; ?>

<div class="page-header">
  <div class="page-header-title">
    <h1>Edit Physician</h1>
    <p class="text-muted">Update professional details for Dr. <?= htmlspecialchars($physician['last_name']) ?>.</p>
  </div>
  <div class="page-header-actions no-print">
    <a href="manage.php" class="btn btn-back-hub">
      <svg width="18" height="18" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path d="M10 19l-7-7m0 0l7-7m-7 7h18"></path></svg>
      Back to Directory
    </a>
  </div>
</div>

<div class="card">
  <form method="POST">
    <div class="form-grid">
      <div class="form-group">
        <label for="last_name">Last Name *</label>
        <input type="text" name="last_name" id="last_name" maxlength="80" value="<?= htmlspecialchars($physician['last_name']) ?>" required>
      </div>
      <div class="form-group">
        <label for="first_name">First Name *</label>
        <input type="text" name="first_name" id="first_name" maxlength="80" value="<?= htmlspecialchars($physician['first_name']) ?>" required>
      </div>
      <div class="form-group">
        <label for="specialty">Specialty</label>
        <input type="text" name="specialty" id="specialty" maxlength="100" value="<?= htmlspecialchars($physician['specialty'] ?? '') ?>" placeholder="e.g. Pediatrics">
      </div>
      <div class="form-group">
        <label for="license_no">PRC License No.</label>
        <input type="text" name="license_no" id="license_no" maxlength="30" value="<?= htmlspecialchars($physician['license_no'] ?? '') ?>">
      </div>
      <div class="form-actions">
        <button type="submit" class="btn btn-primary">Update Physician</button>
        <a href="manage.php" class="btn btn-outline">Cancel</a>
      </div>
    </div>
  </form>
</div>

<?php require_once ROOT . '/includes/footer.php'; ?>
