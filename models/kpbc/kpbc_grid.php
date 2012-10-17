<?php
require_once "../abspath.php";
require_once "pdocon.php";

$q = "SELECT *,KdKpbc AS KdKpbc0 FROM kantor ORDER BY KdKpbc ASC";
$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>