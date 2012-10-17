<?php
require_once "../abspath.php";
require_once "pdocon.php";
require_once "function.php";

$req = $_REQUEST["req"];

if ($req=='menu'){
	$pilcari = $_REQUEST["pilcari"];
	$txtcari = $_REQUEST["txtcari"];
	$q = "SELECT *,DATE_FORMAT(opname_date,'%d/%m/%Y') AS opname_date
		  FROM mat_opnamehdr a
		  LEFT JOIN mat_warehouse b ON b.wh_id=a.wh_id 
		  WHERE mat_type='0' ";
	if ($txtcari != ""){		  
		if ($pilcari == "opname_date"){		  
			$q .= "AND $pilcari LIKE '%".dmys2ymd($txtcari)."%' ";	  
		} else {
			$q .= "AND $pilcari LIKE '%$txtcari%' ";	  
		}
	}
	$q .= "ORDER BY opname_date ASC";
} else if ($req=='list') {	
	$opname_id = $_REQUEST["opname_id"];
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, PartNo, NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2,FORMAT(qty, 2) AS qty
		  FROM mat_opnamedet a 
		  LEFT JOIN mst_barang b ON KdBarang = mat_id 
		  WHERE opname_id='$opname_id' 
		  ORDER BY child_no ASC";
} else if ($req=='dgDet') {
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, PartNo, NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2
		  FROM mst_barang a 
		  LEFT JOIN mst_jenisbarang b ON KdJnsBarang=TpBarang 
		  WHERE TpBarang='0'
		  ORDER BY TpBarang, KdBarang ASC";
}



$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>