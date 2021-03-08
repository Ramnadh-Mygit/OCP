const express = require('express');
const app = express();
const port = 8080;

app.use(express.static(process.cwd() + "/public"));

app.listen(port, () => {
  console.log(`Listening at http://localhost:${port}`)
})