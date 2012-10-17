<?php
require_once "../../models/abspath.php";
require_once "pdocon.php";

$req = $_REQUEST["req"];
$CAR = $_REQUEST["CAR"];
$matoutdo_id = "RMO-00013";

if ($req=='dg'){
	$q = "SELECT *,DATE_FORMAT(DokTg,'%d/%m/%Y') AS DokTgDmy FROM dokumen ";
	$q .= "WHERE DokKdBc='5' AND CAR='$CAR' ORDER BY no";
	$run=$pdo->query($q);	
} else if ($req=='dg2'){
	$q = "SELECT * FROM barang ";
	$q .= "WHERE DokKdBc='5' AND CAR='$CAR' ORDER BY no";
	$run=$pdo->query($q);
} else if ($req=='dg3'){
	$q = "SELECT * FROM barangkembali ";
	$q .= "WHERE DokKdBc='5' AND CAR='$CAR' ORDER BY no";
	$run=$pdo->query($q);
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
		WHERE a.DokKdBc='5'
		";
	if($dtdari != '' && $dtsampai != ''):
		$q .= "AND TgDaf BETWEEN '".dmys2ymd($dtdari)."' AND '".dmys2ymd($dtsampai)."' ";
	endif;
	$q .= "ORDER BY a.CAR DESC";	
	$run=$pdo->query($q);	
}
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>