/* 
* content_mre.js
* content_mre of one page for mobility project
*/

content_mre = (function(){
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
	//MRE Screen turn page
	gotoNextMrePage = function(){
		comm_submit.before_submit('95','095');
	};
	 
	gotoFrontMrePage = function(){
		comm_submit.before_submit('94','094');
	};
	 
	//mre modal window edit
	mreEdit = function(lineIndex,field_name){
		$("#mre_line_" + lineIndex).show();
		$("#exampleModalScrollableTitle").text(lineIndex);
		$("#show_field").text(field_name);
	};
	
	cancel = function(){
		$("#mre_line_" + $("#exampleModalScrollableTitle").text()).css('display','none');
		$("#popupModal").modal("hide");	
	};
	
	ok = function(){
		var mre_line_no = "mre_line_" + $("#exampleModalScrollableTitle").text(); 
		var modal_field_name = $("#show_field").text() + $("#exampleModalScrollableTitle").text();
		var table_field = "table_field_" + modal_field_name;
//		var table_field_content = $("input[name="+modal_field_name+"]").val();
//		alert(modal_field_name);
		var table_field_content = document.getElementsByName(modal_field_name)[0].value;
		
		$("#" + table_field).text(table_field_content);
		$("#" + mre_line_no).css('display','none');
		$("#popupModal").modal("hide");
	};
	
	//mre add row
	mreAddRow = function(){
		comm_submit.before_submit('15','002');
	};
	
	//mre del row
	mreDelRow = function(){
		comm_submit.before_submit('16','009');
	};

	popUp = function (name,val,row) {
		$("input[name='PopupID']").val(name+'_'+row);
		$("input[name='val']").val(val);
		$("input[name='strFuncIndex']").val("04");

		var formData = $("#form1").serializeJSON();
		formData.lineCount = "";
		$.ajax({
			type:"POST",
			url:"/Mre/popUp", 
			data: {param:JSON.stringify(formData)},
			dataType: "html",//"text",//json
			success: function(data){
//				alert('data='+data);
				$("#popupId").html(data);
				//unLoadFuncButton();
			}
		});
	}
	
	return {
		gotoNextMrePage:gotoNextMrePage,
		gotoFrontMrePage:gotoFrontMrePage,
		mreEdit:mreEdit,
		cancel:cancel,
		ok:ok,
		popUp:popUp,
		mreAddRow:mreAddRow,
		mreDelRow:mreDelRow
	}; 
//---------------------END PUBLIC METHODS          -----------------
}());