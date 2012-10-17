<?php
require_once "../abspath.php";
require_once "pdocon.php";

$TpBarang = $_REQUEST["TpBarang"];
$pilcari = $_REQUEST["pilcari"];
$txtcari = $_REQUEST["txtcari"];

$q = "SELECT *,KdBarang AS KdBarang0 FROM mst_barang a WHERE TpBarang='$TpBarang' ";
	  
if ($txtcari != ""){		  
		$q .= "AND $pilcari LIKE '%$txtcari%' ";	  
}

$q .= "ORDER BY TpBarang, KdBarang ASC";
//echo $q;
$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>