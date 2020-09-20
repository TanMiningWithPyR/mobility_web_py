/* 
* func_button.js
* functional button module for mobility project, all general callback functions for functional button are defined here
*/

func_button = (function(){
//---------------------BEGIN MODULE SCOPE VARIABLES-----------------
	var reqParaMap = {
		FuncID : 'XXXXXXXX',
		ScrID : 'KY',
		strFuncIndex : '99'
	};
//---------------------END MODULE SCOPE VARIABLES  -----------------

//---------------------BEGIN UTILITY METHODS       -----------------
	prepareReqParameter = function(functionId, scrId){
		reqParaMap.FuncID = functionId;
		reqParaMap.ScrID = scrId;
	};

	//button set
	settingButton = function(){
		var functionId = $("input[name='FuncID']").val();
		var scrId = $("input[name='ScrID']").val();
		prepareReqParameter(functionId, scrId);
		var post_data = reqParaMap;
		$.ajax({ 
			  type: 'POST',
			  url: "button", 
			  async: false, 
			  data: post_data,
			  dataType: "html",
			  success: function(data){
				$("#functional_button").html(data);
			  }
			});		
	}
//---------------------END UTILITY METHODS         -----------------

//---------------------BEGIN EVENT HANDLERS        -----------------
//---------------------END EVENT HANDLERS          -----------------
	//---------------------BEGIN DOM METHODS           -----------------
	// remove buttons row
	unLoadFuncButton = function(){
		$("#functional_button").html("");
	}
//---------------------END DOM METHODS             -----------------	
//---------------------BEGIN PUBLIC METHODS        -----------------
	exit = function () {
		$("input[name='strKeyCode']").val("003");
		$("input[name='strFuncIndex']").val("03");
		$("input[name='FuncID']").attr('clicked','clicked'); 
		var formData = $("#form1").serializeJSON(); 
		$.ajax({
			type:"POST",
			url:"/TxCreationDirect/Exit", 
			data:{param:JSON.stringify(formData)},
			success: function(data){
				content.loadWelcome( $("#content"));
				unLoadFuncButton();
			}
		});
	};
	//go to next screen
	ok = function(){
		comm_submit.before_submit('00','000');
		settingButton();
	}

	ok_confirm = function(){
		comm_submit.before_submit('00','000');
		var funcId = $("input[name='FuncID']").val();
		//alert(funcId);
		if (typeof(funcId) == "undefined"){
			//alert(funcId);
			unLoadFuncButton();
		} else {
			settingButton();
		}	

	}

	okMRE = function(){
		comm_submit.before_submit('01','000');
		settingButton();		
	}

	previous = function(){
		comm_submit.before_submit('12','010');
		settingButton();
	}

	default_submit = function(){
		comm_submit.before_submit('06','006');
	}

	txSave = function(){
		comm_submit.before_submit('10','008');
	}

	txDelete = function(){
		comm_submit.before_submit('09','009');
	}

	//in xsl call function name
	return {
		exit : exit,
		ok : ok,
		ok_confirm : ok_confirm,
		okMRE : okMRE,
		previous:previous,
		txDelete:txDelete,
		default_submit:default_submit
		}; 	
//---------------------END PUBLIC METHODS          -----------------

}());

