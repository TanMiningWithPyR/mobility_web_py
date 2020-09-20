/* 
* menu.js
* menu module for mobility project
*/

menu = (function(){
//---------------------BEGIN MODULE SCOPE VARIABLES-----------------
	var reqParaMap = {
		FuncID : 'XXXXXXXX',
		ScrID : 'KY',
		strFuncIndex : '99'
	};
//---------------------END MODULE SCOPE VARIABLES  -----------------

//---------------------BEGIN UTILITY METHODS       -----------------
	prepareRequestParameter = function(functionId){
		reqParaMap.FuncID = functionId;
	};
//---------------------END UTILITY METHODS         -----------------

//---------------------BEGIN DOM METHODS           -----------------
//---------------------END DOM METHODS             -----------------

//---------------------BEGIN EVENT HANDLERS        -----------------
	// get first page content 
	goToFirstPage = function(functionId){
		prepareRequestParameter(functionId);
		var post_data = reqParaMap;
		$.ajax({ 
			  type: 'GET',
			  url: "/function/" + functionId, 
			  data: post_data,
			  dataType: "html",
			  success: function(data){
				$("#content").html(data);
			  }
			});
	};
	
	// get first page button
	loadFuncButton = function(functionId){
		prepareRequestParameter(functionId);
		var post_data = reqParaMap;
		$.ajax({ 
			  type: 'POST',
			  url: "button", 
			  data: post_data,
			  dataType: "html",
			  success: function(data){
				$("#functional_button").html(data);
			  }
			});		
	}
//---------------------END EVENT HANDLERS          -----------------

//---------------------BEGIN PUBLIC METHODS        -----------------
// Begin Public method /initModule/
	loadMenu = function ($container) {
		$.ajax({ 
			  url: "menu", 
			  dataType: "html",
			  success: function(data){
				$container.html(data);
			  }
			});
	};
	
	menuSelect = function (functionId) {
		$("#navitems").attr("class","navbar-collapse collapse");
		goToFirstPage(functionId);
		loadFuncButton(functionId);
	};
// End Public method /initModule/
	return {
	loadMenu : loadMenu,
	menuSelect : menuSelect
	}; 
//---------------------END PUBLIC METHODS          -----------------
}());