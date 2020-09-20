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

    <input type="hidden" clicked="" popupID="" status="" name="FuncID" onclick="getFocus()" value="COMCHARG" />
    <input type="hidden" name="Export_Info_Version" value="WX020003" />
    <input type="hidden" name="Export_Info_TXName" value="COMCHARG" />
    <input type="hidden" name="TX_Header_ObjName" value="COMCHARG" />
    <input type="hidden" name="TX_Header_ShortDesc" value="COMMISSION/CHARGES INPUT" />
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
  <button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#COMCHARG_SD">
	COMMISSION/CHARGES INPUT
  </button>  
  <p><br></br></p>
  <div class="collapse show" id="COMCHARG_SD">
  	<div class="form-group row" id="fg001">
  	  	<div class="input-group col-sm-12">
	  		<div class="input-group mb-2 col-sm-8" id="fg001ig001">
		      	<label for="fg001ig001" class="col-form-label">REF NO</label>
				<input type="text" title="Data type: Characters" name="COMCHARG_LREFNUM" maxlength="013" readonly="readonly">
		             <xsl:attribute name="class">
		               <xsl:choose>
		                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_LREFNUM']">form-control is-invalid</xsl:when>
		                 <xsl:otherwise>form-control</xsl:otherwise>
		               </xsl:choose>
		             </xsl:attribute>
		             <xsl:attribute name="value">
		               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_LREFNUM']" />
		             </xsl:attribute>
		        </input>
			</div>
			
	  		<div class="input-group mb-2 col-sm-2" id="fg001ig002">
		      	<label for="fg001ig002" class="col-form-label">VER NO</label>
				<input type="text" title="Data type: Characters" name="COMCHARG_LVERNUM" maxlength="013" readonly="readonly">
		             <xsl:attribute name="class">
		               <xsl:choose>
		                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_LVERNUM']">form-control is-invalid</xsl:when>
		                 <xsl:otherwise>form-control</xsl:otherwise>
		               </xsl:choose>
		             </xsl:attribute>
		             <xsl:attribute name="value">
		               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_LVERNUM']" />
		             </xsl:attribute>
		        </input>
			</div>
			
			<div class="input-group mb-2 col-sm-2" id="fg001ig003">
				<input type="text" title="Data type: Characters" name="COMCHARG_LFNTION" maxlength="013" readonly="readonly">
		             <xsl:attribute name="class">
		               <xsl:choose>
		                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_LFNTION']">form-control is-invalid</xsl:when>
		                 <xsl:otherwise>form-control</xsl:otherwise>
		               </xsl:choose>
		             </xsl:attribute>
		             <xsl:attribute name="value">
		               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_LFNTION']" />
		             </xsl:attribute>
		        </input>
			</div>
		</div>
    </div>

    <div class="form-group row" id="fg002">
    	<div class="input-group" id="fg002ig001">
    		<label for="fg002ig001" class="col-form-label">DR</label>
			<input type="text" title="Data type: Characters" name="COMCHARG_SDRCY1" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SDRCY1']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SDRCY1']" />
	             </xsl:attribute>
	        </input>   
			<input type="text" title="Data type: Characters" name="COMCHARG_SDRAM1" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SDRAM1']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SDRAM1']" />
	             </xsl:attribute>
	        </input>   
			<input type="text" title="Data type: Characters" name="COMCHARG_SDRCY2" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SDRCY2']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SDRCY2']" />
	             </xsl:attribute>
	        </input>   
			<input type="text" title="Data type: Characters" name="COMCHARG_SDRAM2" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SDRAM2']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SDRAM2']" />
	             </xsl:attribute>
	        </input> 
			<input type="text" title="Data type: Characters" name="COMCHARG_SDRCY3" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SDRCY3']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SDRCY3']" />
	             </xsl:attribute>
	        </input>   
			<input type="text" title="Data type: Characters" name="COMCHARG_SDRAM3" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SDRAM3']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SDRAM3']" />
	             </xsl:attribute>
	        </input> 	       	      	         		
    	</div>
    </div>  

    <div class="form-group row" id="fg003">
    	<div class="input-group" id="fg003ig001">
    		<label for="fg003ig001" class="col-form-label">CR</label>
			<input type="text" title="Data type: Characters" name="COMCHARG_SCRCY1" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SCRCY1']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SCRCY1']" />
	             </xsl:attribute>
	        </input>   
			<input type="text" title="Data type: Characters" name="COMCHARG_SCRAM1" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SCRAM1']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SCRAM1']" />
	             </xsl:attribute>
	        </input>   
			<input type="text" title="Data type: Characters" name="COMCHARG_SCRCY2" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SCRCY2']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SCRCY2']" />
	             </xsl:attribute>
	        </input>   
			<input type="text" title="Data type: Characters" name="COMCHARG_SCRAM2" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SCRAM2']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SCRAM2']" />
	             </xsl:attribute>
	        </input> 
			<input type="text" title="Data type: Characters" name="COMCHARG_SCRCY3" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SCRCY3']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SCRCY3']" />
	             </xsl:attribute>
	        </input>   
			<input type="text" title="Data type: Characters" name="COMCHARG_SCRAM3" maxlength="013" readonly="readonly">
	             <xsl:attribute name="class">
	               <xsl:choose>
	                 <xsl:when test="/MSG/Screen_Layout/ScrFld/@ErrorMsg[../@Data_Index='COMCHARG_SCRAM3']">form-control is-invalid</xsl:when>
	                 <xsl:otherwise>form-control</xsl:otherwise>
	               </xsl:choose>
	             </xsl:attribute>
	             <xsl:attribute name="value">
	               <xsl:value-of select="/MSG/Screen_Layout/ScrFld/@Value[../@Data_Index='COMCHARG_SCRAM3']" />
	             </xsl:attribute>
	        </input> 	       	      	         		
    	</div>
    </div>  
    
    <div class="divider">
      <hr style="filter: alpha(opacity=100,finishopacity=0,style=2)" width="94%" color="#6f5499" size="10"/>      
    </div> 

    <div id="MRELayer_COMCHARG_SD"> 
      <div class="table-responsive">
	      <table class="table table-sm">
	        <thead class="thead-default">
	          <tr class="mre_tr">
	          	<th>#NO#</th>
	            <th>WCTTYPE</th>
	            <th>CCTFDES</th>
	            <th>CCTCCCY</th>
	          	<th>CCTCAMT</th>
	          	<th>WCHANGE</th>
	          	<th>CCTAMID</th>
	          	<th>CCTDRCR</th>
	          	<th>CCTACCY</th>
	          	<th>CCTAAMT</th>
	          	<th>CCTGLNO</th>
	          	<th>CCTRATE</th>
	          	<th>CCTEXRT</th>
	          	<th>CCTFXTP</th>
	          	<th>CCTMLDV</th>
	          	<th>CCTNEXP</th>
	          	<th>CCTCPTY</th>
	          	<th>CCTRCAL</th>
	          	<th>CCTGSEQ</th>
	          	<th>CCTGCCY</th>
	          	<th>CCTGAMT</th>
	          	<th>CCTORCY</th>
	          	<th>CCTORAM</th>
	          	<th>CCTFXNO</th>
	          	<th>WBLANK1</th>
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
	               	  <xsl:attribute name="onclick">content_mre.mreEdit('<xsl:value-of select="@Line_Index" />','COMCHARG_PURREF')</xsl:attribute>
	               	  Edit 
	               	</a>
	               	<a class="dropdown-item" href="#">Insert</a>
	               	<a class="dropdown-item" href="#">Delete</a>
	               </div>		
	              </div>			
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_WCTTYPE" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_WCTTYPE_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>   
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_WCTTYPE']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_WCTTYPE']/@Value" />
		                </xsl:attribute>
		            </input>
		            <div class="input-group-append">
		              <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal" onclick="content_mre.popUp('COMCHARG_WCTTYPE','0101');">
		              <xsl:attribute name="onclick">content_mre.popUp('COMCHARG_WCTTYPE','0101','<xsl:value-of select="@Line_Index" />');</xsl:attribute>
		              P
		              </button>
		            </div> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTFDES" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTFDES_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTFDES']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTFDES']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTCCCY" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTCCCY_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTCCCY']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTCCCY']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>	
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTCAMT" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTCAMT_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTCAMT']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTCAMT']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_WCHANGE" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_WCHANGE_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_WCHANGE']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_WCHANGE']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>	
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTAMID" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTAMID_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTAMID']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTAMID']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>	
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTDRCR" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTDRCR_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTDRCR']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTDRCR']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTACCY" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTACCY_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTACCY']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTACCY']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>	
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTAAMT" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTAAMT_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTAAMT']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTAAMT']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTGLNO" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTGLNO_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTGLNO']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTGLNO']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>	
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTRATE" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTRATE_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTRATE']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTRATE']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTEXRT" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTEXRT_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTEXRT']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTEXRT']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>				
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTFXTP" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTFXTP_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTFXTP']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTFXTP']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTMLDV" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTMLDV_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTMLDV']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTMLDV']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>	
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTNEXP" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTNEXP_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTNEXP']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTNEXP']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTCPTY" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTCPTY_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTCPTY']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTCPTY']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTRCAL" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTRCAL_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTRCAL']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTRCAL']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>	
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTGSEQ" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTGSEQ_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTGSEQ']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTGSEQ']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTGCCY" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTGCCY_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTGCCY']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTGCCY']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTGAMT" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTGAMT_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTGAMT']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTGAMT']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>	
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTORCY" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTORCY_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTORCY']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTORCY']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTORAM" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTORAM_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTORAM']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTORAM']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_CCTFXNO" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_CCTFXNO_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_CCTFXNO']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_CCTFXNO']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
				</td>	
				<td>
		          <div class="input-group">          
		            <input type="text" title="Data type: Characters" name="COMCHARG_WBLANK1" maxlength="035">
		                <xsl:attribute name="name">COMCHARG_WBLANK1_<xsl:value-of select="@Line_Index" /></xsl:attribute>
		                <xsl:attribute name="class">
		                  <xsl:choose>
		                    <xsl:when test="SFLFld[@Data_Index='COMCHARG_WBLANK1']/@ErrorMsg">form-control is-invalid</xsl:when>
		                    <xsl:otherwise>form-control</xsl:otherwise>
		                  </xsl:choose>
		                </xsl:attribute>
		                <xsl:attribute name="value">
		                  <xsl:value-of select="SFLFld[@Data_Index='COMCHARG_WBLANK1']/@Value" />
		                </xsl:attribute>
		            </input> 
		          </div>
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
  