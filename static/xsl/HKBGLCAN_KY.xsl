<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<form name="form1" method="POST" id="form1">
  <div class="container" id="alert_info">
    <xsl:attribute name="style">
    <xsl:choose>
      <xsl:when test="/MSG/Message">display:block</xsl:when>
      <xsl:otherwise>display:none</xsl:otherwise>
    </xsl:choose>
    </xsl:attribute>
    <xsl:for-each select="/MSG/Message">   
    <div class="alert alert-danger" role="alert">
      <xsl:value-of select="."/>
    </div>
    </xsl:for-each>
  </div>

  <div id="hidden_parameter">
    <input type="hidden" name="status_info">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/@status" />
      </xsl:attribute>
    </input>
    <input type="hidden" id="FOCUSED" name="FOCUSED" value="" />
    <input type="hidden" name="ContentEditable">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/ContentEditable" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="FocusOnObj">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/FocusID" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="PopupID" value="" />
    <input type="hidden" name="DateFormat">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/@DateFormat" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="SendDate">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/@Send_Date" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="SendTime">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/@Send_Time" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="UserID">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/@UserID" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="FuncID" clicked="" popupID="" status="" onclick="getFocus()" value="HKBGLCAN" />
    <input type="hidden" name="Export_Info_Version" value="WX020003" />
    <input type="hidden" name="Export_Info_TXName" value="HKBGLCAN" />
    <input type="hidden" name="TX_Header_ObjName" value="HKBGLCAN" />
    <input type="hidden" name="TX_Header_ShortDesc" value="MISCELLANEOUS GL CREATION" />
    <input type="hidden" name="ScrID" value="KY" />
    <input type="hidden" name="intOSum" value="200" />
    <input type="hidden" name="strKeyCode" value="" />
    <input type="hidden" name="strFuncIndex" value="" />
    <input type="hidden" name="val" value="" />
    <input type="hidden" name="lockMenu" value="Y" />
    <input type="hidden" name="HasDefault">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/@Default" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="FirstIn">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/@FirstIn" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="ClickGo">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/@ClickGo" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="taskStepID">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/@TaskStepID" />
      </xsl:attribute>
    </input>
    <div id="sysvarArea">
      <input type="hidden" name="SysUSERID">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='USERID']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysUSERNAM">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='USERNAM']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysPRODATE">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='PRODATE']" />
        </xsl:attribute>
        <xsl:attribute name="srvvalue">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@srvvalue[../@name='PRODATE']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysPROTIME">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='PROTIME']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysFUNCID">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='FUNCID']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysFUNDESC" value="ACCOUNT OFFICER CREATION" />
      <input type="hidden" name="SysBRCHCOD">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='BRCHCOD']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysBRCHNAM">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='BRCHNAM']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysLCYCODE">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='LCYCODE']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysWORKSTA">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='WORKSTA']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysBANKID">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='BANKID']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysNXTDATE">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='NXTDATE']" />
        </xsl:attribute>
        <xsl:attribute name="srvvalue">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@srvvalue[../@name='NXTDATE']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysPRVDATE">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='PRVDATE']" />
        </xsl:attribute>
        <xsl:attribute name="srvvalue">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@srvvalue[../@name='PRVDATE']" />
        </xsl:attribute>
      </input>
      <input type="hidden" name="SysBANKNM">
        <xsl:attribute name="value">
          <xsl:value-of select="/MSG/SYSTEM/Variable/@value[../@name='BANKNM']" />
        </xsl:attribute>
      </input>
        </div>
  </div>

  <div class="container" id="system_info">
    <div class="row">
      <div class="col-xs-12 col-sm-6 col-md-2 bg-light text-dark" id="sys_info_01" name="Function ID">
      Function ID
       : 
      <xsl:value-of select="/MSG/@FuncID"/>
      </div>

      <div class="col-xs-12 col-sm-6 col-md-2 bg-light text-dark" id="sys_info_02" name="TX ID">
      TX ID
       : 
      <xsl:value-of select="/MSG/Export_Info/@TXName"/>
      </div>

      <div class="col-xs-12 col-sm-6 col-md-2 bg-light text-dark" id="sys_info_03" name="Screen ID">
      Screen ID
       : 
      <xsl:value-of select="/MSG/@ScrID"/>
      </div>

      <div class="col-xs-12 col-sm-6 col-md-2 bg-light text-dark" id="sys_info_04" name="User ID">
      User ID
       : 
      <xsl:value-of select="/MSG/@UserID"/>
      </div>

      <div class="col-xs-12 col-sm-6 col-md-2 bg-light text-dark" id="sys_info_05" name="Date">
      Date
       : 
      <xsl:value-of select="/MSG/@Send_Date"/>
      </div>

      <div class="col-xs-12 col-sm-6 col-md-2 bg-light text-dark" id="sys_info_06" name="Time">
      Time
       : 
      <xsl:value-of select="/MSG/@Send_Time"/>
      </div>  
    </div>
  </div> 

  <div class="divider">
    <hr style="filter: alpha(opacity=100,finishopacity=0,style=2)" width="94%" color="#6f5499" size="10"/>
  </div> 

  <div class="container" id="input_form">
    <button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#HKBGLCAN_KY">KEY INFO</button>
    <!--BLOCKLISTLAYER BEGINS HERE-->
    <p>
      <br/>
    </p>
    <div class="collapse show" id="HKBGLCAN_KY">

      <div class="form-group row" id="fg001">
        <label for="fg001ig001" class="col-sm-3 col-form-label">REFERENCE NUMBER</label>
        <div class="col-sm-9" id="fg001ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_REFNO" maxlength="013">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_REFNO']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control is-valid</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_REFNO']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg002">
        <label for="fg002ig001" class="col-sm-3 col-form-label">ALPHA ID</label>
        <div class="col-sm-9" id="fg002ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_WCUSTCD" maxlength="013">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_WCUSTCD']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_WCUSTCD']" />
                </xsl:attribute>
            </input>
            <div class="input-group-append">
              <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_WCUSTCD','0618');">P</button>
            </div>
          </div>
        </div>

        <label for="fg002ig002" class="col-sm-3 col-form-label">NAME</label>
        <div class="col-sm-9" id="fg002ig002">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CUSTNAM" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CUSTNAM']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CUSTNAM']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg003">
        <label for="fg003ig001" class="col-sm-3 col-form-label">ADDRESS</label>
        <div class="col-sm-9" id="fg003ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CUSTAD1" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CUSTAD1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CUSTAD1']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg004">
        <label for="fg004ig001" class="col-sm-3 col-form-label">BRANCH</label>
        <div class="col-sm-9" id="fg004ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_BRANCH" maxlength="013">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_BRANCH']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control is-valid</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_BRANCH']" />
                </xsl:attribute>
            </input>
            <div class="input-group-append">
              <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_BRANCH','0818');">P</button>
            </div>
          </div>
        </div>

        <div class="col-sm-9" id="fg004ig002">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CUSTAD2" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CUSTAD2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CUSTAD2']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg005">
        <div class="col-sm-9" id="fg005ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CUSTAD3" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CUSTAD3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CUSTAD3']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>      

    </div>
    <!--BLOCKLISTLAYER ENDS HERE-->
  </div>
</form>

<!-- Modal for popup -->
<div class="modal fade" id="popupModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Popup</h5>
      </div>
      <div class="modal-body" id="popupId"/>
      <div class="modal-footer" style="margin:0px auto">
        <button type="button" class="btn btn-primary" onclick="content_popup.MoreClick()">More</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="content_popup.Cancel()">Cancel</button>
      </div>
    </div>
  </div>
</div>

</xsl:template>
</xsl:stylesheet>



