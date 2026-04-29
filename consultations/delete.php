<?php
/**
 * consultations/delete.php
 * ---------------------
 * Delete Consultation Record
 */
define('ROOT', dirname(__DIR__));
require_once ROOT . '/db_connect.php';

$id = (int)($_GET['id'] ?? 0);
if (!$id) {
    die("Invalid consultation ID.");
}

$stmt = $pdo->prepare("DELETE FROM consultation WHERE consultation_id = ?");
$stmt->execute([$id]);

header("Location: list.php?msg=deleted");
exit;
