<?php
/**
 * physicians/delete.php — Delete physician
 */
define('ROOT', dirname(__DIR__));
require_once ROOT . '/db_connect.php';

$id = (int)($_GET['id'] ?? 0);

if ($id) {
    $stmt = $pdo->prepare("UPDATE physician SET is_deleted = 1 WHERE physician_id = ?");
    $stmt->execute([$id]);
}

header('Location: manage.php');
exit;
