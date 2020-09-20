from flask import Flask
from udf_py_module import convertXML

import os

app = Flask(__name__, static_url_path='')
xmlPath = os.path.join(os.path.dirname(os.path.abspath(__file__)), "static","xml") # xml 是个文件夹
xslPath = os.path.join(os.path.dirname(os.path.abspath(__file__)), "static","xsl") # xsl 是个文件夹
#root = os.path.join(os.path.dirname(os.path.abspath(__file__)), "html")#html是个文件夹

@app.route('/')
def hello():
	return app.send_static_file('default.html')
    #return send_from_directory(root, "homepage.html")#homepage.html在html文件夹下
    #return 'hello world' 
    
@app.route('/menu')
def navigation():
    cxml = convertXML.convertXML()
    xml_file_name = os.path.join(xmlPath,'menu.xml')
    xsl_file_name = os.path.join(xslPath,'menu.xsl')
    cxml.convert_from_file(xml_file_name, xsl_file_name)
    print(cxml.get_translated())
    return cxml.get_translated()
    cxml.release()

@app.route('/bookmark')
def bookmark():
    cxml = convertXML.convertXML()
    xml_file_name = os.path.join(xmlPath,'bookmark.xml')
    xsl_file_name = os.path.join(xslPath,'bookmark.xsl')
    cxml.convert_from_file(xml_file_name, xsl_file_name)
    print(cxml.get_translated())
    return cxml.get_translated()
    cxml.release()

@app.route('/functional_button', methods=['post'])
def functional_button():
    xmlButtonFileName = request.form['FuncID'] + '_B.xml';
    xmlButtonFilePath = xmlPath + xmlButtonFileName;
    xslButtonFilePath = xslPath + "functional_button.xsl";   
    cxml = convertXML.convertXML()
    xml_file_name = os.path.join(xmlPath, xmlButtonFileName)
    xsl_file_name = os.path.join(xslPath, xslButtonFilePath)
    cxml.convert_from_file(xml_file_name, xsl_file_name)
    print(cxml.get_translated())
    return cxml.get_translated()
    cxml.release()

# enter a function from menu
@app.route('/function/<function_name>')
def enter(function_name):
    print (function_name)
    cxml = convertXML.convertXML()

    xml_string = '<a><b>Text</b></a>'
    xsl_file_name = os.path.join(xslPath, 'test.xsl')

    cxml.convert_by_xsl_templete(xml_string, xsl_file_name)
    print(cxml.get_translated())
    return cxml.get_translated()
    cxml.release()
    
if __name__ == '__main__':
	app.run(debug = True)
