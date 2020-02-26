<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited with XML Spy v2007 (http://www.altova.com) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<!-- <html>
<body> -->

<a class="navbar-brand" href="#">EC WebFitas</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navitems" aria-controls="navitems" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navitems">
    <ul class="navbar-nav mr-auto">
    <xsl:for-each select="nav_item/item">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          	<xsl:attribute name="href">
          		<xsl:value-of select="link"/>
          	</xsl:attribute>
          	<xsl:attribute name="id">
          		<xsl:value-of select="link"/>
          	</xsl:attribute>
        	<xsl:value-of select="name"/>
        </a>
        <div class="dropdown-menu">
            <xsl:attribute name="aria-labelledby">
          		<xsl:value-of select="link"/>
          	</xsl:attribute>
        <xsl:for-each select="dropdown/dropdown_item">	
          <a class="dropdown-item">
          	<xsl:attribute name="href">
          		<xsl:value-of select="link"/>
          	</xsl:attribute>
          	<xsl:value-of select="name"/>
          </a>
        </xsl:for-each>
        </div>
      </li>
    </xsl:for-each>
    </ul>
  </div>

<!-- </body>
</html> -->
</xsl:template>
</xsl:stylesheet>