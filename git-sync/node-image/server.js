const http = require('http');
const port = 8080;
const server = http.createServer((req, res) => {
    res.end('This is a simple container demo');
});

server.listen(port, (err) => {
  if (err) {
    return console.log('failed to listen', err)
  }

  console.log(`serving on ${port}`)
})
