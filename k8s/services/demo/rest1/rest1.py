import socket
from flask import jsonify
from flask import Flask
from flask import request

import requests
import json 
import sys

app = Flask(__name__)


@app.route('/', methods=['GET'])
@app.route('/rest1', methods=['GET'])
def index():
    ret = {}
    ret["version"] = "1.0.18"
    ret["lang"] = "python"
    ret["hostname"] = socket.gethostname()
    ret["url"] = request.url
    ret["msg"] = request.args.get('msg')
    if ret["msg"] is None:
        ret["msg"] = "use '?text=msg' to send messages"

    r =requests.get(f'http://rest2-svc:3000?msg=relay: {ret["msg"]}')
    ret["rest2"] =  json.loads(  r.text )

    #ret["headers"] = request.headers

    print( jsonify( {"log": ret} ), file=sys.stdout)
    return jsonify(ret)


if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=80)