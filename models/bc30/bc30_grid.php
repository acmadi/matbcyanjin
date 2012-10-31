<?php
require_once "../../models/abspath.php";
require_once "pdocon.php";
require_once "function.php";

$req = $_REQUEST["req"];
$CAR = $_REQUEST["CAR"];
//$matoutdo_id = "RMO-00013";

if ($req=='dg'){
	$q = "SELECT *,DATE_FORMAT(DokTg,'%d/%m/%Y') AS DokTgDmy FROM dokumen ";
	$q .= "WHERE DokKdBc='7' AND CAR='$CAR' ORDER BY no";
} else if ($req=='dg2'){
	$q = "SELECT * FROM barang ";
	$q .= "WHERE DokKdBc='7' AND CAR='$CAR' ORDER BY no";	
} else if ($req=='dohdr'){
	$q = "SELECT *,DATE_FORMAT(do_date,'%d/%m/%Y') AS do_date, a.notes AS notes
		  FROM mkt_dohdr a 
		  LEFT JOIN mkt_sorderhdr b ON b.so_id=a.so_id ";	  
	$q .= "ORDER BY do_no, do_date ASC";
} else if ($req=='dodet') {	
	$do_id = $_REQUEST["do_id"];
	$q = "SELECT KdBarang, NmBarang AS UrBarang, FORMAT(a.qty, 2) AS qty,FORMAT(a.price, 2) AS HrgSerah
		  FROM mkt_dodet a 
		  LEFT JOIN mkt_dohdr b ON b.do_id=a.do_id
		  LEFT JOIN mst_barang c ON KdBarang = a.fg_id 
		  LEFT JOIN mkt_sorderdet d ON d.so_id=b.so_id
		  WHERE a.do_id='$do_id' 
		  ORDER BY a.child_no ASC";	
} else if ($req=='dgPetiKemas'){
	$q = "SELECT * FROM hdrpetikemas ";
	$q .= "WHERE DokKdBc='7' AND CAR='$CAR' ORDER BY NoUrut";
} else if ($req=='dgCari'){
	$dtdari = $_REQUEST["dtdari"];
	$dtsampai = $_REQUEST["dtsampai"];
	$q = "SELECT *,
		CONCAT(LEFT(a.CAR,3),'.',RIGHT(a.CAR,3)) AS FCAR,
		CONCAT(LEFT(NoDaf,3),'.',RIGHT(NoDaf,3)) AS FNoDaf,
		DATE_FORMAT(TgDaf,'%d/%m/%Y') AS FTgDaf
		FROM header a 
		LEFT JOIN mst_jenisekspor b ON b.KdJnsEkspor=a.KdJnsEkspor 
		LEFT JOIN hdrpengangkutan f ON f.DokKdBc=a.DokKdBc AND f.CAR=a.CAR
		LEFT JOIN hdrperdagangan g ON g.DokKdBc=a.DokKdBc AND g.CAR=a.CAR
		LEFT JOIN hdrtransaksi c ON c.DokKdBc=a.DokKdBc AND c.CAR=a.CAR
		LEFT JOIN hdrpetikemas d ON d.DokKdBc=a.DokKdBc AND d.CAR=a.CAR
		LEFT JOIN hdrpelabuhan e ON e.DokKdBc=a.DokKdBc AND e.CAR=a.CAR
		WHERE a.DokKdBc='7'
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