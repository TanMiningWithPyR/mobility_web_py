<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<form id="form1" name="form1" method="POST">
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

    <input type="hidden" clicked="" popupID="" status="" name="FuncID" onclick="getFocus()" value="HKBXGCSP" />
    <input type="hidden" name="Export_Info_Version" value="WX020003" />
    <input type="hidden" name="Export_Info_TXName" value="HKBXGCSP" />
    <input type="hidden" name="TX_Header_ObjName" value="HKBXGCSP" />
    <input type="hidden" name="TX_Header_ShortDesc" value="NG CANCELLATION PURCHASE LIST DispL" />
    <input type="hidden" name="ScrID" value="SD" />
    <input type="hidden" name="intOSum" value="200" />
    <input type="hidden" name="strKeyCode" value="" />
    <input type="hidden" name="strFuncIndex" value="" />
    <input type="hidden" name="val" value="" />
    <input type="hidden" name="lockMenu" value="Y" />  
    
    <input type="hidden" name="jumpToScreen" value="" />
                          
    <input type="hidden" name="RunSerial">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/Screen_Layout/ScrSFL/@RunSerial" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="SflName">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/Screen_Layout/ScrSFL/@Name" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="Occur">
      <xsl:attribute name="value">
        <xsl:value-of select="/MSG/Screen_Layout/ScrSFL/@Occur" />
      </xsl:attribute>
    </input>
    <input type="hidden" name="sflStart" value="11" Rows="2" Cols="1" sflFldCols="0011" />
    <input type="hidden" clicked="" name="CurPos" value="0000" />
    <input type="hidden" name="popupPos" popupCols="" popupRows="" value="0000" />
    <input type="hidden" name="mreLine" value="1" />                                                                                                                                                                                  
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
  <button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#HKBXGCSP_SC">
	NG CANCELLATION PURCHASE LIST DispL
  </button>  
  <p><br></br></p>
  <div class="collapse show" id="HKBXGCSP_SC">
  	<div class="form-group row" id="fg001">
      <label for="fg001ig001" class="col-sm-3 col-form-label">PURCHASE REF   CCY   PUR</label>
    </div>    
    
  	<div class="form-group row" id="fg002">
      <label for="fg002ig001" class="col-sm-3 col-form-label">AMOUNT             CANCEL</label>
    </div>  

    <div class="form-group row" id="fg003">
      <label for="fg003ig001" class="col-sm-3 col-form-label">O/S UNEARNED         PUR</label>
    </div>  

    <div class="form-group row" id="fg004">
      <label for="fg004ig001" class="col-sm-3 col-form-label">AMOUNT (BILL CCY)</label>
    </div>  
    
    <div class="divider">
      <hr style="filter: alpha(opacity=100,finishopacity=0,style=2)" width="94%" color="#6f5499" size="10"/>      
    </div> 

    <div id="MRELayer_HKBXGCSP_SD"> 
      <div class="table-responsive">
	      <table class="table table-sm">
	        <thead class="thead-default">
	          <tr class="mre_tr">
	          	<th>#NO#</th>
	            <th>PURREF</th>
	            <th>PURCCY</th>
	            <th>PURAMT</th>
	          	<th>WFLAG</th>
	          	<th>WOSUNAM</th>
	          	<th>BILCCY</th>
	          </tr>
	        </thead>
	        <tbody id="mre_tbody">
	        <xsl:for-each select="/MSG/Screen_Layout/ScrSFL/SFLLine">
	          <tr class="mre_tr">
	            <td>
	              <div class="btn-group">
	               <a aria-expanded="true" aria-haspopup="true" style="height:30px;width:50px;font-size:12px" role="button" href="#" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
   	                  <xsl:value-of select="@Line_Index" />
	               </a>	
	               <div class="dropdown-menu">
	               	<a class="dropdown-item" data-toggle="modal" data-target="#mreModal">
	               	  <xsl:attribute name="onclick">content_mre.mreEdit('<xsl:value-of select="@Line_Index" />','HKBXGCSP_PURREF')</xsl:attribute>
	               	  Edit 
	               	</a>
	               	<a class="dropdown-item" href="#">Insert</a>
	               	<a class="dropdown-item" href="#">Delete</a>
	               </div>		
	              </div>			
				</td>
				<td nowrap="nowrap">
					<font size="2">
						<xsl:attribute name="id">table_field_HKBXGCSP_PURREF<xsl:value-of select="@Line_Index" /></xsl:attribute>
						<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_PURREF']/@Value" />
					</font>
				</td>
				<td nowrap="nowrap">
					<font size="2">
						<xsl:attribute name="id">table_field_HKBXGCSP_PURCCY<xsl:value-of select="@Line_Index" /></xsl:attribute>
						<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_PURCCY']/@Value" />
					</font>
				</td>
				<td nowrap="nowrap">
					<font size="2">
						<xsl:attribute name="id">table_field_HKBXGCSP_PURAMT<xsl:value-of select="@Line_Index" /></xsl:attribute>
						<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_PURAMT']/@Value" />
					</font>
				</td>	
				<td nowrap="nowrap">
					<font size="2">
						<xsl:attribute name="id">table_field_HKBXGCSP_WFLAG<xsl:value-of select="@Line_Index" /></xsl:attribute>
						<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_WFLAG']/@Value" />
					</font>
				</td>
				<td nowrap="nowrap">
					<font size="2">
						<xsl:attribute name="id">table_field_HKBXGCSP_WOSUNAM<xsl:value-of select="@Line_Index" /></xsl:attribute>
						<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_WOSUNAM']/@Value" />
					</font>
				</td>	
				<td nowrap="nowrap">
					<font size="2">
						<xsl:attribute name="id">table_field_HKBXGCSP_BILCCY<xsl:value-of select="@Line_Index" /></xsl:attribute>
						<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_BILCCY']/@Value" />
					</font>
				</td>										
	          </tr>
	        </xsl:for-each>
	        </tbody>
	      </table>
      </div>
      
      <div id="mre_nav_button" class="row">
	      <button type="button" class="btn btn-primary col-2 offset-2" data-dismiss="modal" onclick="content_mre.gotoFrontMrePage();">prev</button>
	      <button type="button" class="btn btn-primary col-2 offset-4" data-dismiss="modal" onclick="content_mre.gotoNextMrePage();">next</button>
      </div>
            
    </div>    
  </div> 
</div> 

<!-- Modal for MRE -->
<div class="modal fade" id="mreModal" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">MRE title</h5>
        <h5 class="modal-title" id="show_field" hidden="hidden">Table Field</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="content_mre.cancel()">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="modal-body" id="mre_line_expand">
	      <div id="mre_hidden_input">
	        <xsl:for-each select="/MSG/Screen_Layout/ScrSFL/SFLLine">
	          <div style="display:none">
	          <xsl:attribute name="id">mre_line_<xsl:value-of select="@Line_Index" /></xsl:attribute>  
	     		<div class="form-group row">	     		 
	      			<label for="mre_fg001ig001" class="col-sm-3 col-form-label">PURREF</label>
			      	<div class="input-group col-sm-9" id="mre_fg001ig001">
			            <input type="text" class="form-control" description="PURREF" name="PURREF" readonly="readonly" maxlength="010">
			            	 <xsl:attribute name="name">HKBXGCSP_PURREF_<xsl:value-of select="@Line_Index" /></xsl:attribute>                    
			            	 <xsl:attribute name="value">
			            	 	<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_PURREF']/@Value" />
			            	 </xsl:attribute>             
			              <xsl:attribute name="class">
			                <xsl:choose>
			                  <xsl:when test="SFLFld/@ErrorMsg[../@Data_Index='HKBXGCSP_PURREF']">form-control is-invalid</xsl:when>
			                  <xsl:otherwise>form-control</xsl:otherwise>
			                </xsl:choose>
			              </xsl:attribute>
			            </input>
			      	</div>
	    		</div> 

	     		<div class="form-group row">	     		
	      			<label for="mre_fg002ig001" class="col-sm-3 col-form-label">PURCCY</label>
			    	<div class="input-group col-sm-9" id="mre_fg002ig001">
			            <input type="text" class="form-control" description="PURCCY" name="PURCCY" readonly="readonly" maxlength="065"> 
			            	 <xsl:attribute name="name">HKBXGCSP_PURCCY_<xsl:value-of select="@Line_Index" /></xsl:attribute>                  
			            	 <xsl:attribute name="value">
			            	 	<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_PURCCY']/@Value" />
			            	 </xsl:attribute>
			              <xsl:attribute name="class">
			                <xsl:choose>
			                  <xsl:when test="SFLFld/@ErrorMsg[../@Data_Index='HKBXGCSP_PURCCY']">form-control is-invalid</xsl:when>
			                  <xsl:otherwise>form-control</xsl:otherwise>
			                </xsl:choose>
			              </xsl:attribute>
			            </input>
			      	</div>
	    		</div> 
	    		
	    		<div class="form-group row">	  		
	      			<label for="mre_fg002ig001" class="col-sm-3 col-form-label">PURAMT</label>
			    	<div class="input-group col-sm-9" id="mre_fg002ig001">
			            <input type="text" class="form-control" description="PURAMT" name="PURAMT" readonly="readonly" maxlength="065"> 
			            	 <xsl:attribute name="name">HKBXGCSP_PURAMT_<xsl:value-of select="@Line_Index" /></xsl:attribute>                  
			            	 <xsl:attribute name="value">
			            	 	<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_PURAMT']/@Value" />
			            	 </xsl:attribute>
			              <xsl:attribute name="class">
			                <xsl:choose>
			                  <xsl:when test="SFLFld/@ErrorMsg[../@Data_Index='HKBXGCSP_PURAMT']">form-control is-invalid</xsl:when>
			                  <xsl:otherwise>form-control</xsl:otherwise>
			                </xsl:choose>
			              </xsl:attribute>
			            </input>
			      	</div>
	    		</div>

	    		<div class="form-group row">	  	
	      			<label for="mre_fg002ig001" class="col-sm-3 col-form-label">WFLAG</label>
			    	<div class="input-group col-sm-9" id="mre_fg002ig001">
			            <input type="text" class="form-control" description="WFLAG" name="WFLAG" readonly="readonly" maxlength="065"> 
			            	 <xsl:attribute name="name">HKBXGCSP_WFLAG_<xsl:value-of select="@Line_Index" /></xsl:attribute>                  
			            	 <xsl:attribute name="value">
			            	 	<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_WFLAG']/@Value" />
			            	 </xsl:attribute>
			              <xsl:attribute name="class">
			                <xsl:choose>
			                  <xsl:when test="SFLFld/@ErrorMsg[../@Data_Index='HKBXGCSP_WFLAG']">form-control is-invalid</xsl:when>
			                  <xsl:otherwise>form-control</xsl:otherwise>
			                </xsl:choose>
			              </xsl:attribute>
			            </input>
			      	</div>
	    		</div>	          	          	
	          
	    		<div class="form-group row">	  	
	      			<label for="mre_fg002ig001" class="col-sm-3 col-form-label">WOSUNAM</label>
			    	<div class="input-group col-sm-9" id="mre_fg002ig001">
			            <input type="text" class="form-control" description="WOSUNAM" name="WOSUNAM" readonly="readonly" maxlength="065"> 
			            	 <xsl:attribute name="name">HKBXGCSP_WOSUNAM_<xsl:value-of select="@Line_Index" /></xsl:attribute>                  
			            	 <xsl:attribute name="value">
			            	 	<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_WOSUNAM']/@Value" />
			            	 </xsl:attribute>
			              <xsl:attribute name="class">
			                <xsl:choose>
			                  <xsl:when test="SFLFld/@ErrorMsg[../@Data_Index='HKBXGCSP_WOSUNAM']">form-control is-invalid</xsl:when>
			                  <xsl:otherwise>form-control</xsl:otherwise>
			                </xsl:choose>
			              </xsl:attribute>
			            </input>
			      	</div>
	    		</div>

	    		<div class="form-group row">
	      			<label for="mre_fg002ig001" class="col-sm-3 col-form-label">BILCCY</label>
			    	<div class="input-group col-sm-9" id="mre_fg002ig001">
			            <input type="text" class="form-control" description="BILCCY" name="BILCCY" readonly="readonly" maxlength="065"> 
			            	 <xsl:attribute name="name">HKBXGCSP_BILCCY_<xsl:value-of select="@Line_Index" /></xsl:attribute>                  
			            	 <xsl:attribute name="value">
			            	 	<xsl:value-of select="SFLFld[@Data_Index='HKBXGCSP_BILCCY']/@Value" />
			            	 </xsl:attribute>
			              <xsl:attribute name="class">
			                <xsl:choose>
			                  <xsl:when test="SFLFld/@ErrorMsg[../@Data_Index='HKBXGCSP_BILCCY']">form-control is-invalid</xsl:when>
			                  <xsl:otherwise>form-control</xsl:otherwise>
			                </xsl:choose>
			              </xsl:attribute>
			            </input>
			      	</div>
	    		</div>
	    		
	    	  </div>           
	        </xsl:for-each>      
	      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="content_mre.ok()">OK</button>
      </div>
    </div>
  </div>
</div>

</form> 
</xsl:template>
</xsl:stylesheet>

