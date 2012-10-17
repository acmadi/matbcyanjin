<?php
require_once "../abspath.php";
require_once "pdocon.php";

$q = "SELECT *,KdBarang AS KdBarang0,FORMAT(Harga, 2) AS Harga FROM mst_barang a LEFT JOIN mst_jenisbarang b ON KdJnsBarang=TpBarang ORDER BY TpBarang, KdBarang ASC";
$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>