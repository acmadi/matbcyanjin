<?php
require_once "../../models/abspath.php";
require_once "pdocon.php";
require_once "function.php";

$req = $_REQUEST["req"];
$CAR = $_REQUEST["CAR"];
//$matoutdo_id = "RMO-00013";

if ($req=='dg'){
	$q = "SELECT *,DATE_FORMAT(DokTg,'%d/%m/%Y') AS DokTgDmy FROM dokumen ";
	$q .= "WHERE DokKdBc='1' AND CAR='$CAR' ORDER BY no";	
} else if ($req=='dg2'){
	$q = "SELECT * FROM barang ";
	$q .= "WHERE DokKdBc='1' AND CAR='$CAR' ORDER BY no";
} else if ($req=='inhdr'){
	$q = "SELECT *,DATE_FORMAT(matin_date,'%d/%m/%Y') AS matin_date
		  FROM mat_inchdr a 
		  LEFT JOIN pur_pohdr b ON b.po_id=a.po_id 
		  LEFT JOIN mst_in_type c ON c.matin_type=a.matin_type 
		  WHERE KdJnsDok='1' ";
	$q .= "ORDER BY matin_no, matin_date ASC";
} else if ($req=='indet'){	
	$matin_id = $_REQUEST["matin_id"];
	$q = "SELECT KdBarang, NmBarang AS UrBarang, FORMAT(qty, 2) AS qty,FORMAT(price, 2) AS HrgSerah
		  FROM mat_incdet a 
		  LEFT JOIN mst_barang b ON KdBarang = mat_id 
		  WHERE matin_id='$matin_id' 
		  ORDER BY child_no ASC";	
} else if ($req=='dgPetiKemas'){
	$q = "SELECT * FROM hdrpetikemas ";
	$q .= "WHERE DokKdBc='1' AND CAR='$CAR' ORDER BY NoUrut";
} else if ($req=='dgCari'){
	$dtdari = $_REQUEST["dtdari"];
	$dtsampai = $_REQUEST["dtsampai"];
	$q = "SELECT *,
		CONCAT(LEFT(a.CAR,3),'.',RIGHT(a.CAR,3)) AS FCAR,
		CONCAT(LEFT(NoDaf,3),'.',RIGHT(NoDaf,3)) AS FNoDaf,
		DATE_FORMAT(TgDaf,'%d/%m/%Y') AS FTgDaf
		FROM header a 
		LEFT JOIN mst_jenisbarang b ON b.KdJnsBarang=a.KdJnsBarang 
		LEFT JOIN hdrtransaksi c ON c.DokKdBc=a.DokKdBc AND c.CAR=a.CAR
		LEFT JOIN hdrpetikemas d ON d.DokKdBc=a.DokKdBc AND d.CAR=a.CAR
		LEFT JOIN hdrpelabuhan e ON e.DokKdBc=a.DokKdBc AND e.CAR=a.CAR
		WHERE a.DokKdBc='1'
		";
	if($dtdari != '' && $dtsampai != ''):
		$q .= "AND TgDaf BETWEEN '".dmys2ymd($dtdari)."' AND '".dmys2ymd($dtsampai)."' ";
	endif;
	$q .= "ORDER BY a.CAR DESC";	
}

$run=$pdo->query($q);
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
//echo '[{"ID":"RMO-00013","Material_Code":"MAT-00001","Material_Name":"JACKET COTTON","Size":"XL","LD":"black","Color":"15 DAY","Unit":"ROLL","Qty":"500","Rack":"8","UrBarang":"MAT-00001 - JACKET COTTON"},{"ID":"RMO-00013","Material_Code":"MAT-00001","Material_Name":"JACKET COTTON","Size":"S","LD":"black","Color":"15 DAY","Unit":"ROLL","Qty":"1000","Rack":"7","UrBarang":"'.$matoutdo_id.' - JACKET COTTON"}]';
?>