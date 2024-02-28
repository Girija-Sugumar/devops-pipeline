const express = require('express')
const app = express()
const port = 5000

app.get('/', (req, res) => {
  res.send('serving at 5000')
})

app.get('/fun', (req, res) => {
  res.send('testing recent changes')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
