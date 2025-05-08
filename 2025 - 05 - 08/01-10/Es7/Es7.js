const div = document.getElementById("contenitore-tabella-mult");

const tabella = document.createElement("table");
for(let i=1; i<=10; i++){
  const tr = document.createElement("tr");
  for(let u=1; u<=10; u++){
    const th = document.createElement("th");
    th.textContent = i * u;
    tr.appendChild(th);
  }
  tabella.appendChild(tr);
}

div.appendChild(tabella);