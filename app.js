const express = require('express')

const app = express()

let Port = process.env.PORT || 5000

async function users (req, res) {
  await setTimeout(() => { res.send('hello, world') }, 500)
}
async function server (err) {
  if (err) { console.log(err) } else { console.log('running on port ' + Port) }
}

app.get('/', users)

app.listen(Port, server)
