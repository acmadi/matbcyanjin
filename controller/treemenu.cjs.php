<script type="text/javascript">
$(function(){


$('#tt').tree({  
    url:'models/tree_data.json',
	onClick:function(node){
		$(this).tree('toggle', node.target);
	}
});

$('#menuutama').click(function(){
	$('#tt').tree('collapseAll');
});

});
</script>
