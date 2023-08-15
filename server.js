const express = require('express');
const cors = require('cors');
const mysql = require('mysql2');


const app = express();
app.use(cors());
app.use(express.json());

// Machine learning model
// Create a RandomForest model


app.get('/message', (req, res) => {
  res.json({ message: "Pustaka Obat" });
});

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'admin123#',
  database: 'pustakaobat',
});

app.get('/data', (req, res) => {

const query = `
    SELECT namaPenyakit, DeskripsiGejala, idObat, namaObat, dosis, tipe, '' as namaDokter, '' as klinik 
    FROM penyakit a, obat b 
    WHERE a.idpenyakit = b.idpenyakit
    UNION ALL
    SELECT namaPenyakit, DeskripsiGejala, b.idObat, namaObat, dosis, b.tipe, d.nama as namaDokter, d.klinik as klinik 
    FROM resep a, obat b, pemeriksaan c, dokter d, penyakit e
    WHERE a.idObat = b.idObat
    AND b.idPenyakit = c.idPenyakit
    AND c.idDokter = d.idDokter
    AND e.idPenyakit = c.idPenyakit
  `;	
  connection.query(query, (error, results) => {
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
