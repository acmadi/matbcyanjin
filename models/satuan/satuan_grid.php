<?php
require_once "../abspath.php";
require_once "pdocon.php";

$q = "SELECT *,KdSat AS KdSat0 FROM satuan ORDER BY KdSat ASC";
$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>