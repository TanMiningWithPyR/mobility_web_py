<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited with XML Spy v2007 (http://www.altova.com) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<!-- <html>
<body> -->
<ul class="navbar-nav mr-auto">
  <li class="nav-item col">
    <a class="nav-link" href="#">
      OK
    </a>
  </li>
  <li class="nav-item col">
    <a class="nav-link" href="#">
      Cancel
    </a>
  </li>
  <li class="nav-item col">
    <a class="nav-link" href="#">
      Refresh
    </a>
  </li>
  <li class="nav-item dropup col">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">More...</a>
    <div class="dropdown-menu">
        <xsl:for-each select="dropup/dropup_item">  
          <a class="dropdown-item">
            <xsl:attribute name="href">
              <xsl:value-of select="link"/>
            </xsl:attribute>
            <xsl:value-of select="name"/>
          </a>
        </xsl:for-each>
    </div>
  </li>
</ul>
<!-- </body>
</html> -->
</xsl:template>
</xsl:stylesheet>