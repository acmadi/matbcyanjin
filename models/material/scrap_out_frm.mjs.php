<script type="text/javascript">   
function setdg(){
	var matout_id = $('#matout_id').val();
	
	$('#dg').datagrid({  	
		title:"Material List",
		width:700,
		height:200,	
		toolbar:"#toolbar2",
		fitColumns:"true",
		rownumbers:"true",
		columns:[[  
			{field:'KdBarang2',title:'Mat. Code',width:80},
			{field:'NmBarang2',title:'Desc.',width:150},
			{field:'Sat2',title:'Unit',width:80},
			{field:'qty',title:'Qty.',width:100,align:'right'}
		]],
		url: '<?php echo $basedir; ?>models/material/scrap_out_grid.php?req=list&matout_id='+matout_id
	});
}

function setdgUrl(){
	var matout_id = $('#ref_id').val();
	
	$('#dg').datagrid({  	
		url: '<?php echo $basedir; ?>models/material/scrap_out_grid.php?req=list&matout_id='+matout_id
	});
}

function setdgCari(){	
	$('#dgCari').datagrid({  
		width:586,
		height:315,	
		fitColumns:"true",
		rownumbers:"true", 
		toolbar:"#toolCari",
		columns:[[  
			{field:'matout_no',title:'MOB No.',width:60},
			{field:'matout_date',title:'MOB Date',width:50},
			{field:'ref_no',title:'Ref. No.',width:50}
		]],
		url: '<?php echo $basedir ?>models/material/scrap_out_grid.php?req=menu&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val(),
		onClickRow:function(index,row){insert_menu(row)}
	});
}

function insert_menu(row){
	$('#matout_id').val(row.matout_id);
	$('#matout_no').val(row.matout_no);
	$('#matout_date').datebox('setValue',row.matout_date);
	$('#ref_id').val(row.ref_id);
	$('#ref_no').combogrid('setValue',row.ref_no);	
	$('#notes').val(row.notes);	
	setdg();
	$('#toolbar2').hide();
	$('#wCari').dialog('close');
	$('#tl1Ubh').show();
	$('#tl1Tbh').hide();	
	$('#tl1Hps').show();
	$('#btnPrint').show();
}

function setComboGrid(){	
	var ref_id = $('#ref_id').val();
	$('#KdBarang2').combogrid({  
		panelWidth:500,  	
		url: '<?php echo $basedir; ?>models/material/scrap_out_grid.php?req=dgDet&ref_id='+ref_id,  
		idField:'KdBarang2',  
		textField:'KdBarang2',  
		mode:'remote',  
		fitColumns:true,  
		columns:[[  
			{field:'KdBarang2',title:'Mat. Code',width:60},
			{field:'NmBarang2',title:'Desc.',width:50},
			{field:'Sat2',title:'Unit',width:50},
			{field:'qty',title:'Qty',width:50}
		]],
		onClickRow:function(index,row){insert_det(row)}  
	}); 
}


function insert_ref(row){
	$('#ref_id').val(row.matout_id);		
	setdgUrl();
	setComboGrid();	
}

function insert_det(row){
	$('#NmBarang2').val(row.NmBarang2);
	$('#Sat2').val(row.Sat2);
	$('#qty').numberbox('setValue',row.qty);
}

function topdf(){
	var matout_id = $('#matout_id').val();	
	
	openurl('<?=$basedir?>material/scrap_out_pdf.php?NmMenu=<?=$NmMenu?>&matout_id='+matout_id);
}

</script>	