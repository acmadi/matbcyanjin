<?php
require_once "../abspath.php";
require_once "pdocon.php";

$TpBarang=$_REQUEST["TpBarang"];
$pilcari = $_REQUEST["pilcari"];
$txtcari = $_REQUEST["txtcari"];

$q = "SELECT *,KdBarang AS KdBarang0 FROM mst_barang a 
	  LEFT JOIN mat_group b ON b.matgroup_code=a.MatGroup
	  WHERE TpBarang='$TpBarang' ";
	  
if ($txtcari != ""){		  
		$q .= "AND $pilcari LIKE '%$txtcari%' ";	  
}

$q .= "ORDER BY MatGroup, KdBarang ASC";	  

$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>