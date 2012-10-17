<?php
require_once "../abspath.php";
require_once "pdocon.php";
require_once "function.php";

$req = $_REQUEST["req"];

if ($req=='menu'){
	$pilcari = $_REQUEST["pilcari"];
	$txtcari = $_REQUEST["txtcari"];
	$q = "SELECT *,DATE_FORMAT(matout_date,'%d/%m/%Y') AS matout_date, a.notes AS notes
		  FROM mat_outhdr a WHERE matout_type='3' ";
	if ($txtcari != ""){		  
		if ($pilcari == "matout_date"){		  
			$q .= "AND $pilcari LIKE '%".dmys2ymd($txtcari)."%' ";	  
		} else {
			$q .= "AND $pilcari LIKE '%$txtcari%' ";	  
		}
	}  
	$q .= "ORDER BY matout_no, matout_date ASC";
} else if ($req=='list') {	
	$matout_id = $_REQUEST["matout_id"];
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2,FORMAT(qty, 2) AS qty
		  FROM mat_outdet a 
		  LEFT JOIN mst_barang b ON KdBarang = mat_id 
		  WHERE matout_id='$matout_id' 
		  ORDER BY child_no ASC";
} else if ($req=='ref') {
	$q = "SELECT *,DATE_FORMAT(matout_date,'%d/%m/%Y') AS matout_date, a.notes AS notes
		  FROM mat_outhdr a 
		  LEFT JOIN ppic_wohdr b ON b.wo_id=a.wo_id 
		  WHERE matout_type='0' ";
} else if ($req=='dgDet') {
	$ref_id = $_REQUEST["ref_id"];
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2
		  FROM mat_outdet a
		  LEFT JOIN mat_outhdr b ON b.matout_id=a.matout_id 
		  LEFT JOIN mst_barang c ON KdBarang=mat_id 
		  WHERE matout_id='$ref_id'
		  ORDER BY KdBarang ASC";
} else if ($req=='dgRef') {	
	$q = "SELECT *,DATE_FORMAT(wo_date,'%d/%m/%Y') AS wo_date
		  FROM ppic_wohdr a
		  ORDER BY wo_no, wo_date ASC";		  
}



$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>