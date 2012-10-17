<script type="text/javascript">   
function setdg(){
	$('#dg').datagrid({  	
		title:"",
		width:736,
		height:415,	
		toolbar:"#toolCari",
		rownumbers:"true",
		frozenColumns:[[  
			{field:'matin_no',title:'Incoming No.',width:80},
			{field:'matin_date',title:'Incoming Date',width:80},
		]],
		columns:[[  			
			{field:'matin_name',title:'Incoming Type',width:80},
			{field:'po_no',title:'PO No.',width:80},
			{field:'supplier',title:'Seller',width:80},
			{field:'supl_do',title:'Seller DO No.',width:80},
			{field:'supl_inv',title:'Seller Inv. No.',width:80},
			{field:'currency',title:'Currency',width:80},
			{field:'notes',title:'Notes',width:80}
		]],
		url: '<?php echo $basedir; ?>models/material/matin_grid.php?req=menu&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val(),
		view: detailview,  
		detailFormatter:function(index,row){  
			return '<div style="padding:2px"><table id="ddv-' + index + '"></table></div>';  
		},  
		onExpandRow: function(index,row){  
			$('#ddv-'+index).datagrid({  
				url:'<?php echo $basedir; ?>models/material/matin_grid.php?req=list&matin_id='+row.matin_id,  
				fitColumns:true,  
				singleSelect:true,  
				rownumbers:true,  
				loadMsg:'',  
				height:'auto',  
				columns:[[  
					{field:'KdBarang2',title:'Mat. Code',width:80},  
					//{field:'PartNo',title:'Part No.',width:80}, 
					{field:'NmBarang2',title:'Desc.',width:100},   
					{field:'Sat2',title:'Unit',width:80}, 
					{field:'qty',title:'Quantity',width:100,align:'right'},
					{field:'price',title:'Price',width:100,align:'right'},
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