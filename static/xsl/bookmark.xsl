<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited with XML Spy v2007 (http://www.altova.com) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<!-- <html>
<body> -->

<a class="navbar-brand" href="#">Bookmark</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bookmarkitems" aria-controls="bookmarkitems" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
<div class="collapse navbar-collapse" id="bookmarkitems">
<ul class="navbar-nav mr-auto">
<xsl:for-each select="bookmark/item">
    <li class="nav-item">
    <a class="nav-link">
    <xsl:attribute name="href">
      <xsl:value-of select="link"/>
    </xsl:attribute>
    <xsl:value-of select="name"/>
  </a>
</li>
</xsl:for-each>
</ul>
</div>
 
<!-- </body>
</html> -->
</xsl:template>
</xsl:stylesheet>