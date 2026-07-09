const http = require('http');
const fs = require('fs');
const path = require('path');

const server = http.createServer((req, res) => {
  const filePath = path.join(__dirname, 'index.html');
  const content = fs.readFileSync(filePath);
  res.writeHead(200, {'Content-Type': 'text/html; charset=utf-8'});
  res.end(content);
});

server.listen(3500, () => {
  console.log('Server running at http://localhost:3500');
});
