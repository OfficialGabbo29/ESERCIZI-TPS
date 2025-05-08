const lista = document.getElementById("lista");
for(let i=1; i<=3; i++){
    const li = document.createElement("li");
    li.textContent = "Item" + i;
    lista.appendChild(li);
}
