<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited with XML Spy v2007 (http://www.altova.com) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<!-- <html>
<body> -->

<div data-spy="scroll" data-target="#bookmark" data-offset="0" id="form">
  <xsl:for-each select="content/sub_screen">
    <h4>
      <xsl:attribute name="id">
              <xsl:value-of select="id"/>
      </xsl:attribute>
      <xsl:value-of select="name"/>
    </h4>
    <p>
      <xsl:value-of select="sub_content"/>
    </p>
   </xsl:for-each> 
</div>  
 
<!-- </body>
</html> -->
</xsl:template>
</xsl:stylesheet>