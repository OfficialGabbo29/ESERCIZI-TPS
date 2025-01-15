let lista = document.getElementById("lista-elementi").querySelectorAll("li");
lista.forEach(li => {
    li.setAttribute("class", "evidenziato");
});

