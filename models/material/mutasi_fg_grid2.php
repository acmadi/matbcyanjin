<?php
require_once "../abspath.php";
require_once "pdocon.php";
require_once "function.php";

$req = $_REQUEST["req"];
$mat_type = $_REQUEST["mat_type"];	
$date1 = dmys2ymd($_REQUEST["date1"]);
$date2 = dmys2ymd($_REQUEST["date2"]);

$q = "SELECT KdBarang, PartNo, NmBarang,HsNo,Sat,
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_stockcard s WHERE date < '".$date1."' AND s.mat_id = a.KdBarang AND type IN ('B','I'))	  
	  -
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mkt_dodet da LEFT JOIN mkt_dohdr db ON db.do_id=da.do_id WHERE do_date < '".$date1."' AND da.fg_id = a.KdBarang)
	  +
	  (SELECT IF(SUM(qty_in)>0,SUM(qty_in),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE opname_date < '".$date1."' AND oa.mat_id = a.KdBarang)
	  -
	  (SELECT IF(SUM(qty_out)>0,SUM(qty_out),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE opname_date < '".$date1."' AND oa.mat_id = a.KdBarang)
	  ) AS qty_beg, 
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_stockcard s WHERE s.mat_id = a.KdBarang AND type = 'I' AND date  BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_in,
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mkt_dodet da LEFT JOIN mkt_dohdr db ON db.do_id=da.do_id WHERE da.fg_id = a.KdBarang AND do_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_out,
	  
	  (
	  (SELECT IF(SUM(qty_in)>0,SUM(qty_in),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE oa.mat_id = a.KdBarang AND opname_date BETWEEN '".$date1."' AND '".$date2."')
	  +
	  (SELECT IF(SUM(qty_out)>0,SUM(qty_out),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE oa.mat_id = a.KdBarang AND opname_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty_bal,
	  
	  (
	  (SELECT IF(SUM(qty)>0,SUM(qty),0) FROM mat_opnamedet oa LEFT JOIN mat_opnamehdr ob ON ob.opname_id=oa.opname_id WHERE oa.mat_id = a.KdBarang AND opname_date BETWEEN '".$date1."' AND '".$date2."')
	  ) AS qty, 0 AS qty_end, FORMAT(0,2) AS qty_diff
	   ";
$q .= "FROM mst_barang a 
	  WHERE a.TpBarang='$mat_type' 
	  ORDER BY KdBarang ASC";


$run=$pdo->query($q);	
$rs=$run->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rs);
?>