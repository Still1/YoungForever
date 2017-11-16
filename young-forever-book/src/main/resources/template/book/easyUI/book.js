(function () {
	var searchUrl = "data/book/bookGrid";
	
	$(document).ready(function() {
		$("#bookGrid").datagrid({
			url : searchUrl,
			idField : 'id',
			method : 'get',
			
			fitColumns : true,
			pagination : true,
			rownumbers : true,
			
			frozenColumns : [[
				{field : 'chinese_name', title : '书名', sortable : true},
				{field : 'name', title : '原书名', sortable : true},
				{field : 'author_name', title : '作者'},
				{field : 'buy_state', title : '购买状态', formatter : function(value) {
					if(value) {
						return "已购买";
					} else {
						return "未购买";
					}
				}},
				{field : 'douban_value', title : '豆瓣评分', sortable : true},
				{field : 'douban_count', title : '评价人数', sortable : true},
			]],
			columns : [[
				{field : 'subtitle', title : '副标题'},
				{field : 'translator', title : '译者'},
				{field : 'publisher', title : '出版社'},
				{field : 'publication_date', title : '出版时间'},
				{field : 'page', title : '页数'},
				{field : 'price', title : '定价'},
				{field : 'book_binding', title : '装帧', formatter : function(value) {
					if(value == 1) {
						return "平装";
					} else if(value == 2) {
						return "精装";
					}
				}},
				{field : 'isbn', title : 'ISBN'}
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
		
	    $('#searchButton').bind('click', function(){
	    	var condition = ocFramework.commonMethod.getConditionUrl();
	    	$('#bookGrid').datagrid('load', {
	    		cond : condition
	    	});
	    });
	});
})();