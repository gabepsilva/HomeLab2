const express = require('express')
const app = express()
const port = 3000

var os = require("os");

app.get('/', (req, res) => {

    
    

    var ret = {}
    ret['version'] = "1.0.0";
    ret['hostname'] = os.hostname();
    ret['lang'] = 'javascript'


  res.send(ret)
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})

