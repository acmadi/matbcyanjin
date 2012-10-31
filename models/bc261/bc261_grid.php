<?php
require_once "../../models/abspath.php";
require_once "pdocon.php";

$req = $_REQUEST["req"];
$CAR = $_REQUEST["CAR"];
$matoutdo_id = "RMO-00013";

if ($req=='dg'){
	$q = "SELECT *,DATE_FORMAT(DokTg,'%d/%m/%Y') AS DokTgDmy FROM dokumen ";
	$q .= "WHERE DokKdBc='4' AND CAR='$CAR' ORDER BY no";	
} else if ($req=='dg2'){
	$q = "SELECT * FROM barang ";
	$q .= "WHERE DokKdBc='4' AND CAR='$CAR' ORDER BY no";
} else if ($req=='outhdr'){
	$q = "SELECT *,DATE_FORMAT(matout_date,'%d/%m/%Y') AS matout_date, a.notes AS notes
		  FROM mat_outhdr a 
		  LEFT JOIN ppic_wohdr b ON b.wo_id=a.wo_id
		  INNER JOIN mst_out_type c ON c.matout_type=a.matout_type 
		  WHERE KdJnsDok='4' ";
	$q .= "ORDER BY matout_no, matout_date ASC";
} else if ($req=='outdet'){	
	$matout_id = $_REQUEST["matout_id"];
	$q = "SELECT KdBarang, NmBarang AS UrBarang, FORMAT(qty, 2) AS qty
		  FROM mat_outdet a
		  LEFT JOIN mst_barang b ON KdBarang = mat_id 
		  WHERE matout_id='$matout_id' 
		  ORDER BY child_no ASC";	
} else if ($req=='dg3'){
	$q = "SELECT * FROM barangkembali ";
	$q .= "WHERE DokKdBc='4' AND CAR='$CAR' ORDER BY no";
} else if ($req=='dgCari'){
	$dtdari = $_REQUEST["dtdari"];
	$dtsampai = $_REQUEST["dtsampai"];
	$q = "SELECT *,
		CONCAT(LEFT(a.CAR,3),'.',RIGHT(a.CAR,3)) AS FCAR,
		CONCAT(LEFT(NoDaf,3),'.',RIGHT(NoDaf,3)) AS FNoDaf,
		DATE_FORMAT(TgDaf,'%d/%m/%Y') AS FTgDaf
		FROM header a 
		LEFT JOIN hdrpengangkutan b ON b.DokKdBc=a.DokKdBc AND b.CAR=a.CAR
		LEFT JOIN hdrtransaksi c ON c.DokKdBc=a.DokKdBc AND c.CAR=a.CAR
		WHERE a.DokKdBc='4'
		";
	if($dtdari != '' && $dtsampai != ''):
		$q .= "AND TgDaf BETWEEN '".dmys2ymd($dtdari)."' AND '".dmys2ymd($dtsampai)."' ";
	endif;
	$q .= "ORDER BY a.CAR DESC";	
	$run=$pdo->query($q);	
}

$run=$pdo->query($q);
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>