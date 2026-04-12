<?php
/**
 * includes/header.php — ValdesCare Shared Header
 * -----------------------------------------------
 * Accepts $pageTitle and $activeNav from the including script.
 * Usage:
 *   $pageTitle = 'Patient Registration';
 *   $activeNav = 'patients';
 *   require_once ROOT . '/includes/header.php';
 */
if (!isset($pageTitle)) $pageTitle = 'ValdesCare';
if (!isset($activeNav)) $activeNav = '';

// Compute root-relative base path for assets using ROOT constant
// ROOT is defined in every calling script as the project root dir.
// Depth = number of directory separators between ROOT and the calling script's dir.
$callerDir = realpath(dirname($_SERVER['SCRIPT_FILENAME']));
$rootDir   = defined('ROOT') ? realpath(ROOT) : realpath(__DIR__ . '/..');
$depth     = ($rootDir === $callerDir) ? 0
           : substr_count(str_replace($rootDir, '', $callerDir), DIRECTORY_SEPARATOR);
$base      = $depth > 0 ? str_repeat('../', $depth) : '';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= htmlspecialchars($pageTitle) ?> — ValdesCare</title>
  <meta name="description" content="ValdesCare — Offline Clinical Decision Support & Patient Trace Analytics">
  <link rel="stylesheet" href="<?= $base ?>assets/css/style.css?v=<?= time() ?>">
</head>
<body>

<!-- ═══════════ SIDEBAR ═══════════ -->
<aside class="sidebar">
  <div class="sidebar-brand">
    <h1>Valdes<span>Care</span></h1>
    <small>Charity Clinic · Local Network</small>
  </div>

  <nav class="sidebar-nav">
    <div class="nav-section">Overview</div>
    <a href="<?= $base ?>index.php"                class="<?= $activeNav==='home'      ? 'active':'' ?>">&#128200; Dashboard</a>

    <div class="nav-section">Patients</div>
    <a href="<?= $base ?>patients/list.php"        class="<?= $activeNav==='patients'  ? 'active':'' ?>">&#128101; Patient List</a>
    <a href="<?= $base ?>patients/register.php"    class="<?= $activeNav==='register'  ? 'active':'' ?>">&#10133; Register Patient</a>

    <div class="nav-section">Consultations</div>
    <a href="<?= $base ?>consultations/new.php"    class="<?= $activeNav==='consult-new' ? 'active':'' ?>">&#128203; New Encounter</a>
    <a href="<?= $base ?>consultations/list.php"   class="<?= $activeNav==='consult-list'? 'active':'' ?>">&#128196; Encounter Log</a>

    <div class="nav-section">Administration</div>
    <a href="<?= $base ?>physicians/manage.php"    class="<?= $activeNav==='physicians' ? 'active':'' ?>">&#128084; Physicians</a>
    <a href="<?= $base ?>exports/report.php"       class="<?= $activeNav==='reports'    ? 'active':'' ?>">&#128438; Reports / Print</a>
  </nav>

  <div class="sidebar-footer">
    &copy; <?= date('Y') ?> ValdesCare v1.0
  </div>
</aside>

<!-- ═══════════ MAIN WRAP ═══════════ -->
<div class="main-wrap">
  <div class="topbar">
    <h2><?= htmlspecialchars($pageTitle) ?></h2>
    <span class="topbar-meta">
      <?= date('l, F j, Y · g:i A') ?>
    </span>
  </div>
  <div class="page-body">
