let lista = document.createElement("ul");
let text = document.getElementById("text");
let buttonInserisci = document.getElementById("buttonInserisci");
let conta=0;

document.body.appendChild(lista);
buttonInserisci.addEventListener("click", (event) => {
  conta++;
  const li = document.createElement("li");
  li.textContent = text.value;
  li.setAttribute("id", "li"+conta);

  const button = document.createElement("button");
  button.textContent = "RIMUOVI RIGA";
  button.setAttribute("id", conta);

  li.appendChild(button);
  lista.appendChild(li);

  button.addEventListener("click", (event) => {
    const id = event.target.id;
    console.log(id);
    const liToRemove = document.getElementById("li"+id);
    lista.removeChild(liToRemove);
  })
});



