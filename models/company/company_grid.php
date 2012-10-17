<?php
require_once "../abspath.php";
require_once "pdocon.php";

$TpPrshn=$_REQUEST["TpPrshn"];

$q = "SELECT *,NmPrshn AS NmPrshn0,DATE_FORMAT(TgPokokPpjk,'%d/%m/%Y') AS TgPokokPpjk FROM mst_perusahaan WHERE TpPrshn='$TpPrshn' ORDER BY NmPrshn ASC";
$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>