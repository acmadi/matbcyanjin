<?php
require_once "../abspath.php";
require_once "pdocon.php";

$q = "SELECT *,KdVal AS KdVal0 FROM valuta ORDER BY KdVal ASC";
$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>