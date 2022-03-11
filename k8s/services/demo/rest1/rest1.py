import socket
from flask import jsonify
from flask import Flask

app = Flask(__name__)


@app.route('/', methods=['GET'])
def index():

    
    ret = {}
    ret["version"] = "1.0.1"
    ret["lang"] = "python"
    ret["hostname"] = socket.gethostname()

    return jsonify(ret)

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=80)