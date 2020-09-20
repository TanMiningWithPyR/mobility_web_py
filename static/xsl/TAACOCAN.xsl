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
      <script language="JavaScript" for="document" event="oncontextmenu">
				event.returnValue=false
			</script>
      <style type="text/css">
        <out:comment>
					img{cursor: hand}
				</out:comment>
      </style>
      <head>
        <title>ACCOUNT OFFICER CREATION ScreenKY</title>
        <meta http-equiv="Content-Type" content="text/html; charset=Big5" />
        <link rel="stylesheet" href="TAMStyle.css" type="text/css" />
      </head>
      <script type="text/javascript" src="conf/public/INFO.jc">
      </script>
      <script type="text/javascript" src="conf/TAACOCAN.jc">
      </script>
      <script type="text/javascript" src="js/jquery-1.10.2.js">
      </script>
      <script type="text/javascript" src="js/goodies.js">
      </script>
      <script type="text/javascript" src="js/mre.js">
      </script>
      <script type="text/javascript" src="js/popcalendar.js">
      </script>
      <script type="text/javascript" src="js/popup.js">
      </script>
      <script type="text/javascript" src="js/soa.js">
      </script>
      <body class="soabgcolor" text="#000000" onload="setDatablockListDisplayStyle();show_status();;focusOnObj()" onHelp="return false" ondragstart="return  false">
        <form name="form1" method="POST" action="CommAction.jsp">
          <input type="hidden" name="status_info">
            <out:attribute name="value">
              <out:value-of select="/MSG/@status" />
            </out:attribute>
          </input>
          <input type="hidden" id="FOCUSED" name="FOCUSED" value="" />
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
          <input type="hidden" name="SendDate">
            <out:attribute name="value">
              <out:value-of select="/MSG/@Send_Date" />
            </out:attribute>
          </input>
          <input type="hidden" name="SendTime">
            <out:attribute name="value">
              <out:value-of select="/MSG/@Send_Time" />
            </out:attribute>
          </input>
          <input type="hidden" name="UserID">
            <out:attribute name="value">
              <out:value-of select="/MSG/@UserID" />
            </out:attribute>
          </input>
          <input type="hidden" name="FuncID" clicked="" popupID="" status="" onclick="getFocus()" value="TAACOCAN" />
          <input type="hidden" name="Export_Info_Version" value="WX020003" />
          <input type="hidden" name="Export_Info_TXName" value="TAACOCAN" />
          <input type="hidden" name="TX_Header_ObjName" value="TAACOCAN" />
          <input type="hidden" name="TX_Header_ShortDesc" value="ACCOUNT OFFICER CREATION" />
          <input type="hidden" name="ScrID" value="KY" />
          <input type="hidden" name="intOSum" value="200" />
          <input type="hidden" name="strKeyCode" value="" />
          <input type="hidden" name="strFuncIndex" value="" />
          <input type="hidden" name="val" value="" />
          <input type="hidden" name="lockMenu" value="Y" />
          <input type="hidden" name="FlowControlKey" value="MKY" />
          <input type="hidden" name="curFlowName" value="TAACOCAN" />
          <input type="hidden" name="HasDefault">
            <out:attribute name="value">
              <out:value-of select="/MSG/@Default" />
            </out:attribute>
          </input>
          <input type="hidden" name="FirstIn">
            <out:attribute name="value">
              <out:value-of select="/MSG/@FirstIn" />
            </out:attribute>
          </input>
          <input type="hidden" name="ClickGo">
            <out:attribute name="value">
              <out:value-of select="/MSG/@ClickGo" />
            </out:attribute>
          </input>
          <input type="hidden" name="taskStepID">
            <out:attribute name="value">
              <out:value-of select="/MSG/@TaskStepID" />
            </out:attribute>
          </input>
          <div id="sysvarArea">
            <input type="hidden" name="SysUSERID">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='USERID']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysUSERNAM">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='USERNAM']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysPRODATE">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='PRODATE']" />
              </out:attribute>
              <out:attribute name="srvvalue">
                <out:value-of select="/MSG/SYSTEM/Variable/@srvvalue[../@name='PRODATE']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysPROTIME">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='PROTIME']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysFUNID">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='FUNID']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysFUNDESC" value="ACCOUNT OFFICER CREATION" />
            <input type="hidden" name="SysBRCHCOD">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='BRCHCOD']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysBRCHNAM">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='BRCHNAM']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysLCYCODE">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='LCYCODE']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysWORKSTA">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='WORKSTA']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysBANKID">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='BANKID']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysNXTDATE">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='NXTDATE']" />
              </out:attribute>
              <out:attribute name="srvvalue">
                <out:value-of select="/MSG/SYSTEM/Variable/@srvvalue[../@name='NXTDATE']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysPRVDATE">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='PRVDATE']" />
              </out:attribute>
              <out:attribute name="srvvalue">
                <out:value-of select="/MSG/SYSTEM/Variable/@srvvalue[../@name='PRVDATE']" />
              </out:attribute>
            </input>
            <input type="hidden" name="SysBANKNM">
              <out:attribute name="value">
                <out:value-of select="/MSG/SYSTEM/Variable/@value[../@name='BANKNM']" />
              </out:attribute>
            </input>
          </div>
          <div id="LoadingLayer" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" style="position:absolute; z-index:10; background-image: url(images/loading.gif); layer-background-image: url(images/loading.gif); border: 1px none #000000; visibility: hidden; width: 256px; height: 256px; left: 30%; top: 30%" class="loadingLayer">
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
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="MessageTable" bgcolor="#e5e5e5">
              <tr>
                <td colspan="2" align="left" class="soamsghbg">  <span class="headerLabelFont">System Message</span></td>
              </tr>
              <tr>
                <td width="100">
                  <img id="soaImgMsg" src="images/soaMessage.gif" />
                </td>
                <td>
                  <span id="loading">Loading Screen,please wait......</span>
                  <span class="fieldLabelFont" id="soaMsg" style="display:none">
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
          <div id="ScreenLayer" class="screenLayer" style="display:none">
            <div id="dHTMLToolTip" style="position: absolute; visibility: hidden; width:10; height: 10; z-index: 1000; left: 0; top: 0">
              <img src="images/pixel.gif" />
            </div>
            <div>
            </div>
            <input type="hidden" name="jumpToScreen" value="" />
            <table width="100%" border="0" cellpadding="1" cellspacing="1">
              <tr bgcolor="#0099FF" align="center">
                <td class="headerLabelCell">
                  <font class="screenTitleFont">ACCOUNT OFFICER CREATION</font>
                </td>
              </tr>
            </table>
            <table onselectstart="event.returnValue=false;" class="soabgcolor" ondragstart="event.returnValue=false;" width="100%" border="0" cellpadding="1" cellspacing="1" name="buttonsListTable">
              <tr align="left">
                <td>
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('30','30')" id="30" alt="OK" border="0" src="images/okBtn.gif" />
                  <img src="images/pixel.gif" width="2" />
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('03','03')" alt="Exit" border="0" src="images/exitBtn.gif" id="03" />
                  <img src="images/pixel.gif" width="2" />
                  <img onclick="hideScreenLayer();displayLoadingLayer();before_submit('06','06')" alt="Default" border="0" src="images/defaultBtn.gif" id="06" />
                  <img src="images/pixel.gif" width="2" />
                </td>
              </tr>
            </table>
            <div id="BlockHeaderListLayer">
              <table width="100%" border="0" cellpadding="1" cellspacing="1" name="publicinfoTable">
              </table>
            </div>
            <!--BLOCKLISTLAYER BEGINS HERE-->
            <!--BLOCKLISTLAYER ENDS HERE-->
            <img src="images/pixel.gif" />
            <input type="hidden" name="ReturnPage" value="" />
            <input type="hidden" name="ServiceFlow" value="TAACOCAN-TAACOCAN_M01" />
            <input type="hidden" name="ServiceFlowDesc" value="ACCOUNT OFFICER CREATION~!~ACCOUNT OFFICER CREATION" />
            <input type="hidden" name="screenFlow" value="TAACOCANKY-TAACOCAN01-TAACOCANCF" />
            <input type="hidden" name="TX_Screen_ID" value="TAACOCANKY,TAACOCAN01,TAACOCANCF" />
            <div id="BlockListLayer_TAACOCAN_KY" style="width: 100%;overflow-x:scroll">
              <table id="BlockListTable_TAACOCAN_KY" name="BlockListTable" width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                    <table SCID="TAACOCAN_KY" border="0" bgcolor="#CCCCCC" class="dataBlockTable">
                      <tr bgcolor="#999999">
                        <td colspan="2" align="right" class="dataBlockKeyCell">Information KY</td>
                      </tr>
                      <tr SC="TAACOCANKY" style="height:26px">
                        <td width="100%" class="dataBlockCell1" align="right">
                          <font class="fieldLabelFont" name="TAACOCANKY_00040002" row="0004" col="0002" style="break-word;LEFT: 1px;POSITION: absolute; TOP: 25px;">ACCOUNT OFFICER</font>
                          <font class="fieldLabelFont" name="TAACOCANKY_00040002" row="0004" col="0002" style="break-word;left:138;POSITION: absolute; TOP: 25px">:</font>
                          <input type="text" SC="TAACOCANKY" withPopup="N" fromSmgLength="010" onfocus="focusElement=this;" title="Data type: Characters" row="0004" col="0026" signed=" " decimalPlace="000" name="TAACOCAN_ACCOFFE" dataType="Characters" style="width: 80px;LEFT: 146px;POSITION: absolute; TOP: 21px;" maxlength="010">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAN_ACCOFFE']">error</out:when>
                                <out:otherwise>mandatory</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAN_ACCOFFE']" />
                            </out:attribute>
                          </input>
                        </td>
                      </tr>
                      <tr style="height:26px" SC="TAACOCANKY">
                        <td width="100%" class="dataBlockCell2" align="right">
                          <div id="divGo" style="LEFT:3px;POSITION: absolute;TOP: 49px; TEXT-ALIGN: left;" align="right" />
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </div>
            <div id="BlockListLayer_TAACOCAN_01" style="width: 100%;overflow-x:scroll;display:none;">
              <table id="BlockListTable_TAACOCAN_01" name="BlockListTable" width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                    <table SCID="TAACOCAN_01" border="0" bgcolor="#CCCCCC" class="dataBlockTable">
                      <tr bgcolor="#999999">
                        <td colspan="2" align="right" class="dataBlockKeyCell">Information 01</td>
                      </tr>
                      <tr SC="TAACOCAN01" style="height:26px">
                        <td width="100%" class="dataBlockCell1" align="right">
                          <font class="fieldLabelFont" name="TAACOCAN01_00040002" row="0004" col="0002" style="LEFT:1px;POSITION: absolute;TOP: 25px; TEXT-ALIGN: left;;">ACCOUNT OFFICER CODE</font>
                          <font class="fieldLabelFont" name="TAACOCAN01_00040002" row="0004" col="0002" style="left:177;POSITION: absolute;TOP: 25px; TEXT-ALIGN: left">:</font>
                          <input type="text" SC="TAACOCAN01" withPopup="N" fromSmgLength="010" onfocus="focusElement=this;" title="Data type: Characters" row="0004" col="0025" signed=" " decimalPlace="000" name="TAACOCAN_ACCOFFE" dataType="Characters" style="width: 80px;LEFT: 185px;POSITION: absolute;TOP: 21px;;;" readonly="readonly" maxlength="010">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAN_ACCOFFE']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAN_ACCOFFE']" />
                            </out:attribute>
                          </input>
                        </td>
                      </tr>
                      <tr SC="TAACOCAN01" style="height:26px">
                        <td width="100%" class="dataBlockCell2" align="right">
                          <font class="fieldLabelFont" name="TAACOCAN01_00060002" row="0006" col="0002" style="LEFT:1px;POSITION: absolute;TOP: 53px; TEXT-ALIGN: left;;">NAME</font>
                          <font class="fieldLabelFont" name="TAACOCAN01_00060002" row="0006" col="0002" style="left:177;POSITION: absolute;TOP: 53px; TEXT-ALIGN: left">:</font>
                          <input type="text" SC="TAACOCAN01" withPopup="N" fromSmgLength="035" onfocus="focusElement=this;" title="Data type: Characters" row="0006" col="0025" signed=" " decimalPlace="000" name="TAACOCAN_DESCRIP" dataType="Characters" style="width: 280px;LEFT: 185px;POSITION: absolute;TOP: 49px;;;" maxlength="035">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAN_DESCRIP']">error</out:when>
                                <out:otherwise>mandatory</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAN_DESCRIP']" />
                            </out:attribute>
                          </input>
                        </td>
                      </tr>
                      <tr SC="TAACOCAN01" style="height:26px">
                        <td width="100%" class="dataBlockCell1" align="right">
                          <font class="fieldLabelFont" name="TAACOCAN01_00080002" row="0008" col="0002" style="LEFT:1px;POSITION: absolute;TOP: 81px; TEXT-ALIGN: left;;">TEAM</font>
                          <font class="fieldLabelFont" name="TAACOCAN01_00080002" row="0008" col="0002" style="left:177;POSITION: absolute;TOP: 81px; TEXT-ALIGN: left">:</font>
                          <input type="text" SC="TAACOCAN01" withPopup="Y" fromSmgLength="007" onfocus="focusElement=this;" title="Data type: Characters" row="0008" col="0025" signed=" " decimalPlace="000" name="TAACOCAN_TEAM" dataType="Characters" style="width: 56px;LEFT: 185px;POSITION: absolute;TOP: 77px;;;" maxlength="007">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAN_TEAM']">error</out:when>
                                <out:otherwise>mandatory</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAN_TEAM']" />
                            </out:attribute>
                          </input>
                          <img id="TAACOCAN01_0045007" SC="TAACOCAN01" fieldName="TAACOCAN_TEAM" src="images/redPop.gif" beforeWidth="56" border="0" alt="Popup" align="top" status="" onselectstart="event.returnValue=false;" ondragstart="event.returnValue=false;" onclick="OpenPopup('TAACOCAN_01_TEAM',this);" style="LEFT: 241px;POSITION: absolute;TOP: 67px; TEXT-ALIGN: left;;" />
                        </td>
                      </tr>
                      <tr SC="TAACOCAN01" style="height:26px">
                        <td width="100%" class="dataBlockCell2" align="right">
                          <font class="fieldLabelFont" name="TAACOCAN01_00100002" row="0010" col="0002" style="LEFT:1px;POSITION: absolute;TOP: 109px; TEXT-ALIGN: left;;">EMAIL ID</font>
                          <font class="fieldLabelFont" name="TAACOCAN01_00100002" row="0010" col="0002" style="left:177;POSITION: absolute;TOP: 109px; TEXT-ALIGN: left">:</font>
                          <input type="text" SC="TAACOCAN01" withPopup="N" fromSmgLength="030" onfocus="focusElement=this;" title="Data type: Characters" row="0010" col="0025" signed=" " decimalPlace="000" name="TAACOCAN_EMAILID" dataType="Characters" style="width: 240px;LEFT: 185px;POSITION: absolute;TOP: 105px;;;" maxlength="030">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAN_EMAILID']">error</out:when>
                                <out:otherwise>optional</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAN_EMAILID']" />
                            </out:attribute>
                          </input>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </div>
            <div id="BlockListLayer_TAACOCAN_CF" style="width: 100%;overflow-x:scroll;display:none;">
              <table id="BlockListTable_TAACOCAN_CF" name="BlockListTable" width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                    <table SCID="TAACOCAN_CF" border="0" bgcolor="#CCCCCC" class="dataBlockTable">
                      <tr bgcolor="#999999">
                        <td colspan="2" align="right" class="dataBlockKeyCell">Information CF</td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </div>
          </div>
        </form>
      </body>
    </html>
  </out:template>
</out:stylesheet>