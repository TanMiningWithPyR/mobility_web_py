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
    <input type="hidden" name="ScrID" value="01" />
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
    <button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#HKBGLCAN_01">DETAIL 01</button>
    <!--BLOCKLISTLAYER BEGINS HERE-->
    <p>
      <br/>
    </p>

    <div style="width:100%;overflow-x:scroll;" id="HKBGLCAN_01">
      <table style="width:100%">
      	<tr>
      		<td>
        		<div class="input-group">
      			<label>REFERENCE NUMBER</label>
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
      	  </td>
      	</tr>
      </table>
	</div>
    <div style="width:100%;overflow-x:scroll;" id="HKBGLCAN_01">
      <table style="width:100%">
      	<tr>
      		<td style="width:40%">
        		<div class="input-group">
      			<label>CUSTOMER NO.&#160;&#160;&#160;&#160;&#160;&#160;&#160;:</label>
      			<input type="text" title="Data type: Characters" name="HKBGLCAN_CUSTCOD" maxlength="013" readonly="readonly">
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
          </td>
          <td style="width:60%">
            <div class="input-group">
      			<label>NAME       :</label>
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
      	  </td>
      	</tr>
      	<tr>
      		<td></td>
      		<td>
        		<div class="input-group">
        		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
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
      		</td>
      	</tr>
      	<tr>
      		<td></td>
      		<td>
        		<div class="input-group">
        		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
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
      		</td>
      	</tr>      	
      	<tr>
      		<td></td>
      		<td>
        		<div class="input-group">
        		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
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
      		</td>
      	</tr> 
      	
      	<tr>
      		<td>
      			<div class="input-group">
      				<label>ACU/DBU BOOK</label>
		              <select title="Data type:Characters" name="HKBGLCAN_ACUDBU" dataType="Characters" maxlength="13" id="HKBGLCAN_ACUDBU">
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='HKBGLCAN_ACUDBU']">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="svrvalue">
		                  <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_ACUDBU']" />
		                </xsl:attribute>
		         		<xsl:if test="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_ACUDBU']=''">
			                <option value=" " selected="selected"></option>
			                <option value="N">N-ACU ONSHORE</option>
			                <option value="F">F-ACU OFFSHORE</option>
			                <option value="D">D-DBU</option>		         		
		         		</xsl:if>
		         		<xsl:if test="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_ACUDBU']='N'">
			                <option value=" "></option>
			                <option value="N" selected="selected">N-ACU ONSHORE</option>
			                <option value="F">F-ACU OFFSHORE</option>
			                <option value="D">D-DBU</option>		         		
		         		</xsl:if>
		         		<xsl:if test="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_ACUDBU']='F'">
			                <option value=" "></option>
			                <option value="N">N-ACU ONSHORE</option>
			                <option value="F" selected="selected">F-ACU OFFSHORE</option>
			                <option value="D">D-DBU</option>		         		
		         		</xsl:if>
		         		<xsl:if test="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='HKBGLCAN_ACUDBU']='D'">
			                <option value=" "></option>
			                <option value="N">N-ACU ONSHORE</option>
			                <option value="F">F-ACU OFFSHORE</option>
			                <option value="D" selected="selected">D-DBU</option>		         		
		         		</xsl:if>				         				         		
		              </select>	            
      			</div>
      		</td>
      		<td>
      		</td>
      	</tr>
      	<tr>
      		<td>
      			<div class="input-group">
      				<label>SUBMISSION BRANCH</label>
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
      		</td>
      		<td>
      			<div class="input-group">
      				<label>REL REF</label>
      				<input type="text" title="Data type: Characters" name="HKBGLCAN_RELREFN" maxlength="13">
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
      		</td>
      	</tr>  
      </table>
		</div>


		  <div>
      <table style="width:100%">
      	<tr>
	        <td>DR CCY</td>
	        <td>AMOUNT</td>
	        <td>GL NO. GL</td>
	        <td>NAME</td>   
        </tr> 
        <tr>
        	<td>
        		<div class="input-group">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRCCY1" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_DRCCY1','1505');">P</button>
        	</div>
        	</td>
        	<td>
        		<input type="text" title="Data type: Characters" name="HKBGLCAN_DRAMT1" maxlength="035">
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
        	</td>
        	<td>
        		<div class="input-group">
        		<input type="text" title="Data type: Characters" name="HKBGLCAN_DRGLNO1" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_DRGLNO1','1531');">P</button>
        	  </div>
        	</td>
        	<td>
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
        	</td>
        </tr>
        <tr>
        	<td>
        		<div class="input-group">
						<input type="text" title="Data type: Characters" name="HKBGLCAN_DRCCY2" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_DRCCY2','1605');">P</button> 
        	  </div>
        	</td>
        	<td>
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRAMT2" maxlength="035">
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
        	</td>
        	<td>
        		<div class="input-group">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRGLNO2" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_DRGLNO2','1631');">P</button>
        	  </div>
        	</td>
        	<td>
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
        	</td>
        </tr>
        <tr>
        	<td>
        		<div class="input-group">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRCCY3" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_DRCCY3','1705');">P</button>
	       	  </div>
	       	</td>
        	<td>
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRAMT3" maxlength="035">
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
        	</td>
        	<td>
        		<div class="input-group">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_DRGLNO3" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_DRGLNO3','1731');">P</button>
        	  </div>
        	</td>
        	<td>
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
        	</td>
        </tr> 
      </table>
			</div>
			
			<div>
			<table>
	      <tr>
	      	<td>CR CCY</td>
	      	<td>AMOUNT</td>
	      	<td>GL NO. GL</td>
	      	<td>NAME</td>
	      </tr>	      
	      <tr>
	      	<td>
        		<div class="input-group">
	      		<input type="text" title="Data type: Characters" name="HKBGLCAN_CRCCY1" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_CRCCY1','1905');">P</button>
	      	  </div>
	      	</td>
	      	<td>
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRAMT1" maxlength="035">
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
	      	</td>
	      	<td>
        		<div class="input-group">
	      		<input type="text" title="Data type: Characters" name="HKBGLCAN_CRGLNO1" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_CRGLNO1','1931');">P</button>
	      	  </div>
	      	</td>
	      	<td>
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
	      	</td>
	      </tr>
	      <tr>
	      	<td>
        		<div class="input-group">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRCCY2" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_CRCCY2','2005');">P</button>
	      	  </div>
	      	</td>
	      	<td>
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRAMT2" maxlength="035">
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
	      	</td>
	      	<td>
        		<div class="input-group">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRGLNO2" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_CRGLNO2','2031');">P</button>
	      	  </div>
	      	</td>
	      	<td>
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
	      	</td>
	      </tr>
	      <tr>
	      	<td>
        		<div class="input-group">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRCCY3" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_CRCCY3','2105');">P</button>
            </div>
	      	</td>
	      	<td>
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRAMT3" maxlength="035">
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
	      	</td>
	      	<td>
        		<div class="input-group">
            <input type="text" title="Data type: Characters" name="HKBGLCAN_CRGLNO3" maxlength="035">
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
            <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content.popUp('HKBGLCAN_CRGLNO3','2131');">P</button>
            </div>
	      	</td>
	      	<td>
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
	      	</td>
	      </tr>
      </table>
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

 