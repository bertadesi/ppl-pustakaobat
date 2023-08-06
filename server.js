const express = require('express');
const cors = require('cors');
const mysql = require('mysql2');

const app = express();
app.use(cors());
app.use(express.json());

app.get('/message', (req, res) => {
  res.json({ message: "Pustaka Obat" });
});

const connection = mysql.createConnection({
  host: 'sql6.freemysqlhosting.net',
  user: 'sql6637284',
  password: '62VZuthkR5',
  database: 'sql6637284',
});

app.get('/data', (req, res) => {
  connection.query('SELECT * FROM penyakit a, Obat b where a.id = b.id_penyakit', (error, results) => {
    if (error) {
      console.error(error);
      return res.status(500).json({ error: 'Database error' });
    }
    console.log(results);
    return res.json(results);
  });
});

app.listen(8000, () => {
  console.log('Server is running on port 8000');
});
