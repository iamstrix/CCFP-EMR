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

$stmt = $pdo->prepare("UPDATE consultation SET is_deleted = 1 WHERE consultation_id = ?");
$stmt->execute([$id]);

header("Location: list.php?msg=deleted");
exit;
