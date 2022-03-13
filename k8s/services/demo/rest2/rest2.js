const express = require('express')
const app = express()
const port = 3000

var os = require("os");

app.get(['/', '/rest2'],index)


function index(req, res){

  res.setHeader('content-type', 'application/json');

  var ret = {}
  ret['version'] = "1.0.13";
  ret['hostname'] = os.hostname();
  ret['lang'] = 'javascript'
  ret['msg'] = req.query.msg
  ret['headers'] = req.headers
  ret['url'] = req.protocol + '://' + req.get('host') + req.originalUrl;

  var log = {"log": ret}

  console.log(log)
  res.send(ret)
}

app.listen(port, () => {
  console.log({"log": `Example app listening at http://localhost:${port}`})
})

