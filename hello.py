from flask import Flask
from udf_py_module import convertXML

app = Flask(__name__)
#root = os.path.join(os.path.dirname(os.path.abspath(__file__)), "html")#html是个文件夹

@app.route('/')
def hello():
	return app.send_static_file('default.html')
    #return send_from_directory(root, "homepage.html")#homepage.html在html文件夹下
    #return 'hello world' 
    
@app.route('/navigation')
def navigation():
    test = convertXML.convertXML()
    xml_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xml\\navigation.xml'
    xsl_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xsl\\navigation.xsl'
    test.convert_from_file(xml_file_name, xsl_file_name)
    print(test.get_translated())
    return test.get_translated()
    test.release()

@app.route('/bookmark')
def bookmark():
    test = convertXML.convertXML()
    xml_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xml\\bookmark.xml'
    xsl_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xsl\\bookmark.xsl'
    test.convert_from_file(xml_file_name, xsl_file_name)
    print(test.get_translated())
    return test.get_translated()
    test.release()

@app.route('/content')
def content():
    test = convertXML.convertXML()
    xml_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xml\\content.xml'
    xsl_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xsl\\content.xsl'
    test.convert_from_file(xml_file_name, xsl_file_name)
    print(test.get_translated())
    return test.get_translated()
    test.release()

@app.route('/functional_button')
def functional_button():
    test = convertXML.convertXML()
    xml_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xml\\functional_button.xml'
    xsl_file_name = 'D:\\DEVELOP\\mobility_web_py\\static\\xsl\\functional_button.xsl'
    test.convert_from_file(xml_file_name, xsl_file_name)
    print(test.get_translated())
    return test.get_translated()
    test.release()
    
if __name__ == '__main__':
	app.run(debug = True)
