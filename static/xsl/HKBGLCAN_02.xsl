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
    <input type="hidden" clicked="" popupID="" status="" name="FuncID" onclick="getFocus()" value="HKBGLCAN" />
    <input type="hidden" name="Export_Info_Version" value="WX020003" />
    <input type="hidden" name="Export_Info_TXName" value="HKBGLCAN" />
    <input type="hidden" name="TX_Header_ObjName" value="HKBGLCAN" />
    <input type="hidden" name="TX_Header_ShortDesc" value="MISCELLANEOUS GL CREATION" />
    <input type="hidden" name="ScrID" value="02" />
    <input type="hidden" name="intOSum" value="200" />
    <input type="hidden" name="strKeyCode" value="" />
    <input type="hidden" name="strFuncIndex" value="" />
    <input type="hidden" name="val" value="" />
    <input type="hidden" name="lockMenu" value="Y" />
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
    <button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#HKBGLCAN_02">DETAIL 02</button>
    <!--BLOCKLISTLAYER BEGINS HERE-->
    <p>
      <br/>
    </p>

    <div class="collapse show" id="HKBGLCAN_02">
      <div class="form-group row" id="fg001">
        <label for="fg001ig001" class="col-sm-3 col-form-label">REFERENCE NUMBER</label>
        <div class="col-sm-9" id="fg001ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_REFNO" maxlength="013" readonly="readonly">
              <xsl:attribute name="class">
                <xsl:choose>
                  <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_REFNO']">form-control is-invalid</xsl:when>
                  <xsl:otherwise>form-control</xsl:otherwise>
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
        <label for="fg002ig001" class="col-sm-3 col-form-label">CUSTOMER NO.</label>
        <div class="col-sm-9" id="fg002ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CUSTCOD" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CUSTCOD']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CUSTCOD']" />
                </xsl:attribute>
            </input>            
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg003">
        <label for="fg003ig001" class="col-sm-3 col-form-label">NAME</label>
        <div class="col-sm-9" id="fg003ig001">
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

      <div class="form-group row" id="fg004">
        <label for="fg004ig001" class="col-sm-3 col-form-label">ACU/DBU BOOK</label>
        <div class="col-sm-9" id="fg004ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_ACUDBU" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_ACUDBU']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_ACUDBU']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
        <label for="fg004ig001" class="col-sm-3 col-form-label">(N-ACU ONSHORE F-ACU OFFSHORE D-DBU)</label>
      </div> 

      <div class="form-group row" id="fg005">        
        <label for="fg005ig001" class="col-sm-3 col-form-label">SUBMISSION BRANCH</label> 
        <div class="col-sm-9" id="fg005ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_BRANCH" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_BRANCH']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_BRANCH']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>  

      <div class="form-group row" id="fg006">
        <label for="fg006ig001" class="col-sm-3 col-form-label">REL REF</label>
        <div class="col-sm-9" id="fg006ig001">
          <div class="input-group mb-3">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_RELREFN" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_RELREFN']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control is-valid</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_RELREFN']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>  

      <div class="form-group row" id="fg007">
        <label class="col-sm-2 col-form-label">DR CCY</label>
        <label class="col-sm-2 col-form-label">AMOUNT</label>
        <label class="col-sm-3 col-form-label">GL NO</label> 
        <label class="col-sm-2 col-form-label">TAX CODE</label>
        <label class="col-sm-3 col-form-label">NAME</label>           
      </div>      

      <div class="form-group row" id="fg008">     
        <div class="input-group col-sm-12" id="fg008ig001">
          <div class="input-group mb-2 col-sm-2">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRCCY1" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_DRCCY1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_DRCCY1']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRAMT1" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_DRAMT1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_DRAMT1']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-3 col-sm-3">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRGLNO1" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_DRGLNO1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_DRGLNO1']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_WDTXCD1" maxlength="035">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_WDTXCD1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_WDTXCD1']" />
                </xsl:attribute>
            </input>
            <div class="input-group-append">
              <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_WDTXCD1','1551');">P</button>
            </div> 
          </div>
          <div class="input-group mb-3 col-sm-3">           
            <input type="text" title="Data type: Characters" name="HKBGLCAN_OWDGLN1" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_OWDGLN1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_OWDGLN1']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg009">     
        <div class="input-group col-sm-12" id="fg009ig001">
          <div class="input-group mb-2 col-sm-2">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRCCY2" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_DRCCY2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_DRCCY2']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRAMT2" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_DRAMT2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_DRAMT2']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-3 col-sm-3">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRGLNO2" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_DRGLNO2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_DRGLNO2']" />
                </xsl:attribute>
            </input> 
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_WDTXCD2" maxlength="035">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_WDTXCD2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_WDTXCD2']" />
                </xsl:attribute>
            </input>
            <div class="input-group-append">
              <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_WDTXCD2','1651');">P</button>
            </div> 
          </div>
          <div class="input-group mb-3 col-sm-3">           
            <input type="text" title="Data type: Characters" name="HKBGLCAN_OWDGLN2" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_OWDGLN2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_OWDGLN2']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg010">     
        <div class="input-group col-sm-12" id="fg010ig001">
          <div class="input-group mb-2 col-sm-2">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRCCY3" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_DRCCY3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_DRCCY3']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRAMT3" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_DRAMT3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_DRAMT3']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-3 col-sm-3">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRGLNO3" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_DRGLNO3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_DRGLNO3']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_WDTXCD3" maxlength="035">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_WDTXCD3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_WDTXCD3']" />
                </xsl:attribute>
            </input>
            <div class="input-group-append">
              <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_WDTXCD3','1751');">P</button>
            </div>  
          </div>
          <div class="input-group mb-3 col-sm-3">           
            <input type="text" title="Data type: Characters" name="HKBGLCAN_OWDGLN3" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_OWDGLN3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_OWDGLN3']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg011">
        <label class="col-sm-2 col-form-label">CR CCY</label>
        <label class="col-sm-2 col-form-label">AMOUNT</label>
        <label class="col-sm-3 col-form-label">GL NO</label> 
        <label class="col-sm-2 col-form-label">TAX CODE</label>
        <label class="col-sm-3 col-form-label">NAME</label>           
      </div>      

      <div class="form-group row" id="fg012">     
        <div class="input-group col-sm-12" id="fg012ig001">
          <div class="input-group mb-2 col-sm-2">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRCCY1" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CRCCY1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CRCCY1']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRAMT1" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CRAMT1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CRAMT1']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-3 col-sm-3">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRGLNO1" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CRGLNO1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CRGLNO1']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_WCTXCD1" maxlength="035">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_WCTXCD1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_WCTXCD1']" />
                </xsl:attribute>
            </input>
            <div class="input-group-append">
              <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_WCTXCD1','1951');">P</button>
            </div> 
          </div>
          <div class="input-group mb-3 col-sm-3">           
            <input type="text" title="Data type: Characters" name="HKBGLCAN_OWCGLN1" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_OWCGLN1']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_OWCGLN1']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg013">     
        <div class="input-group col-sm-12" id="fg013ig001">
          <div class="input-group mb-2 col-sm-2">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRCCY2" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CRCCY2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CRCCY2']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRAMT2" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CRAMT2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CRAMT2']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-3 col-sm-3">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRGLNO2" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CRGLNO2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CRGLNO2']" />
                </xsl:attribute>
            </input> 
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_WCTXCD2" maxlength="035">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_WCTXCD2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_WCTXCD2']" />
                </xsl:attribute>
            </input>
            <div class="input-group-append">
              <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_WCTXCD2','2051');">P</button>
            </div>             
          </div>
          <div class="input-group mb-3 col-sm-3">           
            <input type="text" title="Data type: Characters" name="HKBGLCAN_OWCGLN2" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_OWCGLN2']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_OWCGLN2']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

      <div class="form-group row" id="fg014">     
        <div class="input-group col-sm-12" id="fg014ig001">
          <div class="input-group mb-2 col-sm-2">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRCCY3" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CRCCY3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CRCCY3']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRAMT3" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CRAMT3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CRAMT3']" />
                </xsl:attribute>
            </input>
          </div>
          <div class="input-group mb-3 col-sm-3">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRGLNO3" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_CRGLNO3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_CRGLNO3']" />
                </xsl:attribute>
            </input> 
          </div>
          <div class="input-group mb-2 col-sm-2">          
            <input type="text" title="Data type: Characters" name="HKBGLCAN_WCTXCD3" maxlength="035">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_WCTXCD3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_WCTXCD3']" />
                </xsl:attribute>
            </input>
            <div class="input-group-append">
              <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_WCTXCD3','2151');">P</button>
            </div>           
          </div>
          <div class="input-group mb-3 col-sm-3">           
            <input type="text" title="Data type: Characters" name="HKBGLCAN_OWCGLN3" maxlength="035" readonly="readonly">
                <xsl:attribute name="class">
                  <xsl:choose>
                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_OWCGLN3']">form-control is-invalid</xsl:when>
                    <xsl:otherwise>form-control</xsl:otherwise>
                  </xsl:choose>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_OWCGLN3']" />
                </xsl:attribute>
            </input>
          </div>
        </div>
      </div>

    </div>
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