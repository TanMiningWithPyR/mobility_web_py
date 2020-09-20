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
        <title>ACCOUNT OFFICER CREATION APPR. ScreenSK</title>
        <meta http-equiv="Content-Type" content="text/html; charset=Big5" />
        <link rel="stylesheet" href="TAMStyle.css" type="text/css" />
      </head>
      <script type="text/javascript" src="conf/public/INFO.jc">
      </script>
      <script type="text/javascript" src="conf/TAACOCAA.jc">
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
          <input type="hidden" name="FuncID" clicked="" popupID="" status="" onclick="getFocus()" value="TAACOCAA" />
          <input type="hidden" name="Export_Info_Version" value="WX020003" />
          <input type="hidden" name="Export_Info_TXName" value="TAACOCAA" />
          <input type="hidden" name="TX_Header_ObjName" value="TAACOCAA" />
          <input type="hidden" name="TX_Header_ShortDesc" value="ACCOUNT OFFICER CREATION APPR." />
          <input type="hidden" name="ScrID" value="SK" />
          <input type="hidden" name="intOSum" value="200" />
          <input type="hidden" name="strKeyCode" value="" />
          <input type="hidden" name="strFuncIndex" value="" />
          <input type="hidden" name="val" value="" />
          <input type="hidden" name="lockMenu" value="Y" />
          <input type="hidden" name="FlowControlKey" value="M01" />
          <input type="hidden" name="curFlowName" value="TAACOCAA" />
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
            <input type="hidden" name="SysFUNDESC" value="ACCOUNT OFFICER CREATION APPR." />
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
                  <font class="screenTitleFont">ACCOUNT OFFICER CREATION APPR.</font>
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
            <input type="hidden" name="ServiceFlow" value="TAACOCAA" />
            <input name="TAACOCAA_REFNO" type="hidden">
              <out:attribute name="value">
                <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAA_REFNO']" />
              </out:attribute>
            </input>
            <input type="hidden" name="ServiceFlowDesc" value="ACCOUNT OFFICER CREATION APPR." />
            <input type="hidden" name="screenFlow" value="TAACOCAASK-TAACOCAASC-TAACOCAA01-TAACOCAACF" />
            <input type="hidden" name="TX_Screen_ID" value="TAACOCAASK,TAACOCAASC,TAACOCAA01,TAACOCAACF" />
            <div id="BlockListLayer_TAACOCAA_SK" style="width: 100%;overflow-x:scroll">
              <table id="BlockListTable_TAACOCAA_SK" name="BlockListTable" width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                    <table SCID="TAACOCAA_SK" border="0" bgcolor="#CCCCCC" class="dataBlockTable">
                      <tr bgcolor="#999999">
                        <td colspan="2" align="right" class="dataBlockKeyCell">Information SK</td>
                      </tr>
                      <tr SC="TAACOCAASK" style="height:26px">
                        <td width="100%" class="dataBlockCell1" align="right">
                          <font class="fieldLabelFont" name="TAACOCAASK_00040002" row="0004" col="0002" style="break-word;LEFT: 1px;POSITION: absolute; TOP: 25px;">FROM ACCOUNT OFFICER</font>
                          <font class="fieldLabelFont" name="TAACOCAASK_00040002" row="0004" col="0002" style="break-word;left:162;POSITION: absolute; TOP: 25px">:</font>
                          <input type="text" SC="TAACOCAASK" withPopup="N" fromSmgLength="010" onfocus="focusElement=this;" title="Data type: Characters" row="0004" col="0031" signed=" " decimalPlace="000" name="TAACOCAA_WKACC" dataType="Characters" style="width: 80px;LEFT: 170px;POSITION: absolute; TOP: 22px;" maxlength="010">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAA_WKACC']">error</out:when>
                                <out:otherwise>optional</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAA_WKACC']" />
                            </out:attribute>
                          </input>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </div>
            <div id="BlockListLayer_TAACOCAA_01" style="width: 100%;overflow-x:scroll">
              <table id="BlockListTable_TAACOCAA_01" name="BlockListTable" width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                    <table SCID="TAACOCAA_01" border="0" bgcolor="#CCCCCC" class="dataBlockTable">
                      <tr bgcolor="#999999">
                        <td colspan="2" align="right" class="dataBlockKeyCell">Information 01</td>
                      </tr>
                      <tr SC="TAACOCAA01" style="height:26px">
                        <td width="100%" class="dataBlockCell1" align="right">
                          <font class="fieldLabelFont" name="TAACOCAA01_00040002" row="0004" col="0002" style="break-word;LEFT: 1px;POSITION: absolute; TOP: 25px;">ACCOUNT OFFICER CODE</font>
                          <font class="fieldLabelFont" name="TAACOCAA01_00040002" row="0004" col="0002" style="break-word;left:161;POSITION: absolute; TOP: 25px">:</font>
                          <input type="text" SC="TAACOCAA01" withPopup="N" fromSmgLength="010" onfocus="focusElement=this;" title="Data type: Characters" row="0004" col="0025" signed=" " decimalPlace="000" name="TAACOCAA_ACCOFFE" dataType="Characters" style="width: 80px;LEFT: 169px;POSITION: absolute; TOP: 21px;" readonly="readonly" maxlength="010">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAA_ACCOFFE']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAA_ACCOFFE']" />
                            </out:attribute>
                          </input>
                        </td>
                      </tr>
                      <tr SC="TAACOCAA01" style="height:26px">
                        <td width="100%" class="dataBlockCell2" align="right">
                          <font class="fieldLabelFont" name="TAACOCAA01_00060002" row="0006" col="0002" style="break-word;LEFT: 1px;POSITION: absolute; TOP: 53px;">NAME</font>
                          <font class="fieldLabelFont" name="TAACOCAA01_00060002" row="0006" col="0002" style="break-word;left:161;POSITION: absolute; TOP: 53px">:</font>
                          <input type="text" SC="TAACOCAA01" withPopup="N" fromSmgLength="035" onfocus="focusElement=this;" title="Data type: Characters" row="0006" col="0025" signed=" " decimalPlace="000" name="TAACOCAA_DESCRIP" dataType="Characters" style="width: 280px;LEFT: 169px;POSITION: absolute; TOP: 49px;" readonly="readonly" maxlength="035">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAA_DESCRIP']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAA_DESCRIP']" />
                            </out:attribute>
                          </input>
                        </td>
                      </tr>
                      <tr SC="TAACOCAA01" style="height:26px">
                        <td width="100%" class="dataBlockCell1" align="right">
                          <font class="fieldLabelFont" name="TAACOCAA01_00080002" row="0008" col="0002" style="break-word;LEFT: 1px;POSITION: absolute; TOP: 81px;">TEAM</font>
                          <font class="fieldLabelFont" name="TAACOCAA01_00080002" row="0008" col="0002" style="break-word;left:161;POSITION: absolute; TOP: 81px">:</font>
                          <input type="text" SC="TAACOCAA01" withPopup="N" fromSmgLength="007" onfocus="focusElement=this;" title="Data type: Characters" row="0008" col="0025" signed=" " decimalPlace="000" name="TAACOCAA_TEAM" dataType="Characters" style="width: 56px;LEFT: 169px;POSITION: absolute; TOP: 77px;" readonly="readonly" maxlength="007">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAA_TEAM']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAA_TEAM']" />
                            </out:attribute>
                          </input>
                        </td>
                      </tr>
                      <tr SC="TAACOCAA01" style="height:26px">
                        <td width="100%" class="dataBlockCell2" align="right">
                          <font class="fieldLabelFont" name="TAACOCAA01_00100002" row="0010" col="0002" style="break-word;LEFT: 1px;POSITION: absolute; TOP: 109px;">EMAIL ID</font>
                          <font class="fieldLabelFont" name="TAACOCAA01_00100002" row="0010" col="0002" style="break-word;left:161;POSITION: absolute; TOP: 109px">:</font>
                          <input type="text" SC="TAACOCAA01" withPopup="N" fromSmgLength="030" onfocus="focusElement=this;" title="Data type: Characters" row="0010" col="0025" signed=" " decimalPlace="000" name="TAACOCAA_EMAILID" dataType="Characters" style="width: 240px;LEFT: 169px;POSITION: absolute; TOP: 105px;" readonly="readonly" maxlength="030">
                            <out:attribute name="class">
                              <out:choose>
                                <out:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='TAACOCAA_EMAILID']">error</out:when>
                                <out:otherwise>readonly</out:otherwise>
                              </out:choose>
                            </out:attribute>
                            <out:attribute name="value">
                              <out:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='TAACOCAA_EMAILID']" />
                            </out:attribute>
                          </input>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </div>
            <div id="BlockListLayer_TAACOCAA_CF" style="width: 100%;overflow-x:scroll;display:none;">
              <table id="BlockListTable_TAACOCAA_CF" name="BlockListTable" width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                    <table SCID="TAACOCAA_CF" border="0" bgcolor="#CCCCCC" class="dataBlockTable">
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