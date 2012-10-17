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
			{field:'do_no',title:'DO No.',width:80},
			{field:'do_date',title:'DO Date',width:80},
			{field:'so_no',title:'PO Cust. No',width:80},
			{field:'cust',title:'Customer',width:80},
			{field:'vehicle_no',title:'Vehicle No.',width:100},
			{field:'driver',title:'Driver',width:80},
			{field:'notes',title:'Notes',width:100}
		]],
		url: '<?php echo $basedir; ?>models/material/do_grid.php?req=menu&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val(),
		view: detailview,  
		detailFormatter:function(index,row){  
			return '<div style="padding:2px"><table id="ddv-' + index + '"></table></div>';  
		},  
		onExpandRow: function(index,row){  
			$('#ddv-'+index).datagrid({  
				url:'<?php echo $basedir; ?>models/material/do_grid.php?req=list&do_id='+row.do_id,  
				fitColumns:true,  
				singleSelect:true,  
				rownumbers:true,  
				loadMsg:'',  
				height:'auto',  
				columns:[[  
					{field:'KdBarang2',title:'Part Code',width:80},  
					{field:'PartNo',title:'Part No.',width:80}, 
					{field:'NmBarang2',title:'Part Name',width:100}, 
					{field:'Sat2',title:'Unit',width:80},   
					{field:'qty',title:'Quantity',width:100},  
					{field:'price',title:'Price',width:100},
					{field:'amount',title:'Amount',width:100}  
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