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
 
<from>
  <div class="container" id="alert_info">
    <xsl:for-each select="content/alert/info_item">
      <xsl:choose>
        <xsl:when test="type > 2">
          <div class="alert alert-danger" role="alert">
            <xsl:value-of select="text"/>
          </div>
        </xsl:when>
        <xsl:when test="type > 1">
          <div class="alert alert-warning" role="alert">
            <xsl:value-of select="text"/>
          </div>
        </xsl:when>
        <xsl:otherwise>
          <div class="alert alert-info" role="alert">
            <xsl:value-of select="text"/>
          </div>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
  </div>

  <div class="container" id="system_info">
    <div class="row">
      <xsl:for-each select="content/system_info/info_item">
        <div class="col-xs-12 col-sm-6 col-md-2 bg-light text-dark">
          <xsl:attribute name="id">
            <xsl:value-of select="id"/>
          </xsl:attribute>
          <xsl:attribute name="name">
            <xsl:value-of select="name"/>
          </xsl:attribute>
          <xsl:value-of select="name"/>
           : 
          <xsl:value-of select="display"/>
        </div>
       </xsl:for-each> 
   </div>
  </div> 

  <div class="divider">
    <hr style="filter: alpha(opacity=100,finishopacity=0,style=2)" width="94%" color="#6f5499" size="10"/>
  </div> 

  <div class="container" id="input_form">
    <div class="container" id="screen_layer_1">
      <button class="btn btn-primary btn-block" type="button" data-toggle="collapse">
        <xsl:attribute name="data-target">
          <xsl:value-of select="content/screen1/screen_bar_id"/>
        </xsl:attribute>
        <xsl:value-of select="content/screen1/screen_name"/>
      </button>
      <p><br></br></p>
      <div class="collapse show">
        <xsl:attribute name="id">
          <xsl:value-of select="content/screen1/screen_id"/>
        </xsl:attribute>

        <div class="form-group row">
          <label for="formGroupExampleInput" class="col-sm-3 col-form-label">Referance No</label>
          <div class="col-sm-9">
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="formGroupExampleInput"/>
              <div class="input-group-append">
                <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal">
                  P <!-- Popup -->
                </button>
              </div>
            </div>  
          </div>
        </div>    
      </div> 
    </div>

    <div class="container" id="screen_layer_2">
      <button class="btn btn-primary btn-block" type="button" data-toggle="collapse">
        <xsl:attribute name="data-target">
          <xsl:value-of select="content/screen2/screen_bar_id"/>
        </xsl:attribute>
        <xsl:value-of select="content/screen2/screen_name"/>
      </button>
      <p><br></br></p>
      <div class="collapse show">
        <xsl:attribute name="id">
          <xsl:value-of select="content/screen2/screen_id"/>
        </xsl:attribute>

        <div class="form-group row">
          <label for="formGroupExampleInput" class="col-sm-3 col-form-label">Referance No</label>
          <div class="col-sm-9">
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="formGroupExampleInput"/>
              <div class="input-group-append">
                <button class="btn btn-outline-secondary btn-danger" type="button" id="button-addon2" data-toggle="modal" data-target="#popupModal">
                  P <!-- Popup -->
                </button>
              </div>
            </div>  
          </div>
        </div> 

        <div class="divider">
          <hr style="filter: alpha(opacity=100,finishopacity=0,style=2)" width="94%" color="#6f5499" size="10"/>
          <label>MRE</label>
        </div> 

        <div id="MRELayer">
          <table class="table table-hover">
            <thead>
              <tr>
                <th>No</th>
                <th>Remark</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
                    1
                  </button>
                </td>
                <td>scan name1</td>
              </tr>
              <tr>
                <td>
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
                    2
                  </button>
                </td>
                <td>scan name2</td>
              </tr>
              <tr>
                <td>
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
                    3
                  </button>
                </td>
                <td>scan name3</td>
              <tr>
                <td>
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
                    add
                  </button>
                </td>
                <td>..</td>
              </tr>
              </tr>
            </tbody>
          </table>
        </div>
      </div> 
    </div>

    <div class="container" id="screen_layer_3">
      <button class="btn btn-primary btn-block" type="button" data-toggle="collapse">
        <xsl:attribute name="data-target">
          <xsl:value-of select="content/screen3/screen_bar_id"/>
        </xsl:attribute>
        <xsl:value-of select="content/screen3/screen_name"/>
      </button>
      <p><br></br></p>
      <div class="collapse">
        <xsl:attribute name="id">
          <xsl:value-of select="content/screen3/screen_id"/>
        </xsl:attribute>    
      </div>
    </div>

    <div class="container" id="screen_layer_4">
      <button class="btn btn-primary btn-block" type="button" data-toggle="collapse">
        <xsl:attribute name="data-target">
          <xsl:value-of select="content/screen4/screen_bar_id"/>
        </xsl:attribute>
        <xsl:value-of select="content/screen4/screen_name"/>
      </button>
      <p><br></br></p>
      <div class="collapse">
        <xsl:attribute name="id">
          <xsl:value-of select="content/screen4/screen_id"/>
        </xsl:attribute>    
      </div>
    </div>
  </div>

</from>
<!-- </body>
</html> -->
</xsl:template>
</xsl:stylesheet>