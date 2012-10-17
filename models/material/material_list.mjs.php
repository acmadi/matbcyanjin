<script type="text/javascript">   
function setdg(){
	$('#dg').datagrid({  	
		title:"",
		width:736,
		height:415,	
		toolbar:"#toolCari",
		rownumbers:"true",
		frozenColumns:[[  
			{field:'KdBarang0',title:'Kode Barang0',width:80,hidden:true},
			{field:'matgroup_name',title:'Mat. Group',width:80},
			{field:'KdBarang',title:'Mat. Code',width:80},
			{field:'NmBarang',title:'Desc.',width:100},
		]],
		columns:[[  			
			{field:'HsNo',title:'HS No.',width:100},
			{field:'DieNo',title:'Die No.',width:80},
			{field:'UWm',title:'UW/m',width:80},
			{field:'LPc',title:'L/Pc',width:80},
			{field:'WPcs',title:'W/Pcs',width:80},
			{field:'LBar',title:'L/Bar',width:80},
			{field:'PcBar',title:'Pc/Bar',width:80},
			{field:'WBar',title:'WBar',width:80},
			{field:'Finish',title:'Finish',width:80},
			{field:'twhmp',title:'twhmp',width:80},
			{field:'Sat',title:'Unit',width:40}
		]],
		url: '<?php echo $basedir; ?>models/material/material_grid.php?TpBarang=<?php echo $TpBarang; ?>&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val()
	});
}

function topdf(){
	openurl('<?=$basedir?>material/material_pdf.php?NmMenu=<?=$NmMenu?>&TpBarang=<?=$TpBarang?>&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val());
}

</script>	