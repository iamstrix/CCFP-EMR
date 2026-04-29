<?php
/**
 * patients/delete.php
 * ---------------------
 * Delete Patient Record
 */
define('ROOT', dirname(__DIR__));
require_once ROOT . '/db_connect.php';

$id = (int)($_GET['id'] ?? 0);
if (!$id) {
    die("Invalid patient ID.");
}

$stmt = $pdo->prepare("UPDATE patient SET is_deleted = 1 WHERE patient_id = ?");
$stmt->execute([$id]);

header("Location: list.php?msg=deleted");
exit;
