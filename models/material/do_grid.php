<?php
require_once "../abspath.php";
require_once "pdocon.php";
require_once "function.php";

$req = $_REQUEST["req"];

if ($req=='menu'){
	$pilcari = $_REQUEST["pilcari"];
	$txtcari = $_REQUEST["txtcari"];
	$q = "SELECT *,DATE_FORMAT(do_date,'%d/%m/%Y') AS do_date, a.notes AS notes
		  FROM mkt_dohdr a 
		  LEFT JOIN mkt_sorderhdr b ON b.so_id=a.so_id ";
	if ($txtcari != ""){		  
		if ($pilcari == "do_date"){		  
			$q .= "WHERE $pilcari LIKE '%".dmys2ymd($txtcari)."%' ";	  
		} else {
			$q .= "WHERE $pilcari LIKE '%$txtcari%' ";	  
		}
	}  
	$q .= "ORDER BY do_no, do_date ASC";
} else if ($req=='list') {	
	$do_id = $_REQUEST["do_id"];
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2,PartNo,NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2,FORMAT(d.qty, 2) AS qty_so,FORMAT(a.qty, 2) AS qty,FORMAT(a.price, 2) AS price,FORMAT(a.qty*a.price, 2) AS amount,
		 (d.qty-	
		 (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mkt_dodet da LEFT JOIN mkt_dohdr db ON db.do_id=da.do_id WHERE db.so_id = b.so_id AND da.fg_id = a.fg_id AND da.do_id NOT IN ('$do_id') )
		  ) AS qty_bal
		  FROM mkt_dodet a 
		  LEFT JOIN mkt_dohdr b ON b.do_id=a.do_id
		  LEFT JOIN mst_barang c ON KdBarang = a.fg_id 
		  LEFT JOIN mkt_sorderdet d ON d.so_id=b.so_id
		  WHERE a.do_id='$do_id' 
		  ORDER BY a.child_no ASC";
} else if ($req=='so') {
	$KdBarang = $_REQUEST["KdBarang"];
	$q = "SELECT *,DATE_FORMAT(so_date,'%d/%m/%Y') AS so_date,DATE_FORMAT(due_date,'%d/%m/%Y') AS due_date
		  FROM mkt_sorderhdr a
		  INNER JOIN mkt_sorderdet b ON b.so_id=a.so_id
		  WHERE b.fg_id='$KdBarang'
		  ORDER BY so_no, so_date ASC";
} else if ($req=='dgDet') {
	$so_id = $_REQUEST["so_id"];
	$do_id = $_REQUEST["do_id"];
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2,PartNo,NmBarang AS NmBarang2,HsNo AS HsNo2,Sat AS Sat2,FORMAT(qty, 2) AS qty_so,FORMAT(price, 2) AS price,
		 (qty-
		 (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mkt_dodet da LEFT JOIN mkt_dohdr db ON db.do_id=da.do_id WHERE db.so_id = a.so_id AND da.fg_id = a.fg_id AND da.do_id NOT IN ('$do_id'))
		 ) AS qty_bal,
		 (qty-
		 (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mkt_dodet da LEFT JOIN mkt_dohdr db ON db.do_id=da.do_id WHERE db.so_id = a.so_id AND da.fg_id = a.fg_id AND da.do_id NOT IN ('$do_id'))
		 ) AS qty,
		 ((qty-
		 (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mkt_dodet da LEFT JOIN mkt_dohdr db ON db.do_id=da.do_id WHERE db.so_id = a.so_id AND da.fg_id = a.fg_id AND da.do_id NOT IN ('$do_id')))
		 *
		 price
		 ) AS amount
		  FROM mkt_sorderdet a 
		  LEFT JOIN mst_barang b ON KdBarang=a.fg_id
		  WHERE so_id='$so_id'
		  ORDER BY TpBarang, KdBarang ASC";
} else if ($req=='dgRef') {	
	$q = "SELECT *,DATE_FORMAT(so_date,'%d/%m/%Y') AS so_date
		  FROM mkt_sorderhdr a
		  ORDER BY so_no, so_date ASC";		  
} else if ($req=='fg'){
		$q = "SELECT *
		  FROM mst_barang WHERE TpBarang='0'
		  ORDER BY PartNo ASC";		  
}



$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>