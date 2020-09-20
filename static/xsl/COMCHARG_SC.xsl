<?xml version="1.0" encoding="utf-8"?>
<out:stylesheet xmlns:out="http://www.w3.org/TR/WD-xsl">
  <out:script>
				
					function even(e) {
						return absoluteChildNumber(e)%2 == 0;
					}
					function formatScreenLabel(e) {
						var str = this.attributes.item(0).text;
						var functionIndex = 7;
						var screenIDLength = 10;
						
						if(str.length &lt; screenIDLength){
							return str;
						}
						var temp = str.substr(functionIndex+1);
						if (temp=='SC') {
							return str.substr(0,functionIndex+1);
						} else {
							return 'Screen '+temp;
						}
					}
				
			</out:script>
  <out:template match="/">
    <html>
      <SCRIPT LANGUAGE="javascript" for="document" event="oncontextmenu">
			    event.returnValue=false
			</SCRIPT>
      <style type="text/css">
        <out:comment>
					img {  cursor: hand}
				</out:comment>
      </style>
      <head>
        <title>COMMISSION/CHARGES INPUT ScreenSC</title>
        <meta http-equiv="Content-Type" content="text/html; charset=Big5" />
        <link rel="stylesheet" href="TAMStyle.css" type="text/css" />
      </head>
      <script src="js/popcalendar.js" language="JavaScript" type="text/javascript">
      </script>
      <script type="text/javascript" language="JavaScript" src="js/goodies.js">
      </script>
      <body bgcolor="#FFFFFF" text="#000000" onload="setDatablockListDisplayStyle();show_status();parent.frames['fraRightFrame'].focus();focusOnObj()" onkeydown="keyPressHdlr()" onHelp="return false" ondragstart="return  false">
        <form name="form1" method="POST" action="CommAction.jsp">
          <input type="hidden" name="status_info">
            <out:attribute name="value">
              <out:value-of select="/MSG/@status" />
            </out:attribute>
          </input>
          <input type="hidden" name="ContentEditable">
            <out:attribute name="value">
              <out:value-of select="/MSG/ContentEditable" />
            </out:attribute>
          </input>
          <input type="hidden" name="FocusOnObj">
            <out:attribute name="value">
              <out:value-of select="/MSG/FocusID" />
            </out:attribute>
          </input>
          <input type="hidden" name="PopupID" value="" />
          <input type="hidden" name="DateFormat">
            <out:attribute name="value">
              <out:value-of select="/MSG/@DateFormat" />
            </out:attribute>
          </input>
          <input type="hidden" clicked="" popupID="" status="" name="FuncID" onclick="getFocus()" value="COMCHARG" />
          <input type="hidden" name="Export_Info_Version" value="WX020003" />
          <input type="hidden" name="Export_Info_TXName" value="COMCHARG" />
          <input type="hidden" name="TX_Header_ObjName" value="COMCHARG" />
          <input type="hidden" name="TX_Header_ShortDesc" value="COMMISSION/CHARGES INPUT" />
          <input type="hidden" name="ScrID" value="SC" />
          <input type="hidden" name="intOSum" value="200" />
          <input type="hidden" name="strKeyCode" value="" />
          <input type="hidden" name="strFuncIndex" value="" />
          <input type="hidden" name="val" value="" />
          <input type="hidden" name="lockMenu" value="Y" />
          <div id="LoadingLayer" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" style="position:absolute; z-index:10; background-image: url(images/loading.gif); layer-background-image: url(images/loading.gif); border: 1px none #000000; visibility: hidden; width: 200px; height: 100px; left: 30%; top: 30%" class="loadingLayer">
            <img width="2" src="images/pixel.gif" />
          </div>
          <div id="PopupMessageLayer" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" style="position:absolute; z-index:10; background-image: url(images/selectFromPopup.gif); layer-background-image: url(images/selectFromPopup.gif); border: 1px none #000000; visibility: hidden; width: 200px; height: 100px; left: 30%; top: 30%" class="loadingLayer">
            <img width="2" src="images/pixel.gif" />
          </div>
          <div id="MessageLayer" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" class="screenLayer">
            <out:attribute name="style">
              <out:choose>
                <out:when test="/MSG/Message">display:block</out:when>
                <out:otherwise>display:none</out:otherwise>
              </out:choose>
            </out:attribute>
            <table width="95%" border="0" cellspacing="0" cellpadding="0" name="MessageTable" bgcolor="#e5e5e5">
              <tr>
                <td colspan="2" align="left" bgcolor="#0099ff">  <span class="headerLabelFont">System Message</span></td>
              </tr>
              <tr>
                <td width="100">
                  <img src="images/error.gif" />
                </td>
                <td>
                  <span class="fieldLabelFont">
                    <out:for-each select="/MSG/Message">
                      <out:value-of select="." />
                      <br />
                    </out:for-each>
                  </span>
                </td>
              </tr>
            </table>
            <img src="images/pixel.gif" height="5" />
          </div>
          <div id="ScreenLayer" class="screenLayer">
            <div id="dHTMLToolTip" style="position: absolute; visibility: hidden; width:10; height: 10; z-index: 1000; left: 0; top: 0">
              <img src="images/pixel.gif" />
            </div>
            <div class="tabLayer" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;">
              <table width="100%" border="0" cellspacing="4" cellpadding="2">
                <tr align="center">
                  <out:apply-templates select="/MSG/Screen_Flow/Screen" />
                </tr>
              </table>
            </div>
            <img src="images/pixel.gif" />
            <input type="hidden" name="jumpToScreen" value="" />
            <table width="95%" border="0" cellpadding="1" cellspacing="1">
              <tr bgcolor="#0099FF" align="center">
                <td class="headerLabelCell">
                  <font class="screenTitleFont">COMMISSION/CHARGES INPUT</font>
                </td>
              </tr>
            </table>
            <table onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" width="95%" border="0" cellpadding="1" cellspacing="1" name="buttonsListTable">
              <tr align="left">
                <td width="25%">
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('00','000')" alt="OK" border="0" src="images/okBtn.gif" id="000" />
                  <img src="images/pixel.gif" width="2" />
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('06','006')" alt="Default" border="0" src="images/defaultBtn.gif" id="006" />
                  <img src="images/pixel.gif" width="2" />
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('03','003')" alt="Exit" border="0" src="images/exitBtn.gif" id="003" />
                  <img src="images/pixel.gif" width="2" />
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('16','009')" alt="Multi-record Delete" border="0" src="images/multiRDelBtn.gif" id="009" />
                  <img src="images/pixel.gif" width="2" />
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('15','002')" alt="Mutli-record Insert" border="0" src="images/multiRInsBtn.gif" id="002" />
                  <img src="images/pixel.gif" width="2" />
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('01','001')" alt="On-line Help" border="0" src="images/helpBtn.gif" id="001" />
                  <img src="images/pixel.gif" width="2" />
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('12','010')" alt="Previous Screen" border="0" src="images/previousBtn.gif" id="010" />
                  <img src="images/pixel.gif" width="2" />
                </td>
              </tr>
            </table>
            <table width="95%" border="0" cellpadding="1" cellspacing="1">
              <tr bgcolor="#0099FF" align="center">
                <td class="headerLabelCell">
                  <font class="headerLabelFont">UserID</font>
                </td>
                <td class="headerLabelCell">
                  <font class="headerLabelFont">Date</font>
                </td>
                <td class="headerLabelCell">
                  <font class="headerLabelFont">Time</font>
                </td>
                <td class="headerLabelCell">
                  <font class="headerLabelFont">FuncID</font>
                </td>
                <td class="headerLabelCell">
                  <font class="headerLabelFont">SCRID</font>
                </td>
              </tr>
              <tr align="center">
                <td class="headerValueCell">
                  <font class="font1">
                    <out:value-of select="/MSG/@UserID" />
                  </font>
                </td>
                <td class="headerValueCell">
                  <font class="font1">
                    <out:value-of select="/MSG/@Send_Date" />
                  </font>
                </td>
                <td class="headerValueCell">
                  <font class="font1">
                    <out:value-of select="/MSG/@Send_Time" />
                  </font>
                </td>
                <td class="headerValueCell">
                  <font class="font1">
                    <out:value-of select="/MSG/Export_Info/@TXName" />
                  </font>
                </td>
                <td class="headerValueCell">
                  <font class="font1">
                    <out:value-of select="/MSG/@ScrID" />
                  </font>
                </td>
              </tr>
            </table>
            <hr noshade="noshade" width="0" size="0" />
            <div id="blockListButtonLayer" align="right" style="width: 95%">
              <input type="button" style="font:10pt Arial; border:1 solid darkblue ;cursor:hand;background:#0099ff" value="Expand" name="blockListECButton" onclick="expandCollapse(this.name, 'BlockListLayer')" />
            </div>
            <!--BLOCKLISTLAYER BEGINS HERE-->
            <div id="BlockListLayer" style="width: 95%;overflow-x:scroll">
              <table id="BlockListTable" width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                    <table border="0" bgcolor="#CCCCCC" class="dataBlockTable">
                      <tr bgcolor="#999999">
                        <td colspan="2" align="right" class="dataBlockKeyCell">Information</td>
                      </tr>
                      <tr style="height:26px">
                        <td width="100%" class="dataBlockCell1" align="right">
                          <font class="fieldLabelFont" name="00030002" row="0003" col="0002" style="LEFT:1px;POSITION: absolute; TOP: 25px; TEXT-ALIGN: left">REF&#160;NO:</font>
                          <input type="text" withPopup="N" fromSmgLength="030" onfocus="focusElement=this;" title="Data type: Characters" row="0003" col="0010" signed=" " decimalPlace="000" name="0000030" dataType="Characters" style="width: 240px;LEFT: 65px;POSITION: absolute; TOP: 21px;" readonly="readonly" maxlength="030">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0000030']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0000030']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_2" value="ScrFld" />
                          <input type="hidden" name="objOValue_2" value="0000030C" />
                          <input type="hidden" name="escape0000030" value="" />
                          <font class="fieldLabelFont" name="00030041" row="0003" col="0041" style="LEFT:313px;POSITION: absolute; TOP: 25px; TEXT-ALIGN: left">VER&#160;NO:</font>
                          <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;" title="Data type: Number" row="0003" col="0049" signed="N" decimalPlace="000" name="0030003" dataType="Number" style="width: 35px;LEFT: 377px;POSITION: absolute; TOP: 21px;" readonly="readonly" maxlength="003">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0030003']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0030003']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_3" value="ScrFld" />
                          <input type="hidden" name="objOValue_3" value="0030003M" />
                          <input type="hidden" name="escape0030003" value="" />
                          <input type="text" withPopup="N" fromSmgLength="008" onfocus="focusElement=this;" title="Data type: Characters" row="0003" col="0073" signed=" " decimalPlace="000" name="0033008" dataType="Characters" style="width: 64px;LEFT: 569px;POSITION: absolute; TOP: 21px;" readonly="readonly" maxlength="008">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0033008']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0033008']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_4" value="ScrFld" />
                          <input type="hidden" name="objOValue_4" value="0033008C" />
                          <input type="hidden" name="escape0033008" value="" />
                        </td>
                      </tr>
                      <tr style="height:26px">
                        <td width="100%" class="dataBlockCell2" align="right">
                          <font class="fieldLabelFont" name="00040002" row="0004" col="0002" style="LEFT:1px;POSITION: absolute; TOP: 53px; TEXT-ALIGN: left;LEFT:1px; POSITION: absolute; TOP: 53px; TEXT-ALIGN: left;LEFT:1px; POSITION: absolute; TOP: 53px; TEXT-ALIGN: left;LEFT:1px; POSITION: absolute; TOP: 53px; TEXT-ALIGN: left">DR</font>
                          <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;" title="Data type: Characters" row="0004" col="0006" signed=" " decimalPlace="000" name="0041003" dataType="Characters" style="width: 39px;LEFT: 33px;POSITION: absolute; TOP: 49px;" readonly="readonly" maxlength="003">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0041003']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0041003']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_5" value="ScrFld" />
                          <input type="hidden" name="objOValue_5" value="0041003" />
                          <input type="hidden" name="escape0041003" value="" />
                          <font class="fieldLabelFont">
                          </font>
                          <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;" title="Data type: Number" row="0004" col="0010" signed="Y" decimalPlace="002" name="0044015" dataType="Number" style="width: 119px;LEFT: 81px;POSITION: absolute; TOP: 49px;" readonly="readonly" maxlength="015">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0044015']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0044015']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_6" value="ScrFld" />
                          <input type="hidden" name="objOValue_6" value="0044015" />
                          <input type="hidden" name="escape0044015" value="" />
                          <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;" title="Data type: Characters" row="0004" col="0031" signed=" " decimalPlace="000" name="0059003" dataType="Characters" style="width: 39px;LEFT: 249px;POSITION: absolute; TOP: 49px;" readonly="readonly" maxlength="003">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0059003']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0059003']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_7" value="ScrFld" />
                          <input type="hidden" name="objOValue_7" value="0059003" />
                          <input type="hidden" name="escape0059003" value="" />
                          <font class="fieldLabelFont">
                          </font>
                          <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;" title="Data type: Number" row="0004" col="0035" signed="Y" decimalPlace="002" name="0062015" dataType="Number" style="width: 119px;LEFT: 297px;POSITION: absolute; TOP: 49px;" readonly="readonly" maxlength="015">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0062015']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0062015']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_8" value="ScrFld" />
                          <input type="hidden" name="objOValue_8" value="0062015" />
                          <input type="hidden" name="escape0062015" value="" />
                          <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;" title="Data type: Characters" row="0004" col="0056" signed=" " decimalPlace="000" name="0077003" dataType="Characters" style="width: 39px;LEFT: 465px;POSITION: absolute; TOP: 49px;" readonly="readonly" maxlength="003">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0077003']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0077003']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_9" value="ScrFld" />
                          <input type="hidden" name="objOValue_9" value="0077003" />
                          <input type="hidden" name="escape0077003" value="" />
                          <font class="fieldLabelFont">
                          </font>
                          <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;" title="Data type: Number" row="0004" col="0060" signed="Y" decimalPlace="002" name="0080015" dataType="Number" style="width: 119px;LEFT: 513px;POSITION: absolute; TOP: 49px;" readonly="readonly" maxlength="015">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0080015']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0080015']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_10" value="ScrFld" />
                          <input type="hidden" name="objOValue_10" value="0080015" />
                          <input type="hidden" name="escape0080015" value="" />
                        </td>
                      </tr>
                      <tr style="height:26px">
                        <td width="100%" class="dataBlockCell1" align="right">
                          <font class="fieldLabelFont" name="00050002" row="0005" col="0002" style="LEFT:1px;POSITION: absolute; TOP: 81px; TEXT-ALIGN: left;LEFT:1px; POSITION: absolute; TOP: 81px; TEXT-ALIGN: left;LEFT:1px; POSITION: absolute; TOP: 81px; TEXT-ALIGN: left;LEFT:1px; POSITION: absolute; TOP: 81px; TEXT-ALIGN: left">CR</font>
                          <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;" title="Data type: Characters" row="0005" col="0006" signed=" " decimalPlace="000" name="0095003" dataType="Characters" style="width: 39px;LEFT: 33px;POSITION: absolute; TOP: 77px;" readonly="readonly" maxlength="003">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0095003']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0095003']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_11" value="ScrFld" />
                          <input type="hidden" name="objOValue_11" value="0095003" />
                          <input type="hidden" name="escape0095003" value="" />
                          <font class="fieldLabelFont">
                          </font>
                          <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;" title="Data type: Number" row="0005" col="0010" signed="Y" decimalPlace="002" name="0098015" dataType="Number" style="width: 119px;LEFT: 81px;POSITION: absolute; TOP: 77px;" readonly="readonly" maxlength="015">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0098015']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0098015']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_12" value="ScrFld" />
                          <input type="hidden" name="objOValue_12" value="0098015" />
                          <input type="hidden" name="escape0098015" value="" />
                          <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;" title="Data type: Characters" row="0005" col="0031" signed=" " decimalPlace="000" name="0113003" dataType="Characters" style="width: 39px;LEFT: 249px;POSITION: absolute; TOP: 77px;" readonly="readonly" maxlength="003">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0113003']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0113003']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_13" value="ScrFld" />
                          <input type="hidden" name="objOValue_13" value="0113003" />
                          <input type="hidden" name="escape0113003" value="" />
                          <font class="fieldLabelFont">
                          </font>
                          <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;" title="Data type: Number" row="0005" col="0035" signed="Y" decimalPlace="002" name="0116015" dataType="Number" style="width: 119px;LEFT: 297px;POSITION: absolute; TOP: 77px;" readonly="readonly" maxlength="015">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0116015']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0116015']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_14" value="ScrFld" />
                          <input type="hidden" name="objOValue_14" value="0116015" />
                          <input type="hidden" name="escape0116015" value="" />
                          <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;" title="Data type: Characters" row="0005" col="0056" signed=" " decimalPlace="000" name="0131003" dataType="Characters" style="width: 39px;LEFT: 465px;POSITION: absolute; TOP: 77px;" readonly="readonly" maxlength="003">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0131003']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0131003']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_15" value="ScrFld" />
                          <input type="hidden" name="objOValue_15" value="0131003" />
                          <input type="hidden" name="escape0131003" value="" />
                          <font class="fieldLabelFont">
                          </font>
                          <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;" title="Data type: Number" row="0005" col="0060" signed="Y" decimalPlace="002" name="0134015" dataType="Number" style="width: 119px;LEFT: 513px;POSITION: absolute; TOP: 77px;" readonly="readonly" maxlength="015">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='0134015']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='0134015']" />
                            </out:attribute>
                          </input>
                          <input type="hidden" name="strOType_16" value="ScrFld" />
                          <input type="hidden" name="objOValue_16" value="0134015" />
                          <input type="hidden" name="escape0134015" value="" />
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </div>
            <!--BLOCKLISTLAYER ENDS HERE-->
            <img src="images/pixel.gif" />
            <input type="hidden" name="RunSerial">
              <out:attribute name="value">
                <out:value-of select="/MSG/Screen_Layout/ScrSFL/@RunSerial" />
              </out:attribute>
            </input>
            <input type="hidden" name="SflName">
              <out:attribute name="value">
                <out:value-of select="/MSG/Screen_Layout/ScrSFL/@Name" />
              </out:attribute>
            </input>
            <input type="hidden" name="Occur">
              <out:attribute name="value">
                <out:value-of select="/MSG/Screen_Layout/ScrSFL/@Occur" />
              </out:attribute>
            </input>
            <input type="hidden" name="sflStart" value="10" Rows="2" Cols="4" sflFldCols="0001" />
            <input type="hidden" clicked="" name="CurPos" value="0000" />
            <input type="hidden" name="popupPos" popupCols="" popupRows="" value="0000" />
            <input type="hidden" name="strOType_1" value="ScrSFL" />
            <input type="hidden" name="strOValue_1" value="SCSCR022460010000200040079003" />
            <input type="hidden" name="objOValue_1" value="SCR02246" />
            <input type="hidden" name="mreLine" value="4" />
            <input type="hidden" name="SCR022460000" value="0000002C" />
            <input type="hidden" name="SCR022460001" value="0002018C" />
            <input type="hidden" name="SCR022460002" value="0020003C" />
            <input type="hidden" name="SCR022460003" value="0023015N" />
            <input type="hidden" name="SCR022460004" value="0038001C" />
            <input type="hidden" name="SCR022460005" value="0039001C" />
            <input type="hidden" name="SCR022460006" value="0040002C" />
            <input type="hidden" name="SCR022460007" value="0042003C" />
            <input type="hidden" name="SCR022460008" value="0045015N" />
            <input type="hidden" name="SCR022460009" value="0060016C" />
            <input type="hidden" name="SCR022460010" value="0076010N" />
            <input type="hidden" name="SCR022460011" value="0086012N" />
            <input type="hidden" name="SCR022460012" value="0098001C" />
            <input type="hidden" name="SCR022460013" value="0099001C" />
            <input type="hidden" name="SCR022460014" value="0100001C" />
            <input type="hidden" name="SCR022460015" value="0101011D" />
            <input type="hidden" name="SCR022460016" value="0112001C" />
            <input type="hidden" name="SCR022460017" value="0113001C" />
            <input type="hidden" name="SCR022460018" value="0114003M" />
            <input type="hidden" name="SCR022460019" value="0117015N" />
            <input type="hidden" name="SCR022460020" value="0132003C" />
            <input type="hidden" name="SCR022460021" value="0135015N" />
            <input type="hidden" name="SCR022460022" value="0150001C" />
            <input type="hidden" name="SCR022460023" value="0151001C" />
            <input type="hidden" name="SCR022460024" value="0152003M" />
            <input type="hidden" name="SCR022460025" value="0155003M" />
            <input type="hidden" name="SCR022460026" value="0158072C" />
            <div id="MREListLayer" style="overflow-x: scroll; width: 95%; height: auto">
              <table border="0" cellspacing="1" cellpadding="0" name="MREMain" id="MREMain" width="100%" Occurs="3">
                <tr>
                  <td name="MREHeader" style="height:46px" class="MREHeaderCell">
                    <out:apply-templates select="/MSG/Screen_Layout/ScrSFL/SFLLine" />
                    <font class="fieldLabelFont" style="break-word;LEFT: 94px;POSITION: absolute; TOP: 1px; TEXT-ALIGN: left">FEE&#160;DESCRIPTION&#160;&#160;&#160;&#160;AMOUNT</font>
                    <font class="fieldLabelFont" style="break-word;LEFT: 446px;POSITION: absolute; TOP: 1px; TEXT-ALIGN: left">*&#160;-/+&#160;&#160;&#160;&#160;&#160;&#160;AMOUNT</font>
                    <font class="fieldLabelFont" style="break-word;LEFT: 94px;POSITION: absolute; TOP: 17px; TEXT-ALIGN: left">GL&#160;NUMBER&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;COMM&#160;RATE</font>
                    <font class="fieldLabelFont" style="break-word;LEFT: 374px;POSITION: absolute; TOP: 17px; TEXT-ALIGN: left">EXCHANGE&#160;RATE&#160;&#160;&#160;&#160;&#160;&#160;FX&#160;TYPE</font>
                    <font class="fieldLabelFont" style="break-word;LEFT: 590px;POSITION: absolute; TOP: 17px; TEXT-ALIGN: left">MULT/DIV&#160;AMIND</font>
                    <font class="fieldLabelFont" style="break-word;LEFT: 94px;POSITION: absolute; TOP: 33px; TEXT-ALIGN: left">COMM&#160;END&#160;DATE&#160;&#160;PARTY&#160;RECALC</font>
                    <font class="fieldLabelFont" style="break-word;LEFT: 326px;POSITION: absolute; TOP: 33px; TEXT-ALIGN: left">GST&#160;AMOUNT</font>
                    <font class="fieldLabelFont" style="break-word;LEFT: 502px;POSITION: absolute; TOP: 33px; TEXT-ALIGN: left">ORIGINAL&#160;AMOUNT</font>
                  </td>
                </tr>
                <tr name="MREBody" style="height:110px" class="dataBlockCell2" lineIndex="0001">
                  <out:attribute name="class">
                    <out:choose>
                      <out:when expr="even(this)">MRECell</out:when>
                      <out:otherwise>MRECell2</out:otherwise>
                    </out:choose>
                  </out:attribute>
                  <td nowrap="nowrap">
                    <input type="checkbox" checkval="Y" uncheckval="N" name="sflIndex" onclick="gotoMRE(this)">
                      <out:if test=".[Selected='Y']">
                        <out:attribute name="checked">checked</out:attribute>
                      </out:if>
                      <out:attribute name="value" />
                      <out:attribute name="scrs99FieldName">escape0151001</out:attribute>
                    </input>
                    <label class="fieldLabelFont" id="MreSerial">0</label>
                    <input type="text" withPopup="Y" fromSmgLength="002" onfocus="focusElement=this;setCurPos(this);" description="Work field for CCTTYPE" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="1" signed=" " decimalPlace="000" name="0000002" dataType="Characters" style="width: 26px;LEFT: 62px;POSITION: absolute; TOP: 51px; TEXT-ALIGN: left" width="16" maxlength="002">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0000002']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <img position="SCWCTTYPE C00000000002 00000010001OY  " id="0101" lineIndex="" mreRow="0001" mreCol="0001" beforeWidth="26" style="LEFT: 88px;POSITION: absolute; TOP: 41px; TEXT-ALIGN: left" src="images/redPop.gif" border="0" alt="Popup" align="top" status="" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" onclick="hideScreenLayer();displayPopupMessageLayer();popup(this);setPopupID('0101')" />
                    <input type="text" withPopup="N" fromSmgLength="018" onfocus="focusElement=this;setCurPos(this);" description="Fee description" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="6" signed=" " decimalPlace="000" name="0002018" dataType="Characters" style="width: 144px;LEFT: 102px;POSITION: absolute; TOP: 51px; TEXT-ALIGN: left" width="144" maxlength="018">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0002018']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Commission CCY" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="25" signed=" " decimalPlace="000" name="0020003" dataType="Characters" style="width: 39px;LEFT: 254px;POSITION: absolute; TOP: 51px; TEXT-ALIGN: left" width="24" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0020003']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" description="Commission AMT" title="Data type: Number" lineIndex="-1" mreRow="1" mreCol="31" signed="Y" decimalPlace="002" name="0023015" dataType="Number" style="width: 119px;LEFT: 302px;POSITION: absolute; TOP: 51px; TEXT-ALIGN: left" width="120" onkeypress="numBoxKeyPressHdlr(this)" onblur="numBoxBlurHdlr(this)" onfocus="focusElement=this;setCurPos(this);numBoxFocusHdlr(this)" numDigits="015" maxlength="17">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0023015']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Change indicator ( /*)" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="52" signed=" " decimalPlace="000" name="0038001" dataType="Characters" style="width: 13px;LEFT: 470px;POSITION: absolute; TOP: 51px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0038001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Add/Minus Indicator" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="56" signed=" " decimalPlace="000" name="0039001" dataType="Characters" style="width: 13px;LEFT: 502px;POSITION: absolute; TOP: 51px; TEXT-ALIGN: left" width="8" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0039001']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="002" onfocus="focusElement=this;setCurPos(this);" description="DR/CR Indicator" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="60" signed=" " decimalPlace="000" name="0040002" dataType="Characters" style="width: 26px;LEFT: 534px;POSITION: absolute; TOP: 51px; TEXT-ALIGN: left" width="16" maxlength="002">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0040002']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Actual Commission CCY" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="65" signed=" " decimalPlace="000" name="0042003" dataType="Characters" style="width: 39px;LEFT: 574px;POSITION: absolute; TOP: 51px; TEXT-ALIGN: left" width="24" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0042003']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="Actual Commission Amt" title="Data type: Number" lineIndex="-1" mreRow="1" mreCol="71" signed="Y" decimalPlace="002" name="0045015" dataType="Number" style="width: 119px;LEFT: 622px;POSITION: absolute; TOP: 51px; TEXT-ALIGN: left" width="120" readonly="readonly" maxlength="015">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0045015']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="Y" fromSmgLength="016" onfocus="focusElement=this;setCurPos(this);" description="GL Number" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="4" signed=" " decimalPlace="000" name="0060016" dataType="Characters" style="width: 128px;LEFT: 86px;POSITION: absolute; TOP: 79px; TEXT-ALIGN: left" width="128" maxlength="016">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0060016']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <img position="SCCCTGLNO C00600009016 00000020004OY  " id="0204" lineIndex="" mreRow="0002" mreCol="0004" beforeWidth="128" style="LEFT: 214px;POSITION: absolute; TOP: 69px; TEXT-ALIGN: left" src="images/redPop.gif" border="0" alt="Popup" align="top" status="" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" onclick="hideScreenLayer();displayPopupMessageLayer();popup(this);setPopupID('0204')" />
                    <input type="text" withPopup="N" fromSmgLength="010" onfocus="focusElement=this;setCurPos(this);" description="Commission RATE" title="Data type: Number" lineIndex="-1" mreRow="2" mreCol="23" signed="Y" decimalPlace="007" name="0076010" dataType="Number" style="width: 84px;LEFT: 238px;POSITION: absolute; TOP: 79px; TEXT-ALIGN: left" width="80" readonly="readonly" maxlength="010">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0076010']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="012" description="Exchange Rate" title="Data type: Number" lineIndex="-1" mreRow="2" mreCol="39" signed="Y" decimalPlace="007" name="0086012" dataType="Number" style="width: 98px;LEFT: 366px;POSITION: absolute; TOP: 79px; TEXT-ALIGN: left" width="96" onkeypress="numBoxKeyPressHdlr(this)" onblur="numBoxBlurHdlr(this)" onfocus="focusElement=this;setCurPos(this);numBoxFocusHdlr(this)" numDigits="012" maxlength="14">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0086012']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="FX Type" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="62" signed=" " decimalPlace="000" name="0098001" dataType="Characters" style="width: 13px;LEFT: 550px;POSITION: absolute; TOP: 79px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0098001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Multiply/Divide Indicator" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="70" signed=" " decimalPlace="000" name="0099001" dataType="Characters" style="width: 13px;LEFT: 614px;POSITION: absolute; TOP: 79px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0099001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <select isselect="true" name="0100001" mreRow="2" onfocus="focusElement=this;" description="WAMTI" lineIndex="" mreCol="74" style=";LEFT: 646px;POSITION: absolute; TOP: 79px; TEXT-ALIGN: left">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="SFLFld[@Data_Index='0100001']/@ErrorMsg">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                      <out:attribute name="svrvalue">
                        <out:value-of select="SFLFld[@Data_Index='0100001']/@Value" />
                      </out:attribute>
                      <option value="">
                      </option>
                      <option value="Y">Y</option>
                      <option value="N">N</option>
                    </select>
                    <input type="text" withPopup="N" fromSmgLength="011" onfocus="focusElement=this;setCurPos(this);" description="Next expiry date" title="Data type: Date" lineIndex="-1" mreRow="3" mreCol="4" signed=" " decimalPlace="000" name="0101011" dataType="Date" style="width: 77px;LEFT: 86px;POSITION: absolute; TOP: 107px; TEXT-ALIGN: left" width="88" readonly="readonly" maxlength="011">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0101011']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Commission party" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="21" signed=" " decimalPlace="000" name="0112001" dataType="Characters" style="width: 13px;LEFT: 222px;POSITION: absolute; TOP: 107px; TEXT-ALIGN: left" width="8" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0112001']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Auto recalc flag" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="25" signed=" " decimalPlace="000" name="0113001" dataType="Characters" style="width: 13px;LEFT: 254px;POSITION: absolute; TOP: 107px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0113001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="GST def sequence no." title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="29" signed="N" decimalPlace="000" name="0114003" dataType="Number" style="width: 35px;LEFT: 286px;POSITION: absolute; TOP: 107px; TEXT-ALIGN: left" width="24" readonly="readonly" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0114003']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="GST amount" title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="33" signed="Y" decimalPlace="002" name="0117015" dataType="Number" style="width: 119px;LEFT: 318px;POSITION: absolute; TOP: 107px; TEXT-ALIGN: left" width="120" readonly="readonly" maxlength="015">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0117015']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Original charge currency" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="55" signed=" " decimalPlace="000" name="0132003" dataType="Characters" style="width: 39px;LEFT: 494px;POSITION: absolute; TOP: 107px; TEXT-ALIGN: left" width="24" readonly="readonly" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0132003']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="Original charge amount" title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="61" signed="Y" decimalPlace="002" name="0135015" dataType="Number" style="width: 119px;LEFT: 542px;POSITION: absolute; TOP: 107px; TEXT-ALIGN: left" width="120" readonly="readonly" maxlength="015">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0135015']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="BLANK 1" title="Data type: Characters" lineIndex="-1" mreRow="4" mreCol="2" signed=" " decimalPlace="000" name="0150001" dataType="Characters" style="width: 13px;LEFT: 70px;POSITION: absolute; TOP: 135px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0150001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                  </td>
                </tr>
                <tr name="MREBody" style="height:110px" class="dataBlockCell1" lineIndex="0002">
                  <out:attribute name="class">
                    <out:choose>
                      <out:when expr="even(this)">MRECell</out:when>
                      <out:otherwise>MRECell2</out:otherwise>
                    </out:choose>
                  </out:attribute>
                  <td nowrap="nowrap">
                    <input type="checkbox" checkval="Y" uncheckval="N" name="sflIndex" onclick="gotoMRE(this)">
                      <out:if test=".[Selected='Y']">
                        <out:attribute name="checked">checked</out:attribute>
                      </out:if>
                      <out:attribute name="value" />
                      <out:attribute name="scrs99FieldName">escape0151001</out:attribute>
                    </input>
                    <label class="fieldLabelFont" id="MreSerial">0</label>
                    <input type="text" withPopup="Y" fromSmgLength="002" onfocus="focusElement=this;setCurPos(this);" description="Work field for CCTTYPE" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="1" signed=" " decimalPlace="000" name="0000002" dataType="Characters" style="width: 26px;LEFT: 62px;POSITION: absolute; TOP: 162px; TEXT-ALIGN: left" width="16" maxlength="002">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0000002']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <img position="SCWCTTYPE C00000000002 00000010001OY  " id="0101" lineIndex="" mreRow="0001" mreCol="0001" beforeWidth="26" style="LEFT: 88px;POSITION: absolute; TOP: 152px; TEXT-ALIGN: left" src="images/redPop.gif" border="0" alt="Popup" align="top" status="" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" onclick="hideScreenLayer();displayPopupMessageLayer();popup(this);setPopupID('0101')" />
                    <input type="text" withPopup="N" fromSmgLength="018" onfocus="focusElement=this;setCurPos(this);" description="Fee description" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="6" signed=" " decimalPlace="000" name="0002018" dataType="Characters" style="width: 144px;LEFT: 102px;POSITION: absolute; TOP: 162px; TEXT-ALIGN: left" width="144" maxlength="018">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0002018']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Commission CCY" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="25" signed=" " decimalPlace="000" name="0020003" dataType="Characters" style="width: 39px;LEFT: 254px;POSITION: absolute; TOP: 162px; TEXT-ALIGN: left" width="24" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0020003']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" description="Commission AMT" title="Data type: Number" lineIndex="-1" mreRow="1" mreCol="31" signed="Y" decimalPlace="002" name="0023015" dataType="Number" style="width: 119px;LEFT: 302px;POSITION: absolute; TOP: 162px; TEXT-ALIGN: left" width="120" onkeypress="numBoxKeyPressHdlr(this)" onblur="numBoxBlurHdlr(this)" onfocus="focusElement=this;setCurPos(this);numBoxFocusHdlr(this)" numDigits="015" maxlength="17">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0023015']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Change indicator ( /*)" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="52" signed=" " decimalPlace="000" name="0038001" dataType="Characters" style="width: 13px;LEFT: 470px;POSITION: absolute; TOP: 162px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0038001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Add/Minus Indicator" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="56" signed=" " decimalPlace="000" name="0039001" dataType="Characters" style="width: 13px;LEFT: 502px;POSITION: absolute; TOP: 162px; TEXT-ALIGN: left" width="8" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0039001']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="002" onfocus="focusElement=this;setCurPos(this);" description="DR/CR Indicator" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="60" signed=" " decimalPlace="000" name="0040002" dataType="Characters" style="width: 26px;LEFT: 534px;POSITION: absolute; TOP: 162px; TEXT-ALIGN: left" width="16" maxlength="002">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0040002']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Actual Commission CCY" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="65" signed=" " decimalPlace="000" name="0042003" dataType="Characters" style="width: 39px;LEFT: 574px;POSITION: absolute; TOP: 162px; TEXT-ALIGN: left" width="24" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0042003']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="Actual Commission Amt" title="Data type: Number" lineIndex="-1" mreRow="1" mreCol="71" signed="Y" decimalPlace="002" name="0045015" dataType="Number" style="width: 119px;LEFT: 622px;POSITION: absolute; TOP: 162px; TEXT-ALIGN: left" width="120" readonly="readonly" maxlength="015">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0045015']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="Y" fromSmgLength="016" onfocus="focusElement=this;setCurPos(this);" description="GL Number" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="4" signed=" " decimalPlace="000" name="0060016" dataType="Characters" style="width: 128px;LEFT: 86px;POSITION: absolute; TOP: 190px; TEXT-ALIGN: left" width="128" maxlength="016">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0060016']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <img position="SCCCTGLNO C00600009016 00000020004OY  " id="0204" lineIndex="" mreRow="0002" mreCol="0004" beforeWidth="128" style="LEFT: 214px;POSITION: absolute; TOP: 180px; TEXT-ALIGN: left" src="images/redPop.gif" border="0" alt="Popup" align="top" status="" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" onclick="hideScreenLayer();displayPopupMessageLayer();popup(this);setPopupID('0204')" />
                    <input type="text" withPopup="N" fromSmgLength="010" onfocus="focusElement=this;setCurPos(this);" description="Commission RATE" title="Data type: Number" lineIndex="-1" mreRow="2" mreCol="23" signed="Y" decimalPlace="007" name="0076010" dataType="Number" style="width: 84px;LEFT: 238px;POSITION: absolute; TOP: 190px; TEXT-ALIGN: left" width="80" readonly="readonly" maxlength="010">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0076010']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="012" description="Exchange Rate" title="Data type: Number" lineIndex="-1" mreRow="2" mreCol="39" signed="Y" decimalPlace="007" name="0086012" dataType="Number" style="width: 98px;LEFT: 366px;POSITION: absolute; TOP: 190px; TEXT-ALIGN: left" width="96" onkeypress="numBoxKeyPressHdlr(this)" onblur="numBoxBlurHdlr(this)" onfocus="focusElement=this;setCurPos(this);numBoxFocusHdlr(this)" numDigits="012" maxlength="14">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0086012']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="FX Type" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="62" signed=" " decimalPlace="000" name="0098001" dataType="Characters" style="width: 13px;LEFT: 550px;POSITION: absolute; TOP: 190px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0098001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Multiply/Divide Indicator" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="70" signed=" " decimalPlace="000" name="0099001" dataType="Characters" style="width: 13px;LEFT: 614px;POSITION: absolute; TOP: 190px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0099001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <select isselect="true" name="0100001" mreRow="2" onfocus="focusElement=this;" description="WAMTI" lineIndex="" mreCol="74" style=";LEFT: 646px;POSITION: absolute; TOP: 190px; TEXT-ALIGN: left">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="SFLFld[@Data_Index='0100001']/@ErrorMsg">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                      <out:attribute name="svrvalue">
                        <out:value-of select="SFLFld[@Data_Index='0100001']/@Value" />
                      </out:attribute>
                      <option value="">
                      </option>
                      <option value="Y">Y</option>
                      <option value="N">N</option>
                    </select>
                    <input type="text" withPopup="N" fromSmgLength="011" onfocus="focusElement=this;setCurPos(this);" description="Next expiry date" title="Data type: Date" lineIndex="-1" mreRow="3" mreCol="4" signed=" " decimalPlace="000" name="0101011" dataType="Date" style="width: 77px;LEFT: 86px;POSITION: absolute; TOP: 218px; TEXT-ALIGN: left" width="88" readonly="readonly" maxlength="011">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0101011']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Commission party" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="21" signed=" " decimalPlace="000" name="0112001" dataType="Characters" style="width: 13px;LEFT: 222px;POSITION: absolute; TOP: 218px; TEXT-ALIGN: left" width="8" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0112001']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Auto recalc flag" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="25" signed=" " decimalPlace="000" name="0113001" dataType="Characters" style="width: 13px;LEFT: 254px;POSITION: absolute; TOP: 218px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0113001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="GST def sequence no." title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="29" signed="N" decimalPlace="000" name="0114003" dataType="Number" style="width: 35px;LEFT: 286px;POSITION: absolute; TOP: 218px; TEXT-ALIGN: left" width="24" readonly="readonly" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0114003']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="GST amount" title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="33" signed="Y" decimalPlace="002" name="0117015" dataType="Number" style="width: 119px;LEFT: 318px;POSITION: absolute; TOP: 218px; TEXT-ALIGN: left" width="120" readonly="readonly" maxlength="015">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0117015']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Original charge currency" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="55" signed=" " decimalPlace="000" name="0132003" dataType="Characters" style="width: 39px;LEFT: 494px;POSITION: absolute; TOP: 218px; TEXT-ALIGN: left" width="24" readonly="readonly" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0132003']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="Original charge amount" title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="61" signed="Y" decimalPlace="002" name="0135015" dataType="Number" style="width: 119px;LEFT: 542px;POSITION: absolute; TOP: 218px; TEXT-ALIGN: left" width="120" readonly="readonly" maxlength="015">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0135015']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="BLANK 1" title="Data type: Characters" lineIndex="-1" mreRow="4" mreCol="2" signed=" " decimalPlace="000" name="0150001" dataType="Characters" style="width: 13px;LEFT: 70px;POSITION: absolute; TOP: 246px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0150001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                  </td>
                </tr>
                <tr name="MREBody" style="height:110px" class="dataBlockCell2" lineIndex="0003">
                  <out:attribute name="class">
                    <out:choose>
                      <out:when expr="even(this)">MRECell</out:when>
                      <out:otherwise>MRECell2</out:otherwise>
                    </out:choose>
                  </out:attribute>
                  <td nowrap="nowrap">
                    <input type="checkbox" checkval="Y" uncheckval="N" name="sflIndex" onclick="gotoMRE(this)">
                      <out:if test=".[Selected='Y']">
                        <out:attribute name="checked">checked</out:attribute>
                      </out:if>
                      <out:attribute name="value" />
                      <out:attribute name="scrs99FieldName">escape0151001</out:attribute>
                    </input>
                    <label class="fieldLabelFont" id="MreSerial">0</label>
                    <input type="text" withPopup="Y" fromSmgLength="002" onfocus="focusElement=this;setCurPos(this);" description="Work field for CCTTYPE" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="1" signed=" " decimalPlace="000" name="0000002" dataType="Characters" style="width: 26px;LEFT: 62px;POSITION: absolute; TOP: 273px; TEXT-ALIGN: left" width="16" maxlength="002">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0000002']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <img position="SCWCTTYPE C00000000002 00000010001OY  " id="0101" lineIndex="" mreRow="0001" mreCol="0001" beforeWidth="26" style="LEFT: 88px;POSITION: absolute; TOP: 263px; TEXT-ALIGN: left" src="images/redPop.gif" border="0" alt="Popup" align="top" status="" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" onclick="hideScreenLayer();displayPopupMessageLayer();popup(this);setPopupID('0101')" />
                    <input type="text" withPopup="N" fromSmgLength="018" onfocus="focusElement=this;setCurPos(this);" description="Fee description" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="6" signed=" " decimalPlace="000" name="0002018" dataType="Characters" style="width: 144px;LEFT: 102px;POSITION: absolute; TOP: 273px; TEXT-ALIGN: left" width="144" maxlength="018">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0002018']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Commission CCY" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="25" signed=" " decimalPlace="000" name="0020003" dataType="Characters" style="width: 39px;LEFT: 254px;POSITION: absolute; TOP: 273px; TEXT-ALIGN: left" width="24" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0020003']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" description="Commission AMT" title="Data type: Number" lineIndex="-1" mreRow="1" mreCol="31" signed="Y" decimalPlace="002" name="0023015" dataType="Number" style="width: 119px;LEFT: 302px;POSITION: absolute; TOP: 273px; TEXT-ALIGN: left" width="120" onkeypress="numBoxKeyPressHdlr(this)" onblur="numBoxBlurHdlr(this)" onfocus="focusElement=this;setCurPos(this);numBoxFocusHdlr(this)" numDigits="015" maxlength="17">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0023015']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Change indicator ( /*)" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="52" signed=" " decimalPlace="000" name="0038001" dataType="Characters" style="width: 13px;LEFT: 470px;POSITION: absolute; TOP: 273px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0038001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Add/Minus Indicator" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="56" signed=" " decimalPlace="000" name="0039001" dataType="Characters" style="width: 13px;LEFT: 502px;POSITION: absolute; TOP: 273px; TEXT-ALIGN: left" width="8" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0039001']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="002" onfocus="focusElement=this;setCurPos(this);" description="DR/CR Indicator" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="60" signed=" " decimalPlace="000" name="0040002" dataType="Characters" style="width: 26px;LEFT: 534px;POSITION: absolute; TOP: 273px; TEXT-ALIGN: left" width="16" maxlength="002">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0040002']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Actual Commission CCY" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="65" signed=" " decimalPlace="000" name="0042003" dataType="Characters" style="width: 39px;LEFT: 574px;POSITION: absolute; TOP: 273px; TEXT-ALIGN: left" width="24" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0042003']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="Actual Commission Amt" title="Data type: Number" lineIndex="-1" mreRow="1" mreCol="71" signed="Y" decimalPlace="002" name="0045015" dataType="Number" style="width: 119px;LEFT: 622px;POSITION: absolute; TOP: 273px; TEXT-ALIGN: left" width="120" readonly="readonly" maxlength="015">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0045015']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="Y" fromSmgLength="016" onfocus="focusElement=this;setCurPos(this);" description="GL Number" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="4" signed=" " decimalPlace="000" name="0060016" dataType="Characters" style="width: 128px;LEFT: 86px;POSITION: absolute; TOP: 301px; TEXT-ALIGN: left" width="128" maxlength="016">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0060016']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <img position="SCCCTGLNO C00600009016 00000020004OY  " id="0204" lineIndex="" mreRow="0002" mreCol="0004" beforeWidth="128" style="LEFT: 214px;POSITION: absolute; TOP: 291px; TEXT-ALIGN: left" src="images/redPop.gif" border="0" alt="Popup" align="top" status="" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" onclick="hideScreenLayer();displayPopupMessageLayer();popup(this);setPopupID('0204')" />
                    <input type="text" withPopup="N" fromSmgLength="010" onfocus="focusElement=this;setCurPos(this);" description="Commission RATE" title="Data type: Number" lineIndex="-1" mreRow="2" mreCol="23" signed="Y" decimalPlace="007" name="0076010" dataType="Number" style="width: 84px;LEFT: 238px;POSITION: absolute; TOP: 301px; TEXT-ALIGN: left" width="80" readonly="readonly" maxlength="010">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0076010']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="012" description="Exchange Rate" title="Data type: Number" lineIndex="-1" mreRow="2" mreCol="39" signed="Y" decimalPlace="007" name="0086012" dataType="Number" style="width: 98px;LEFT: 366px;POSITION: absolute; TOP: 301px; TEXT-ALIGN: left" width="96" onkeypress="numBoxKeyPressHdlr(this)" onblur="numBoxBlurHdlr(this)" onfocus="focusElement=this;setCurPos(this);numBoxFocusHdlr(this)" numDigits="012" maxlength="14">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0086012']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="FX Type" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="62" signed=" " decimalPlace="000" name="0098001" dataType="Characters" style="width: 13px;LEFT: 550px;POSITION: absolute; TOP: 301px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0098001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Multiply/Divide Indicator" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="70" signed=" " decimalPlace="000" name="0099001" dataType="Characters" style="width: 13px;LEFT: 614px;POSITION: absolute; TOP: 301px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0099001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <select isselect="true" name="0100001" mreRow="2" onfocus="focusElement=this;" description="WAMTI" lineIndex="" mreCol="74" style=";LEFT: 646px;POSITION: absolute; TOP: 301px; TEXT-ALIGN: left">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="SFLFld[@Data_Index='0100001']/@ErrorMsg">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                      <out:attribute name="svrvalue">
                        <out:value-of select="SFLFld[@Data_Index='0100001']/@Value" />
                      </out:attribute>
                      <option value="">
                      </option>
                      <option value="Y">Y</option>
                      <option value="N">N</option>
                    </select>
                    <input type="text" withPopup="N" fromSmgLength="011" onfocus="focusElement=this;setCurPos(this);" description="Next expiry date" title="Data type: Date" lineIndex="-1" mreRow="3" mreCol="4" signed=" " decimalPlace="000" name="0101011" dataType="Date" style="width: 77px;LEFT: 86px;POSITION: absolute; TOP: 329px; TEXT-ALIGN: left" width="88" readonly="readonly" maxlength="011">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0101011']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Commission party" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="21" signed=" " decimalPlace="000" name="0112001" dataType="Characters" style="width: 13px;LEFT: 222px;POSITION: absolute; TOP: 329px; TEXT-ALIGN: left" width="8" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0112001']">error</out:when>
                          <out:otherwise>optional</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Auto recalc flag" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="25" signed=" " decimalPlace="000" name="0113001" dataType="Characters" style="width: 13px;LEFT: 254px;POSITION: absolute; TOP: 329px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0113001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="GST def sequence no." title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="29" signed="N" decimalPlace="000" name="0114003" dataType="Number" style="width: 35px;LEFT: 286px;POSITION: absolute; TOP: 329px; TEXT-ALIGN: left" width="24" readonly="readonly" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0114003']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="GST amount" title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="33" signed="Y" decimalPlace="002" name="0117015" dataType="Number" style="width: 119px;LEFT: 318px;POSITION: absolute; TOP: 329px; TEXT-ALIGN: left" width="120" readonly="readonly" maxlength="015">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0117015']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Original charge currency" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="55" signed=" " decimalPlace="000" name="0132003" dataType="Characters" style="width: 39px;LEFT: 494px;POSITION: absolute; TOP: 329px; TEXT-ALIGN: left" width="24" readonly="readonly" maxlength="003">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0132003']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="Original charge amount" title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="61" signed="Y" decimalPlace="002" name="0135015" dataType="Number" style="width: 119px;LEFT: 542px;POSITION: absolute; TOP: 329px; TEXT-ALIGN: left" width="120" readonly="readonly" maxlength="015">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0135015']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                    <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="BLANK 1" title="Data type: Characters" lineIndex="-1" mreRow="4" mreCol="2" signed=" " decimalPlace="000" name="0150001" dataType="Characters" style="width: 13px;LEFT: 70px;POSITION: absolute; TOP: 357px; TEXT-ALIGN: left" width="8" readonly="readonly" maxlength="001">
                      <out:attribute name="class">
                        <out:choose>
                          <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0150001']">error</out:when>
                          <out:otherwise>readonly</out:otherwise>
                        </out:choose>
                      </out:attribute>
                    </input>
                  </td>
                </tr>
              </table>
            </div>
            <div align="center" class="MRENextPrevButtonLayer">
              <img alt="Previous Record Page" src="images/prevPageBtn.gif" width="23" height="23" onclick="hideScreenLayer();displayLoadingLayer();before_submit('94','094')" />
              <img src="images/pixel.gif" width="5" height="1" />
              <img alt="Next Record Page" src="images/nextPageBtn.gif" width="23" height="23" onclick="hideScreenLayer();displayLoadingLayer();before_submit('95','095')" />
            </div>
          </div>
        </form>
      </body>
    </html>
  </out:template>
  <out:template match="/MSG/Screen_Layout/ScrSFL/SFLLine/Temp">
    <tr name="MREBody" style="height:110px">
      <out:attribute name="class">
        <out:choose>
          <out:when expr="even(this)">MRECell</out:when>
          <out:otherwise>MRECell2</out:otherwise>
        </out:choose>
      </out:attribute>
      <td nowrap="nowrap">
        <input type="checkbox" checkval="Y" uncheckval="N" name="sflIndex" onclick="gotoMRE(this)">
          <out:if test=".[Selected='Y']">
            <out:attribute name="checked">checked</out:attribute>
          </out:if>
          <out:attribute name="value" />
          <out:attribute name="scrs99FieldName">escape0151001</out:attribute>
        </input>
        <label class="fieldLabelFont" id="MreSerial">0</label>
        <input type="text" withPopup="Y" fromSmgLength="002" onfocus="focusElement=this;setCurPos(this);" description="Work field for CCTTYPE" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="1" signed=" " decimalPlace="000" name="0000002" dataType="Characters" style="width: 26px" width="16" maxlength="002">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0000002']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <img position="SCWCTTYPE C00000000002 00000010001OY  " id="0101" lineIndex="" mreRow="0001" mreCol="0001" beforeWidth="26" style="" src="images/redPop.gif" border="0" alt="Popup" align="top" status="" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" onclick="hideScreenLayer();displayPopupMessageLayer();popup(this);setPopupID('0101')" />
        <input type="text" withPopup="N" fromSmgLength="018" onfocus="focusElement=this;setCurPos(this);" description="Fee description" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="6" signed=" " decimalPlace="000" name="0002018" dataType="Characters" style="width: 144px" width="144" maxlength="018">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0002018']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Commission CCY" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="25" signed=" " decimalPlace="000" name="0020003" dataType="Characters" style="width: 39px" width="24" maxlength="003">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0020003']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="015" description="Commission AMT" title="Data type: Number" lineIndex="-1" mreRow="1" mreCol="31" signed="Y" decimalPlace="002" name="0023015" dataType="Number" style="width: 119px" width="120" onkeypress="numBoxKeyPressHdlr(this)" onblur="numBoxBlurHdlr(this)" onfocus="focusElement=this;setCurPos(this);numBoxFocusHdlr(this)" numDigits="015" maxlength="17">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0023015']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Change indicator ( /*)" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="52" signed=" " decimalPlace="000" name="0038001" dataType="Characters" style="width: 13px" width="8" readonly="readonly" maxlength="001">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0038001']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Add/Minus Indicator" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="56" signed=" " decimalPlace="000" name="0039001" dataType="Characters" style="width: 13px" width="8" maxlength="001">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0039001']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="002" onfocus="focusElement=this;setCurPos(this);" description="DR/CR Indicator" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="60" signed=" " decimalPlace="000" name="0040002" dataType="Characters" style="width: 26px" width="16" maxlength="002">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0040002']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Actual Commission CCY" title="Data type: Characters" lineIndex="-1" mreRow="1" mreCol="65" signed=" " decimalPlace="000" name="0042003" dataType="Characters" style="width: 39px" width="24" maxlength="003">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0042003']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="Actual Commission Amt" title="Data type: Number" lineIndex="-1" mreRow="1" mreCol="71" signed="Y" decimalPlace="002" name="0045015" dataType="Number" style="width: 119px" width="120" readonly="readonly" maxlength="015">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0045015']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="Y" fromSmgLength="016" onfocus="focusElement=this;setCurPos(this);" description="GL Number" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="4" signed=" " decimalPlace="000" name="0060016" dataType="Characters" style="width: 128px" width="128" maxlength="016">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0060016']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <img position="SCCCTGLNO C00600009016 00000020004OY  " id="0204" lineIndex="" mreRow="0002" mreCol="0004" beforeWidth="128" style="" src="images/redPop.gif" border="0" alt="Popup" align="top" status="" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" onclick="hideScreenLayer();displayPopupMessageLayer();popup(this);setPopupID('0204')" />
        <input type="text" withPopup="N" fromSmgLength="010" onfocus="focusElement=this;setCurPos(this);" description="Commission RATE" title="Data type: Number" lineIndex="-1" mreRow="2" mreCol="23" signed="Y" decimalPlace="007" name="0076010" dataType="Number" style="width: 84px" width="80" readonly="readonly" maxlength="010">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0076010']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="012" description="Exchange Rate" title="Data type: Number" lineIndex="-1" mreRow="2" mreCol="39" signed="Y" decimalPlace="007" name="0086012" dataType="Number" style="width: 98px" width="96" onkeypress="numBoxKeyPressHdlr(this)" onblur="numBoxBlurHdlr(this)" onfocus="focusElement=this;setCurPos(this);numBoxFocusHdlr(this)" numDigits="012" maxlength="14">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0086012']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="FX Type" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="62" signed=" " decimalPlace="000" name="0098001" dataType="Characters" style="width: 13px" width="8" readonly="readonly" maxlength="001">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0098001']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Multiply/Divide Indicator" title="Data type: Characters" lineIndex="-1" mreRow="2" mreCol="70" signed=" " decimalPlace="000" name="0099001" dataType="Characters" style="width: 13px" width="8" readonly="readonly" maxlength="001">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0099001']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <select isselect="true" name="0100001" mreRow="2" onfocus="focusElement=this;" description="WAMTI" lineIndex="" mreCol="74" style="">
          <out:attribute name="class">
            <out:choose>
              <out:when test="SFLFld[@Data_Index='0100001']/@ErrorMsg">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
          <out:attribute name="svrvalue">
            <out:value-of select="SFLFld[@Data_Index='0100001']/@Value" />
          </out:attribute>
          <option value="">
          </option>
          <option value="Y">Y</option>
          <option value="N">N</option>
        </select>
        <input type="text" withPopup="N" fromSmgLength="011" onfocus="focusElement=this;setCurPos(this);" description="Next expiry date" title="Data type: Date" lineIndex="-1" mreRow="3" mreCol="4" signed=" " decimalPlace="000" name="0101011" dataType="Date" style="width: 77px" width="88" readonly="readonly" maxlength="011">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0101011']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Commission party" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="21" signed=" " decimalPlace="000" name="0112001" dataType="Characters" style="width: 13px" width="8" maxlength="001">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0112001']">error</out:when>
              <out:otherwise>optional</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="Auto recalc flag" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="25" signed=" " decimalPlace="000" name="0113001" dataType="Characters" style="width: 13px" width="8" readonly="readonly" maxlength="001">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0113001']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="GST def sequence no." title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="29" signed="N" decimalPlace="000" name="0114003" dataType="Number" style="width: 35px" width="24" readonly="readonly" maxlength="003">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0114003']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="GST amount" title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="33" signed="Y" decimalPlace="002" name="0117015" dataType="Number" style="width: 119px" width="120" readonly="readonly" maxlength="015">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0117015']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="003" onfocus="focusElement=this;setCurPos(this);" description="Original charge currency" title="Data type: Characters" lineIndex="-1" mreRow="3" mreCol="55" signed=" " decimalPlace="000" name="0132003" dataType="Characters" style="width: 39px" width="24" readonly="readonly" maxlength="003">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0132003']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="015" onfocus="focusElement=this;setCurPos(this);" description="Original charge amount" title="Data type: Number" lineIndex="-1" mreRow="3" mreCol="61" signed="Y" decimalPlace="002" name="0135015" dataType="Number" style="width: 119px" width="120" readonly="readonly" maxlength="015">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0135015']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="text" withPopup="N" fromSmgLength="001" onfocus="focusElement=this;setCurPos(this);" description="BLANK 1" title="Data type: Characters" lineIndex="-1" mreRow="4" mreCol="2" signed=" " decimalPlace="000" name="0150001" dataType="Characters" style="width: 13px" width="8" readonly="readonly" maxlength="001">
          <out:attribute name="class">
            <out:choose>
              <out:when test="/MSG/Screen_Layout/ScrSFL/SFLLine/SFLFld/@ErrorMsg[../@Data_Index='0150001']">error</out:when>
              <out:otherwise>readonly</out:otherwise>
            </out:choose>
          </out:attribute>
        </input>
        <input type="hidden">
          <out:attribute name="name">escape0151001<out:value-of select="@Line_Index" /></out:attribute>
          <out:attribute name="value">
            <out:value-of select="SFLFld[@Data_Index='0151001']/@Value" />
          </out:attribute>
        </input>
        <input type="hidden">
          <out:attribute name="name">escape0152003<out:value-of select="@Line_Index" /></out:attribute>
          <out:attribute name="value">
            <out:value-of select="SFLFld[@Data_Index='0152003']/@Value" />
          </out:attribute>
        </input>
        <input type="hidden">
          <out:attribute name="name">escape0155003<out:value-of select="@Line_Index" /></out:attribute>
          <out:attribute name="value">
            <out:value-of select="SFLFld[@Data_Index='0155003']/@Value" />
          </out:attribute>
        </input>
        <input type="hidden">
          <out:attribute name="name">escape0158072<out:value-of select="@Line_Index" /></out:attribute>
          <out:attribute name="value">
            <out:value-of select="SFLFld[@Data_Index='0158072']/@Value" />
          </out:attribute>
        </input>
      </td>
    </tr>
  </out:template>
  <out:template match="/MSG/Screen_Layout/ScrSFL/SFLLine">
    <input type="hidden">
      <out:attribute name="name">escape0000002<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0000002']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0000002']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0002018<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0002018']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0002018']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0020003<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0020003']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0020003']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0023015<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0023015']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0023015']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0038001<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0038001']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0038001']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0039001<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0039001']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0039001']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0040002<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0040002']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0040002']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0042003<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0042003']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0042003']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0045015<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0045015']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0045015']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0060016<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0060016']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0060016']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0076010<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0076010']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0076010']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0086012<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0086012']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0086012']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0098001<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0098001']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0098001']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0099001<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0099001']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0099001']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0100001<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0100001']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0100001']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0101011<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0101011']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0101011']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0112001<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0112001']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0112001']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0113001<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0113001']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0113001']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0114003<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0114003']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0114003']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0117015<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0117015']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0117015']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0132003<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0132003']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0132003']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0135015<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0135015']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0135015']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0150001<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0150001']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0150001']/@ErrorMsg">error</out:when>
          <out:otherwise>readOnly</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0151001<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0151001']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0151001']/@ErrorMsg">error</out:when>
          <out:otherwise>optional</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0152003<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0152003']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0152003']/@ErrorMsg">error</out:when>
          <out:otherwise>hidden</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0155003<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0155003']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0155003']/@ErrorMsg">error</out:when>
          <out:otherwise>hidden</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
    <input type="hidden">
      <out:attribute name="name">escape0158072<out:value-of select="@Line_Index" /></out:attribute>
      <out:attribute name="value">
        <out:value-of select="SFLFld[@Data_Index='0158072']/@Value" />
      </out:attribute>
      <out:attribute name="class">
        <out:choose>
          <out:when test="SFLFld[@Data_Index='0158072']/@ErrorMsg">error</out:when>
          <out:otherwise>hidden</out:otherwise>
        </out:choose>
      </out:attribute>
    </input>
  </out:template>
  <out:template match="/MSG/Screen_Flow/Screen">
    <out:choose>
      <out:when test="@IsActive">
        <td class="tabsHighlight" nowrap="nowrap">
          <out:attribute name="title">
            <out:value-of select="@Desc" />
          </out:attribute>
          <out:attribute name="screenID">
            <out:value-of select="@ID" />
          </out:attribute>
          <out:eval>formatScreenLabel(this)</out:eval>
        </td>
      </out:when>
      <out:otherwise>
        <td onMouseOver="mouseOverTab(event)" onMouseOut="mouseOutTab(this)" class="tabs" nowrap="nowrap" onClick="clickTab(this);before_submit('93','093')">
          <out:attribute name="title">
            <out:value-of select="@Desc" />
          </out:attribute>
          <out:attribute name="screenID">
            <out:value-of select="@ID" />
          </out:attribute>
          <out:eval>formatScreenLabel(this)</out:eval>
        </td>
      </out:otherwise>
    </out:choose>
  </out:template>
</out:stylesheet>