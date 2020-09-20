/* 
* content.js
* content of one page for mobility project
*/

content = (function(){
//---------------------BEGIN MODULE SCOPE VARIABLES-----------------
	var configMap = {
		main_html : String() 
		+'<div class="jumbotron jumbotron-fluid">'
        +  '<div class="container">'
        +    '<h1 class="display-4">Welcome</h1>'
        +      '<p class="lead">'
        +         'Built by TAN. <br>'
        +         'FU YOU'
        +      '</p>'
        +  '</div>'
        +'</div>'
		};
//---------------------END MODULE SCOPE VARIABLES  -----------------

//---------------------BEGIN UTILITY METHODS       -----------------
//---------------------END UTILITY METHODS         -----------------

//---------------------BEGIN DOM METHODS           -----------------
//---------------------END DOM METHODS             -----------------

//---------------------BEGIN EVENT HANDLERS        -----------------
//---------------------END EVENT HANDLERS          -----------------

//---------------------BEGIN PUBLIC METHODS        -----------------
// Begin Public method /initModule/
	loadWelcome = function ($container) {
		$container.html(configMap.main_html);
	};
// End Public method /initModule/
	
// popUp = 
	popUp = function (name,val) {
		$("input[name='PopupID']").val(name);
		$("input[name='val']").val(val);
		$("input[name='strFuncIndex']").val("04");

		var formData = $("#form1").serializeJSON();
		formData.lineCount = "";
		$.ajax({
			type:"POST",
			url:"/TxCreationDirect/popUp", 
			data: {param:JSON.stringify(formData)},
			dataType: "html",//"text",//json
			success: function(data){
//				alert('data='+data);
				$("#popupId").html(data);
				//unLoadFuncButton();
			}
		});
	}
	//jump screen
	turnPage = function(objValue){
		$("input[name='jumpToScreen']").val(objValue);
		
		comm_submit.before_submit('93','093');
	}
	return {
		loadWelcome : loadWelcome,
		popUp : popUp,
		turnPage : turnPage
		}; 
//---------------------END PUBLIC METHODS          -----------------
}());