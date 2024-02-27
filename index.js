const express = require('express')
const app = express()
const port = 5000

app.get('/', (req, res) => {
  res.send('test-23')
})

app.get('/fun', (req, res) => {
  res.send('test-24')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
