/* 
* comm_submit.js:before_submit function
* functional button module for mobility project, all general callback functions for functional button are defined here
*/

comm_submit = (function(){
//---------------------BEGIN MODULE SCOPE VARIABLES-----------------
//---------------------END MODULE SCOPE VARIABLES  -----------------

//---------------------BEGIN UTILITY METHODS       -----------------
	//data submit
	before_submit = function(strFuncIndex,strKeyCode){
//		checkLength(strKeyCode);
		
		$("input[name='strKeyCode']").val(strKeyCode);
		$("input[name='strFuncIndex']").val(strFuncIndex);
		$("input[name='FuncID']").attr('clicked','clicked'); 
		
		//popup val set blank
		$("input[name='PopupID']").val("");
		$("input[name='val']").val("");
		var formData = $("#form1").serializeJSON(); 
		if(strFuncIndex == "00" && strKeyCode == "000"){
			var scrId = $("input[name='ScrID']").val();
			if (scrId == "CF") {
				$.ajax({ 
					  url: "/TxCreationDirect/Confirm", 
					  type: 'POST',
					  async: false, 
					  data: {param:JSON.stringify(formData)},
					  dataType: "html",
					  success: function(data){
						$("#content").html(data)			
					  }
				});	
			} else {
				$.ajax({ 
					  url: "/TxCreationDirect/Next", 
					  type: 'POST',
					  async: false, 
					  data: {param:JSON.stringify(formData)},
					  dataType: "html",//"text",//json
					  success: function(data){
						//var obj = JSON.parse(data);	
						$("#content").html(data)			
					  }
				});			
			}			
		}

		if(strFuncIndex == "12" && strKeyCode == "010"){
			$.ajax({ 
				  url: "/TxCreationDirect/Previous", 
				  type: 'POST',
				  async: false, 
				  data: {param:JSON.stringify(formData)},
				  dataType: "html",
				  success: function(data){
					$("#content").html(data)			
				  }
			});		
		}

		if(strFuncIndex == "06" && strKeyCode == "006"){
			$.ajax({ 
				  url: "/TxCreationDirect/Default", 
				  type: 'POST',
				  async: false, 
				  data: {param:JSON.stringify(formData)},
				  dataType: "html",
				  success: function(data){
					$("#content").html(data)			
				  }
			});		
		}

		if(strFuncIndex == "09" && strKeyCode == "009"){
			$.ajax({ 
				  url: "/TxCreationDirect/txDelete", 
				  type: 'POST',
				  async: false, 
				  data: {param:JSON.stringify(formData)},
				  dataType: "html",
				  success: function(data){
					$("#content").html(data)			
				  }
			});		
		}	

		if(strFuncIndex == "01" && strKeyCode == "000"){
			$.ajax({ 
				  url: "/TxCreationDirect/OKMRE", 
				  type: 'POST',
				  async: false, 
				  data: {param:JSON.stringify(formData)},
				  dataType: "html",
				  success: function(data){
					$("#content").html(data)			
				  }
			});		
		}			
	}
//---------------------END UTILITY METHODS         -----------------

//---------------------BEGIN EVENT HANDLERS        -----------------
//---------------------END EVENT HANDLERS          -----------------
	//---------------------BEGIN DOM METHODS           -----------------
	//varible and function from goodies
	var focusElement = null;

	/* from TAMView.js */
	var isPopup=0;
	var Handle;
	var firstEditable=null; 
	var isDTVislble = false;
	var AllUppercase=false; //style="text-transform: uppercase"

	//control press key
	var canPressGenerKey=false;
	var canPressPopupdKey=false;
	var canPressNotepadKey=false;
	var canPressHelpKey=false;

	//DD/MM/YYYY,YYYY/MM/DD,MM/DD/YYYY
	var dateFormat = "dd/mm/yyyy";
	var isloaded=false;

	// ". / -"
	var dateSplite='/';
	var send_Date=" ";

	//check length
	//check length, including chinese, lee add -- 20081219
	lengthLimit = function(obj){	
	     var errMsg ="";	
	     try
	     {	
	         if(obj.value.replace(/[^\x00-\xff]/g,"**").length>obj.maxLength)
	         {
	             errMsg= "Value must less than "+obj.maxLength+" characters";
	             handleError(obj,errMsg);
	             return false;
	         }
	         else 
	         {
	              return true;
	         } 
	     }
	     catch (e)
	     {
	        return true;
	     }
	}
	formatBlank = function(objValue){
		
	   var temp= objValue.replace(String.fromCharCode(160),String.fromCharCode(32));   

	   while(temp.indexOf(String.fromCharCode(160))>=0)
	   {
	       temp= temp.replace(String.fromCharCode(160),String.fromCharCode(32));
	   } 
	   objValue = temp;
	   return objValue;
	}
	ConvertToNoComma = function(s){ 
	     var i; 
	     var s2 = s; 
	     while(s2.indexOf(",")>0) 
	     { 
	        i = s2.indexOf(","); 
	        s2 = s2.substring(0, i)  + s2.substring(i + 1, s2.length); 
	     } 
	     return s2; 
	} 
	handleError = function(obj, errMsg){
		window.event.returnValue=false;
		refreshScreen();
		obj.style.borderColor = 'red';
		obj.scrollIntoView();
		obj.focus();
		alert(errMsg);
	}
	checkValue = function(me,isSigned,decPlaces,numDigits){
		var val;
		var valStr;
		var signPos;
		var decPos;
		var errMsg;
		//allow empty field to pass
		if (me.value.length == 0)
		{
			me.style.borderColor = '';
			return true;
		}
		//do not allow comma in number field
		if (me.value.indexOf(',') >= 0)//lee edit
		{
		    me.value=ConvertToNoComma(me.value);
		}
		
		val = parseFloat(me.value);
		errMsg='';
		var maxSignificantLength = numDigits - decPlaces;
		var numStr = '';
		for (var i = 0; i<maxSignificantLength; i++)
		{
		 numStr+='9';
		}
		if (decPlaces>0)
		{
		 numStr +='.';
		 for (i = 0; i<decPlaces; i++)
		 {
		 	numStr +='9';
		 }
		}
		errMsg = "Please enter a numeric value from ";
		if (isSigned=='Y')
		{
		 errMsg = errMsg + '-' + numStr;
		}
		else
		{
		 errMsg += '0';
		}
		errMsg += " to " + numStr;
		errMsg += " ("+maxSignificantLength+" significant digits, "+parseInt(decPlaces,10)+" decimal places)";
		//first the value needs to be a valid number
		if (isNaN(val))
		{		
			//errMsg = me.value + " is not a valid number for this field.";
			handleError(me,errMsg);
			return false;
		}
		
		//add by ljh 20110209
		//if input decPlaces>defined decPlaces,then handleError
		strNum=val.toString();
		strDecPlaces=strNum.indexOf('.');
		if(strDecPlaces>=0)
		{
		  if(strNum.split('.')[1].length>decPlaces)
		  {
		    handleError(me,errMsg);
			return false;
		  }
		}
		//end by ljh 20110209	
		//round off the val to the nearest decPlaces-th
		val = val.toFixed(decPlaces);
		
		valStr = val.toString();
		decPos = valStr.indexOf('.');
		signPos = valStr.indexOf('-');
		//non-Signed number cannot have '-'
		if ((isSigned != 'Y')&&(signPos >= 0))
		{
			me.value = val;
			//errMsg = "Only positive number is allowed for this field";
			handleError(me,errMsg);
			return false;
		}
		//length of significant digits + fraction digits <= numDigits
		
		var floatVal = parseFloat(val);
		//alert("debuging fv:"+floatVal);
		var absFloatVal = Math.abs(floatVal);
		var significantVal = Math.floor(absFloatVal);
		var absSignificantStr = significantVal.toString();
		//alert("debuging absS:"+absSignificantStr);
		if (absSignificantStr.length > maxSignificantLength)
		{
			me.value = val;
			//errMsg = "Only "+maxSignificantLength+" significant digits are allowed.";
			handleError(me,errMsg);
			return false;
		}
		me.value = val;
		me.style.borderColor = '';
		if(me.isNoCommas!='Y')
		{
	        me.value=addCommas(me.value);
	    }
		return true;
	}
	//check page attribute
	checkLength = function(strCode){
		if (strCode=="003")
			return true;	
		
	    var actualLen,valueData,dataType,chnChar,sName,validKey,chnCharTag=0;
	    $("input[name='FuncID']").attr('clicked','clicked');
	    
	    var elmentsLength = document.form1.elements.length;	    
	    for (i=0;i<elmentsLength;i++)
	    {
	        var objTmp = document.form1.elements[i];
	        valueData = objTmp.value;
//	        if(objTmp.type == 'checkbox')
//	        	alert("sName="+objTmp.name+":"+$(objTmp).is("select")+":"+objTmp.type+":"+$(objTmp).attr("dataType"));
	        
	        if (objTmp.type == "text" || objTmp.type == "password")
	        {
	            validKey = "form-control,form-control is-valid,form-control is-invalid";
	           
	            sName="escape"+objTmp.name;
	            if((validKey.indexOf(objTmp.className.toLowerCase())!=-1)&&($(objTmp).attr("dataType")=='Number'))
	            {
			         if (checkValue(objTmp, $(objTmp).attr("signed"),$(objTmp).attr("decimalPlace"),$(objTmp).attr("numDigits"))==false)
			         {    
				     	return false;
				     }
	                 else
				     {
				         document.form1.elements[sName].value = formatBlank(ConvertToNoComma(objTmp.value));
				     }
				}
	            else if((validKey.indexOf(objTmp.className.toLowerCase())!=-1)&&($(objTmp).attr("dataType")=='Date'))
	            {
			         if (checkDate(objTmp)==false)
				     {  
				     	return false;
				     }
				     else
				     {
				        formatDataToBehind(document.form1.elements[sName],formatBlank(objTmp.value));
				     }
				} 
				else
				{  
				      validKey = "readonly,readonly_courier";
				      if(validKey.indexOf(objTmp.className.toLowerCase())!=-1)
	                  {   
	                         if($(objTmp).attr("dataType")=='Number')
	                        {
	                            document.form1.elements[sName].value =  formatBlank(ConvertToNoComma(objTmp.value));
	                        }
	                        else if($(objTmp).attr("dataType")=='Date')
	                        {
	                            formatDataToBehind(document.form1.elements[sName],formatBlank(objTmp.value));     
	                        }
	                        else
	                        {
	                           document.form1.elements[sName].value =formatBlank(objTmp.value);
	                        } 
	                  }
				      else if(lengthLimit(objTmp))
				      {
				  		 var vv = formatBlank($(objTmp).val());
				  		 if(vv.length > 0){
				  			 document.form1.elements[sName].value = vv;
				  		 }
				  		// ${"input[name="+sName+"]"}.val(vv);
	                  }
	                  else
	                  {
	                       return false;
	                  }
	            }  
	        }
	        else if ((objTmp.type == "checkbox") && (objTmp.name != "sflIndex") &&  objTmp.name != "btnSelectAll")
	        {
	            sName="escape"+objTmp.name;
	            
	            if (objTmp.checked)
	                document.form1.elements[sName].value = formatBlank($(objTmp).attr("checkval"));
	            else
	                document.form1.elements[sName].value = formatBlank($(objTmp).attr("uncheckval"));
	        }
	        else if ($(objTmp).is("select") && objTmp.name != "sflIndex" && objTmp.mreRow==null)
	        {
	            for (var j=0;j<objTmp.options.length;j++)
	            {
	                if (objTmp.options[j].selected)
	                {
	                    sName="escape"+objTmp.name;
	                    document.form1.elements[sName].value = formatBlank(objTmp.options[j].value);
	                }
	            }
	        }
	     }
	    return true;
	}
	
	formatDataToBehind = function(objTmp,value)	{
		var arrDate;
		arrDate=value.split(dateSplite);
		if(value.length>0 & arrDate.length==3)
		{       
			objTmp.value=arrDate[0]+arrDate[1]+arrDate[2];
		}
		else    
		{
			objTmp.value=""; 
		}
	}
	
	addCommas = function(nStr)	{
		nStr += '';
		x = nStr.split('.');
		x1 = x[0];
		x2 = x.length > 1 ? '.' + x[1] : '';
		var rgx = /(\d+)(\d{3})/;
		while (rgx.test(x1)) {
			x1 = x1.replace(rgx, '$1' + ',' + '$2');
		}
		return x1 + x2;
	}	
	
	checkDate = function (objTmp){
	    var year;
	    var month;
	    var day;    
	    var dateValue ;  
	    var errMsg='Date field: format is '+dateFormat;  
	    dateValue = objTmp.value; 
	    
	    if(strTrim(dateValue)=='')
	    {
	        objTmp.value=strTrim(dateValue)
	        return true;
	    }
	    
	    year=getdatepart(dateValue ,"y");
	    month=getdatepart(dateValue ,"m");
	    day=getdatepart(dateValue ,"d");

	    if(strTrim(year).length==0 || strTrim(month).length==0 || strTrim(day).length==0)     
	    {
	       errMsg+=',field value:'+ objTmp.value +'  is invalid' 
	       handleError(objTmp,errMsg);
	       return false;
	    }
	    
	    if(fnIsIntNum(year))
	    {
	       if(parseInt(year,10) < 1 || parseInt(year,10) > 9999)
	       {
	         errMsg+=',year invalid'
	         handleError(objTmp,errMsg);
	         return false;
	       }                
	    }
	    else
	    {
	     errMsg+=',field value:'+ objTmp.value +' of year is invalid'
	     handleError(objTmp,errMsg);
	     return false;
	    }   
	    
	    if(fnIsIntNum(month))
	    {
	        if(parseInt(month,10) < 1 || parseInt(month,10) > 12)
	        {
	            errMsg+=',field value:'+ objTmp.value +' of month is invalid' 
	            handleError(objTmp,errMsg);
	            return false;
	        } 
	    }
	    else
	    {
	        errMsg+=',field value:'+ objTmp.value +' of month is invalid' 
	        handleError(objTmp,errMsg);
	        return false;
	    }
	   
	    
	    if(fnIsIntNum(day))
	    {
	        var intDayCount = fnComputerDay(parseInt(year,10),parseInt(month,10));
	        if(intDayCount < parseInt(day,10))
	        {
	            errMsg+=',field value:'+ objTmp.value +' of day is invalid' 
	            handleError(objTmp,errMsg);
	            return false;
	        }   
	    }
	    else
	    {
	       errMsg+=',field value:'+ objTmp.value +' of day is invalid' 
	       handleError(objTmp,errMsg);
	       return false;
	    }
	    setdateValue(objTmp,year,month,day)
	    objTmp.style.borderColor = '';
	    return true;
	}	
	
	setdateValue = function (objTmp,year,month,day)	{
	   if(dateFormat=="DD"+dateSplite+"MM"+dateSplite+"YYYY"  || dateFormat=="dd"+dateSplite+"mm"+dateSplite+"yyyy")
	   {
	       objTmp.value=strformat(day,2)+dateSplite+strformat(month,2)+dateSplite+year
	   }
	   else if(dateFormat=="YYYY"+dateSplite+"MM"+dateSplite+"DD"  || dateFormat=="yyyy"+dateSplite+"mm"+dateSplite+"dd")
	   {
	       objTmp.value=year+dateSplite+strformat(month,2)+dateSplite+strformat(day,2)
	   }
	   else if(dateFormat=="MM"+dateSplite+"DD"+dateSplite+"YYYY"  || dateFormat=="mm"+dateSplite+"dd"+dateSplite+"yyyy")
	   {
	       objTmp.value=strformat(month,2)+dateSplite+strformat(day,2)+dateSplite+year
	   }
	}
	
	fnIsIntNum = function (strNum)	{
		var strCheckNum = strNum + "";
		if(strCheckNum.length < 1)
			return false;
		else if(isNaN(strCheckNum))
			return false;
		else if(parseInt(strCheckNum,10) < 1)
			return false; 
		else if(parseFloat(strCheckNum) > parseInt(strCheckNum,10))
			return false; 
		return true;
	}
	
	strTrim = function (str){
	  try
	    {
	    if(str!=null  )
	      {
	          return str.replace(/^\s*/,'').replace(/\s*$/,'')
	      }
	      else  
	      {
	         return str;
	      }
	    }
	  catch(e)
	  {
	        return e;
	  }
	}
	
	getdatepart = function (datestring,datepart)
	{
	    var arrDate;  
		if(datestring==undefined)
		  return '';
	    arrDate=datestring.split(dateSplite);
	    if(!(arrDate.length==3))
	    {
	       return ''
	    }
	    
	    switch (datepart)
	    {
	        case "y" :    
	            if(dateFormat.toUpperCase()=="DD"+dateSplite+"MM"+dateSplite+"YYYY"  || dateFormat=="dd"+dateSplite+"mm"+dateSplite+"yyyy")
	            {
	                datepart=arrDate[2]
	            }
	            else if(dateFormat.toUpperCase()=="YYYY"+dateSplite+"MM"+dateSplite+"DD"  || dateFormat=="yyyy"+dateSplite+"mm"+dateSplite+"dd")
	            {
	                datepart=arrDate[0]
	            } 
	            else if(dateFormat.toUpperCase()=="MM"+dateSplite+"DD"+dateSplite+"YYYY"  || dateFormat=="mm"+dateSplite+"dd"+dateSplite+"yyyy")
	            {
	                datepart=arrDate[2]
	            }
	            
	            break;
	        case "m":
	            if(dateFormat.toUpperCase()=="DD"+dateSplite+"MM"+dateSplite+"YYYY"  || dateFormat=="dd"+dateSplite+"mm"+dateSplite+"yyyy")
	            {
	                datepart=arrDate[1]
	            }
	            else if(dateFormat.toUpperCase()=="YYYY"+dateSplite+"MM"+dateSplite+"DD"  || dateFormat=="yyyy"+dateSplite+"mm"+dateSplite+"dd")
	            {
	                datepart=arrDate[1]
	            }     
	            else if(dateFormat.toUpperCase()=="MM"+dateSplite+"DD"+dateSplite+"YYYY"  || dateFormat=="mm"+dateSplite+"dd"+dateSplite+"yyyy")
	            {
	                datepart=arrDate[0]
	            } 
	            
	            break;        
	        case "d":
	            if(dateFormat.toUpperCase()=="DD"+dateSplite+"MM"+dateSplite+"YYYY"  || dateFormat=="dd"+dateSplite+"mm"+dateSplite+"yyyy")
	            {
	                datepart=arrDate[0]
	            }
	            else if(dateFormat.toUpperCase()=="YYYY"+dateSplite+"MM"+dateSplite+"DD"  || dateFormat=="yyyy"+dateSplite+"mm"+dateSplite+"dd")
	            {
	                datepart=arrDate[2]
	            }
	            else if(dateFormat.toUpperCase()=="MM"+dateSplite+"DD"+dateSplite+"YYYY"  || dateFormat=="mm"+dateSplite+"dd"+dateSplite+"yyyy")
	            {
	                datepart=arrDate[1]
	            }  
	            
	            break;
	        default:
	            datepart=''
	            break;
	     }
	     return datepart;
	}
	
	fnComputerDay = function (intYear,intMonth)	{
		var dtmDate = new Date(intYear,intMonth,-1);
		var intDay = dtmDate.getDate() + 1;
		return intDay;
	}
	
	strformat = function (str,ilen)	{   
	  if(str.length<ilen)   
	  {   
	     for(iindex=0;iindex<ilen-str.length;iindex++)   
	     {   
	         str="0"+str  
	     }   
	     return   str  
	  }  else {
	      return   str
	   }   
	}
//---------------------END DOM METHODS             -----------------	
//---------------------BEGIN PUBLIC METHODS        -----------------
	//call function name
	return {
		before_submit : before_submit
	}; 	
//---------------------END PUBLIC METHODS          -----------------

}());

