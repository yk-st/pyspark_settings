const express = require('express');
const app = express();

app.get('/done', (req, res) => {
          res.send('BOOTCAMP 1\n');
});

app.get('/cart', (req, res) => {
          res.send('BOOTCAMP 2\n');
});

app.get('/', (req, res) => {
          res.send('Create Bootcamp\n');
});

app.listen(3000);
