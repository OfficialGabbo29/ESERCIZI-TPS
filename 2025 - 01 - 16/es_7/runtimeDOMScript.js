let contenitoreTabella = document.getElementById("contenitore-tabella-mult")
let table = document.createElement("table");
for (let i = 1; i <= 10; i++){
  const tr = document.createElement("tr")
  for (let j = 1; j <= 10; j++) {
    const td = document.createElement("td")
    td.textContent=""+(i*j)
    tr.appendChild(td)
  }
  table.appendChild(tr)
}
contenitoreTabella.appendChild(table)
