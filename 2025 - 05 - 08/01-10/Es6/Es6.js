const div = document.getElementById("contenitore-liste");
for(let i=1; i<=10; i++){
  const p = document.createElement("p")
  p.textContent = "Paragrafo " + i;
  
  const ul = document.createElement("ul");
  for(let u=1; u<=i; u++){
    const li = document.createElement("li")
    li.textContent = u;
    ul.appendChild(li);
  }

  p.appendChild(ul);
  div.appendChild(p);
}
