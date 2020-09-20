<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<table class="table table-hover">
  <thead style="background-color: #007BFF;"> 
	  <tr>
		<xsl:for-each select = "MSG/POPUP_Layout/POPUP_Header/POPUP_Title"> 
	   		<th><xsl:value-of select="@Value"/></th> 
		</xsl:for-each> 
	  </tr>
  </thead>
    <tbody>
	<xsl:for-each select="MSG/POPUP_Layout/POPUP_Body/POPUP_Line">
	  <tr popupVal="{@RtnVal}" class="popupCell" onclick="content_popup.LineClick(this)"> 	    
	    <td><input type="hidden">
			<xsl:attribute name='name'><xsl:value-of select="@LineNo"/></xsl:attribute>
			<xsl:value-of select="@RtnVal" />
		</input></td>
		<xsl:for-each select="POPUP_Col">
			<td><xsl:value-of select="@Value" /></td>
		</xsl:for-each>
	  </tr>
	</xsl:for-each>
  </tbody> 
</table>	
<Input type='hidden' name='SelectItem' value=''/>
<Input type='hidden' name='strFuncIndex' value=''/>
<Input type='hidden' name='LineCount' value='{MSG/POPUP_Layout/POPUP_Body/@Count}'/>
<input type='hidden' name='more' value='More'/>
</xsl:template>
</xsl:stylesheet>