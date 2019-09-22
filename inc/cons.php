<?php
define("PDO_HOST","localhost");
define("PDO_USER","root");
const PDO_PASS ="";
$charset = 'utf8mb4';
$host = '127.0.0.1';
$dbname = "sebaranEntoFito";
define("DBNAME","sebaranEntoFito");
define("KIMA_BLOCK_NUM",17);
define("PDO_DSN","mysql:host=$host;dbname=$dbname;charset=$charset");
$options = [
    \PDO::ATTR_ERRMODE            => \PDO::ERRMODE_EXCEPTION,
    \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
    \PDO::ATTR_EMULATE_PREPARES   => false,
];
try {
     $pdo = new \PDO(PDO_DSN, PDO_USER, PDO_PASS, $options);
} catch (\PDOException $e) {
     throw new \PDOException($e->getMessage(), (int)$e->getCode());
}
 ?>
