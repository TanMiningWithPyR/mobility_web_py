/* 
* default.js
* default page module for mobility project
*/

mobility = (function(){
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
	initModule = function ($container) {
		menu.loadMenu( $("#navbar"));
		content.loadWelcome( $("#content"));
	};
// End Public method /initModule/
	return {initModule : initModule}; 
//---------------------END PUBLIC METHODS          -----------------
}());