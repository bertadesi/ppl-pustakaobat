import React, { useState, useEffect, useMemo } from "react";
import "./App.css";



function App() {
  const [message, setMessage] = useState("");
  const [searchTerm, setSearchTerm] = useState("");
  const [items, setItems] = useState([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const [showSearchResults, setShowSearchResults] = useState(false);
  const [showsearchQuery, setShowSearchQuery] = useState(false);

  useEffect(() => {
    fetch("http://localhost:8000/message")
      .then((res) => res.json())
      .then((data) => setMessage(data.message))
      .catch((error) => console.error(error));

    fetch("http://localhost:8000/data")
      .then((response) => response.json())
      .then((data) => {
        // Filter out duplicate items by comparing the 'id' property
        //const uniqueItems = data.filter(
       //   (item, index, self) => index === self.findIndex((i) => i.id === item.id)
     //   );
        const uniqueItems = data

        setItems(uniqueItems);
      })
      .catch((error) => console.error(error));
  }, []);

  const handleSearch = (event) => {
    setSearchTerm(event.target.value);
    setShowSearchQuery(true);
  };

  const handleSearchPrediction = async () => {
    try {
      const response = await fetch('http://localhost:8000/searchObat', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ query: searchQuery }),
      });

      if (response.ok) {
        const data = await response.json();
        setSearchResults(data.prediction);
        setShowSearchResults(true);
      } else {
        console.error('Failed to fetch data:', response.status);
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };
  const filteredItems = useMemo(() => {
    if (!items || items.length === 0) {
    return [];
  }
    return items.filter((item) =>
    item.namaPenyakit.toLowerCase().includes(searchTerm.toLowerCase())
  );
  }, [items, searchTerm]);



  // New list of resulted item IDs
  const resultedItemIds = filteredItems.map((item) => item.Id);

  
  return (

    <div style={{ backgroundImage: "url(/obat.PNG)", backgroundSize: 'cover'
 }}>
      <title>W3.CSS</title>
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3pro.css" />

      <div className="w3-container w3-card"   >
        <h1 style= {{background: '#d15890', color: '#edf7f7',textAlign: 'center'}}>{message}</h1>
      </div>

      <div className="w3-container w3-card">
        <h2 style={{ color: '#edf7f7', background: '#d15890'}} > Daftar Penyakit</h2>
        <input
          type="text"
          placeholder="Search..."
          value={searchTerm}
          onChange={handleSearch}
        />

        <ul className="w3-ul w3-card">
  {Array.from(new Set(filteredItems.map((item) => item.namaPenyakit))).map((namaPenyakit) => {
    const uniqueItem = filteredItems.find((item) => item.namaPenyakit === namaPenyakit);
    return (
      <li key={uniqueItem.id} style={{ border: '1px solid #ccc', marginBottom: '10px', padding: '10px' }}>
        <div className="item-container">
          <img src={uniqueItem.thumbnailUrl} alt={uniqueItem.name} className="thumbnail" />
          <div>
            <h3>{uniqueItem.namaPenyakit}</h3>
            <p>{uniqueItem.DeskripsiGejala}</p>
          </div>
        </div>
      </li>
    );
  })}
</ul>
</div>
{showsearchQuery && (
<div className="w3-container w3-card">
  <h2 style={{ color: '#edf7f7', background: '#d15890'}}>Daftar Obat</h2>
  <ul className="w3-ul w3-card">
    {Array.from(new Set(filteredItems.map((item) => item.namaPenyakit))).map((namaPenyakit) => {
      const uniqueItems = filteredItems.filter((item) => item.namaPenyakit === namaPenyakit);
      return (
        <li key={uniqueItems[0].id}>
          <div className="item-container">
            <h3>{namaPenyakit}</h3>
            {uniqueItems.map((item) => (
              <div key={item.idObat}>
               
                <p>
                ID: {item.idObat}, Nama Obat: {item['namaObat']}, Ukuran: {item.dosis}, tipe: {item.tipe}
                {item.namaDokter ? <span className="sparkling-text"><span style={{ color: 'purple' }}> diresepkan oleh: {item.namaDokter}</span> </span> : ''}
                 {item.klinik ? <span className="sparkling-text"><span style={{ color: 'purple' }}>klinik: {item.klinik}</span></span> : ''}
                </p>

              </div>
            ))}
          </div>
        </li>
      );
    })}
  </ul>
  </div>)}
  <div className="w3-container w3-card">
      <h2 style={{ color: '#edf7f7', background: '#d15890'}}>Cek Rekomendasi</h2>
      <input
        type="text"
        value={searchQuery}
        onChange={(e) => setSearchQuery(e.target.value)}
      />
      <button onClick={handleSearchPrediction}>Cari</button>
       <div>
        {showSearchResults && ( // Conditionally render search results
          <div>
            <h2 style={{ color: '#edf7f7', background: '#d15890'}}>Hasil</h2>
            <ul>
              {searchResults.map((result, index) => (
                <li key={index}>{result}</li>
              ))}
            </ul>
          </div>
        )}
      </div>
    </div>
</div>
  );
}

export default App;
