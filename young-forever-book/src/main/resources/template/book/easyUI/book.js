(function () {
	var searchUrl = 'data/book/bookDataGrid';
	
	$(document).ready(function() {
		$('#bookGrid').datagrid({
			url : searchUrl,
			idField : 'id',
			method : 'get',
			
			fitColumns : true,
			pagination : true,
			rownumbers : true,
			
			frozenColumns : [[
				{field : 'checkbox', checkbox : true},
				{field : 'chinese_name', title : '书名', sortable : true},
				{field : 'name', title : '原书名', sortable : true},
				{field : 'author_name', title : '作者'},
				{field : 'buy_state', title : '购买状态', formatter : function(value) {
					if(value) {
						return '已购买';
					} else {
						return '未购买';
					}
				}},
				{field : 'douban_value', title : '豆瓣评分', sortable : true},
				{field : 'douban_count', title : '评价人数', sortable : true},
			]],
			columns : [[
				{field : 'subtitle', title : '副标题'},
				{field : 'translator', title : '译者'},
				{field : 'publisher', title : '出版社'},
				{field : 'publication_year', title : '出版年'},
				{field : 'page', title : '页数'},
				{field : 'price', title : '定价'},
				{field : 'book_binding', title : '装帧', formatter : function(value) {
					if(value == 1) {
						return '平装';
					} else if(value == 2) {
						return '精装';
					}
				}},
				{field : 'isbn', title : 'ISBN'}
			]],
			toolbar : [{
				iconCls : 'icon-add',
				text : '新增',
				handler: function() {
					var bookDialog = $('#bookDialog'); 
					bookDialog.dialog('open');
					bookDialog.dialog('setTitle', '新增');
				}
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
	    	var condition = ocFramework.commonMethod.getConditionUrl('#bookConditionForm');
	    	$('#bookGrid').datagrid('load', {
	    		cond : condition
	    	});
	    });
	    
	    $('#resetButton').bind('click', function(){
	    	$('#bookConditionForm').form('clear');
	    });
	    
	    $('#bookDialog').dialog({
	    	buttons : '#bookDialogButton',
	    	
	    	width : 300,
	    	height : 560,
	    	
	    	closed : true,
	    	modal : true
	    });
	    
	    $('#bookDialogButtonClose').bind('click', function(){
	    	$('#bookDialog').dialog('close');
	    });
	    
	    $('#bookDialogButtonSave').bind('click', function(){
//	    	$('#bookForm').form('submit', {
//	    		url : 'data',
//	    		onSubmit : function(param) {
//	    			param[ocFramework.csrfObject.parameterName] = ocFramework.csrfObject.token;
//	    		}
//	    	});
	    	var bookFormDataJson = ocFramework.commonMethod.getFormDataJson('#bookForm');
	    	//XXX foreignKey对象
	    	var foreignKey = {
	    		name : "authors"
	    		
	    	};
	    	ocFramework.commonMethod.saveData(bookFormDataJson, 'com.oc.youngforever.book.domain.Book', ['a', 'b']);
	    	$('#bookDialog').dialog('close');
	    });
	    
	    $('#authors').combogrid({
	        idField : 'id',
	        textField : 'chinese_name',
	        url : 'data/book/authorComboGrid',
	        method : 'get',
	        
	        width : 173,
	    	panelWidth : 550,
	    	panelHeight : 320,
	        
			fitColumns : true,
			pagination : true,
			rownumbers : true,
			multiple : true,
			
	        columns:[[
	        	{field : 'name',title : '作者',width : 100},
	            {field : 'chinese_name',title : '中文名',width : 100},
	            {field : 'nationality',title : '国籍',width : 50}
	        ]]
	    });
	    
	    $('#buy_state').combobox({
	    	width : 173
	    });
	});
})();