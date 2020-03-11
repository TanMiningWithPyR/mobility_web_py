<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited with XML Spy v2007 (http://www.altova.com) -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output version="1.0" indent="yes" encoding="UTF-8" method="html"/>
<xsl:template match="/">
<!-- <html>
<body> -->
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

<div id="turn_page">
  <nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
      <xsl:for-each select="content/pagination/page">
        <li class="page-item">
          <a class="page-link bg-primary text-white" data-toggle="tooltip" data-placement="top">        
            <xsl:attribute name="href">
              <xsl:value-of select="link"/>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="title"/>
            </xsl:attribute>
            <xsl:value-of select="no"/>        
          </a>
        </li>
      </xsl:for-each>        
    </ul>
  </nav>
</div>

<div class="container" id="input_form">  
  <button class="btn btn-primary btn-block" type="button" data-toggle="collapse">
    <xsl:attribute name="data-target">
      <xsl:value-of select="content/screen/screen_bar_id"/>
    </xsl:attribute>
    <xsl:value-of select="content/screen/screen_name"/>
  </button>  
  <p><br></br></p>
  <div class="collapse show">
    <xsl:attribute name="id">
      <xsl:value-of select="content/screen/screen_id"/>
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
</from> 

<!-- Modal for MRE -->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">MRE title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
      </div>
        <div class="modal-body">
        <div class="container" id="single_record">
          <div class="form-group">
            <label for="formGroupExampleInput">Example label</label>
            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Example input placeholder" />
          </div>
          <div class="form-group">
            <label for="formGroupExampleInput2">Another label</label>
            <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Another input placeholder" />
          </div>
        </div> 
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
          <label class="form-check-label" for="defaultCheck1">
            Default checkbox
          </label>
        </div>
        <div class="form-group">
          <label for="exampleFormControlSelect1">Example select</label>
          <select class="form-control" id="exampleFormControlSelect1">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </select>
        </div>
        <div class="mb-3">
          <label for="validationTextarea">Textarea</label>
          <textarea class="form-control is-invalid" id="validationTextarea" placeholder="Required example textarea">
          </textarea>
          <div class="invalid-feedback">
            Please enter a message in the textarea.
          </div>
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Delete</button>
        <button type="button" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">cancel</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal for popup -->
<div class="modal fade" id="popupModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Popup</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Ref No</th><th>Remark</th><th>CustNo</th><th>CustName</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>XXXXXXXXXXX01</td><td>Remark1</td><td>CustNo1</td><th>CustName1</th>
            </tr>
            <tr>
              <td>XXXXXXXXXXX02</td><td>Remark2</td><td>CustNo2</td><th>CustName2</th>
            </tr>
            <tr>
              <td>XXXXXXXXXXX03</td><td>Remark3</td><td>CustNo3</td><th>CustName3</th>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Select</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">cancel</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">next page</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">pre page</button>
      </div>
    </div>
  </div>
</div>
<!-- </body>
</html> -->
</xsl:template>
</xsl:stylesheet>

