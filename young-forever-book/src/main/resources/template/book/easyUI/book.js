(function () {
	$(document).ready(function() {
		$("#bookGrid").datagrid({
			url : 'data/book/bookGrid?cond=[{name\=id,value\=1,op\=eq},{name\=name,value\=aa,op\=eq}]',
			idField : 'id',
			method : 'get',
			
			fitColumns : true,
			pagination : true,
			rownumbers : true,
			
			columns : [[
				{field : 'id', hidden : true},
				{field : 'chinese_name', title : '书名', width : '500'},
				{field : 'name', title : '原书名', width : '500'},
				{field : 'author_name', title : '作者', width : '500'}
			]],
			toolbar : [{
				iconCls : 'icon-add',
				text : '新增',
				handler: function(){alert('add')}
			},'-',{
				iconCls : 'icon-edit',
				text : '编辑',
				handler : function(){alert('edit')}
			},'-',{
				iconCls : 'icon-remove',
				text : '删除',
				handler : function(){alert('remove')}
			}]
		});
	});
})();