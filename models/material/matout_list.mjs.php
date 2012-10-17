<script type="text/javascript">   
function setdg(){
	$('#dg').datagrid({  	
		title:"",
		width:736,
		height:415,	
		toolbar:"#toolCari",
		fitColumns:"true",
		rownumbers:"true",
		columns:[[  		
			{field:'matout_no',title:'Outgoing No.',width:100},
			{field:'matout_date',title:'Outgoing Date',width:100},	
			{field:'matout_name',title:'Outgoing Type',width:100},
			{field:'wo_no',title:'WO No.',width:100},
			{field:'notes',title:'Notes',width:100}
		]],
		url: '<?php echo $basedir; ?>models/material/matout_grid.php?req=menu&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val(),
		view: detailview,  
		detailFormatter:function(index,row){  
			return '<div style="padding:2px"><table id="ddv-' + index + '"></table></div>';  
		},  
		onExpandRow: function(index,row){  
			$('#ddv-'+index).datagrid({  
				url:'<?php echo $basedir; ?>models/material/matout_grid.php?req=list&matout_id='+row.matout_id,  
				fitColumns:true,  
				singleSelect:true,  
				rownumbers:true,  
				loadMsg:'',  
				height:'auto',  
				columns:[[  
					{field:'KdBarang2',title:'Mat. Code',width:80},  
					//{field:'PartNo',title:'Part No.',width:80}, 
					{field:'NmBarang2',title:'Desc',width:100},   
					{field:'Sat2',title:'Unit',width:80}, 
					{field:'qty',title:'Quantity',width:100,align:'right'}
					//{field:'price',title:'Price',width:100}  
				]],  
				onResize:function(){  
					$('#dg').datagrid('fixDetailRowHeight',index);  
				},  
				onLoadSuccess:function(){  
					setTimeout(function(){  
						$('#dg').datagrid('fixDetailRowHeight',index);  
					},0);  
				} 
			});
			$('#dg').datagrid('fixDetailRowHeight',index);
		}
	});
}
</script>	