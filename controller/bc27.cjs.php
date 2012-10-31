<script type="text/javascript">
$(function(){

$('#ref').hide();

$('#ref_id').combogrid({  
	panelWidth:500
});

$('#w').window({ 
	title:"FORM <?php echo strtoupper($NmMenu) ?>", 
    width:770,
	height:535,	
	top:0,
	left:0,	
	collapsible:false,
	minimizable:false,
	maximizable:false
}); 	
	

$('#wCari').window({ 
	title:"Cari <?php echo $NmMenu ?>", 
    width:600,
	height:350,
	closed:true,
	modal:true, 
	collapsible:false,
	minimizable:false,
	maximizable:false
}); 
			  
$('#btnTbh').click(function(){	 	
	dsbtnTbh();
	enbtnSim();	
	enbtnBtl();	
	enInput();
	setdg();
	setdg2();	
	$('#KdKpbcTuj').focus();
	$('#ref').show();
	$('#KdBarang').attr("disabled",true);	
});
 
$('#btnUbh').click(function(){
	enbtnSim();			
	dsbtnHps();
	
	enInput();	
	enTgl();
	$('#ref').show();
	$('#KdBarang').attr("disabled",true);
});
  
$('#btnSim').click(function(){
	btnSim();
});

$('#btnBtl').click(function(){
	location.reload(true);	
});

$('#btnHps').click(function () {
	if ($('#fhidden').val() != '') {
		$.messager.confirm('Confirm','Are you sure you want to delete record?',function(r){  
			if (r){ 
				$.post("<?php echo $basedir ?>models/hps_bc.php", { 
				CAR: $('#fhidden').val(),
				DokKdBc: 6
				},function(data){
					$.messager.alert('Warning',data); 
					location.reload(true);
				});
			}
		}); 	
	} else {
		$.messager.alert('Warning','Silahkan pilih data yang akan di hapus!');
	}
});

$('#tl2Tbh').click(function(){
	$('#tl2Sim').show();
	$('#tl2Ubh2').hide();
	tl2Tbh();
});

$('#tl2Ubh').click(function(){
	$('#tl2Sim').hide();
	$('#tl2Ubh2').show();
	tl2Ubh();
});

$('#tl2Ubh2').click(function(){
	tl2Ubh2();
	$('#dlgBarang').dialog('close');
});

$('#tl2Hps').click(function(){
	tl2Hps();
});

$('#tl2Sim').click(function(){
	tl2Sim();
	$('#dlgBarang').dialog('close');
});

$('#btnCri').click(function(){
	$('#wCari').window('open');
	setdgCari();
});

$('#KdBarang').change(function(){
	setUrBarang("KdBarang","UrBarang");
});

$('.easyui-numberbox').css('text-align', 'right');
$('#CAR').mask("999.999");
$('#NoDaf').mask("999.999");
$('#NoSegel').mask("999.999");
dsInput();

$('#KdTp').change(function(){
	$('#ref_id').combogrid('setValue','');
	setRef();
});

    
});//Akhir Document Ready
</script>