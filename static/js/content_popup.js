/* 
* content_popup.js
* content_popup of one page for mobility project
*/

content_popup = (function(){
//---------------------BEGIN MODULE SCOPE VARIABLES-----------------

//---------------------END MODULE SCOPE VARIABLES  -----------------

//---------------------BEGIN UTILITY METHODS       -----------------
//---------------------END UTILITY METHODS         -----------------

//---------------------BEGIN DOM METHODS           -----------------
//---------------------END DOM METHODS             -----------------

//---------------------BEGIN EVENT HANDLERS        -----------------
//---------------------END EVENT HANDLERS          -----------------

//---------------------BEGIN PUBLIC METHODS        -----------------
// Begin Public method /initModule/
// End Public method /initModule/
//	mouseOver = function(){
//		var el = window.event.srcElement;
//	    while (el != null){
//			if(el.tagName=="TR")
//				break;
//	        el = el.parentElement;
//	    }
//	    if (el != null) el.className = "popupHighlight";
//	    window.event.cancelBubble = true;
//	    if(el.childNodes[0]!=null )
//	    	if(el.childNodes[0].childNodes[0]!=null)
//	    		el.childNodes[0].childNodes[0].style.backgroundColor="#33CCFF";
//	}
//	mouseOut = function(el){
//		var el = window.event.srcElement;
//	    while (el != null){
//			if(el.tagName=="TR")
//				break;
//	        el = el.parentElement;
//	    }
//	    if (el != null) el.className = "popupCell";
//	    window.event.cancelBubble = true;
//	    if(el.childNodes[0]!=null )
//	    	if(el.childNodes[0].childNodes[0]!=null)
//	    		el.childNodes[0].childNodes[0].style.backgroundColor="#e5e5e5";
//	}
	LineClick = function (objThis){
		var popval = $.trim($(objThis).attr('popupVal'));
		$("input[name='SelectItem']").val(popval);
	    var funcIndex = $("input[name='strFuncIndex']").val();
	    
	    var name = $("input[name='PopupID']").val();
	    $("input[name="+name+"]").val(popval);
	    
	    if(funcIndex != '98')
	    	funcIndex = '98';
		// $.ajax({
		// 	type:"POST",
		// 	url:"./CommAction.jsp", 
		// 	dataType:"xml",
		// 	data:{strFuncIndex:funcIndex,PopupID:'',SelectItem:popval},
		// 	success: function(data){
		// 		$("#popupId").html("");
		// 		$("#popupModal").modal("hide");				
		// 	}
		// });
		$("#popupId").html("");
		$("#popupModal").modal("hide");	
	}
	
	MoreClick = function(){
		  var lineCount = $("input[name='LineCount']").val();
		  if(lineCount > 0)
		  {	
		   alert(lineCount);
		   $("input[name='strFuncIndex']").val("96");
		   var formData = $("#form1").serializeJSON();
		   $.ajax({
				type:"POST",
				url:"/TxCreationDirect/popUp", 
				data:{param:JSON.stringify(formData)},
				dataType: "html",
				success: function(data){
					$("#popupId").html(data);
				}
			});
		  }
		}
	
	Cancel = function(){
		$("#popupId").html("");
		$("#popupModal").modal("hide");			
	}

	return {
//		mouseOver:mouseOver,
//		mouseOut:mouseOut,
		LineClick:LineClick,
		MoreClick:MoreClick,
		Cancel:Cancel
		}; 
//---------------------END PUBLIC METHODS          -----------------
}());