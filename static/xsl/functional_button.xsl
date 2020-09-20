<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited with XML Spy v2007 (http://www.altova.com) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<!-- <html>
<body> -->
<ul class="navbar-nav mr-auto">
  <xsl:for-each select="function_button/item">  
	  <li class="nav-item col">
	      <a class="nav-link">
	        <xsl:attribute name="href">
	          <xsl:value-of select="link"/>
	        </xsl:attribute>
	        <xsl:value-of select="name"/>
	      </a>
	  </li>
  </xsl:for-each>
</ul>
<!-- </body>
</html> -->
</xsl:template>
</xsl:stylesheet>