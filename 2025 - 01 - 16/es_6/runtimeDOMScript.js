let div = document.createElement("div");

for (let i = 1; i <= 10; i++) {
  const p = document.createElement("p");
  p.textContent = "Paragrafo " + i;  
  p.setAttribute("id", "Paragrafo" + i);  

  const ul = document.createElement("ul");
  ul.setAttribute("id", "Lista" + i);  

  for (let j = 1; j <= i; j++) {
    const li = document.createElement("li");
    li.textContent = "Punto della lista " + j + " del paragrafo " + i;
    ul.appendChild(li);
  }

  p.appendChild(ul);
  div.appendChild(p);
}
div.setAttribute("id", "contenitore-liste")
document.body.appendChild(div);
