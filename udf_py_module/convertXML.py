from lxml import etree

class convertXML:
    def __init__(self):
        self._result = None
        self._xsl = None
        self._xml = None       

    def convert_from_file(self, xml_file_name, xsl_file_name):  
        self._xml = etree.parse(xml_file_name)
        self._xsl = etree.parse(xsl_file_name)
        transform = etree.XSLT(self._xsl)

        self._result = transform(self._xml)

    def convert_from_string(self, xml_string, xsl_string):  
        self._xml = etree.XML(xml_string)
        self._xsl = etree.XML(xsl_string)
        transform = etree.XSLT(self._xsl)

        self._result = transform(self._xml)
        
    def convert_by_xsl_templete(self, xml_string, xsl_file_name):
        self._xml = etree.XML(xml_string)
        self._xsl = etree.parse(xsl_file_name)
        transform = etree.XSLT(self._xsl)

        self._result = transform(self._xml)
        
 
    def get_xml_doc(self):
        return self._result            

    def get_translated(self):
        return str(self._result)     

    def save_translated(self, file_name):
        self._result.write(file_name, encoding='utf-8')   

    def release(self):
        '''
        this function must be called in the end.
        '''
        self._xsl = None
        self._xml = None
        self._result = None

 

if __name__ == '__main__':
    test = convertXML()
    xml_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xml\\navigation.xml'
    xsl_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xsl\\navigation.xsl'
    xml_string = '<a><b>Text</b></a>'
    xsl_string = '''
                 <xsl:stylesheet version="1.0"
                     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
                     <xsl:template match="/">
                         <foo><xsl:value-of select="/a/b/text()" /></foo>
                     </xsl:template>
                 </xsl:stylesheet>
                 '''
 
    test.convert_from_file(xml_file_name, xsl_file_name)
    #test.convert_from_string(xml_string, xsl_string)
    #print(test.get_translated())
    test.save_translated('D:\\DEVELOP\\mobility_web_py\\static\\navigation.html')
    test.release()