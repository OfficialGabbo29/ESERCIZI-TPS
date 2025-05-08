const lista = document.getElementById("lista");
const text = document.getElementById("text");
const buttonInserisci = document.getElementById("button");

buttonInserisci.addEventListener("click", () => {
    const li = document.createElement("li");
    li.textContent = text.value;

    const button = document.createElement("button");
    button.textContent = "remove";

    li.appendChild(button);
    lista.appendChild(li);

    button.addEventListener("click", () => {
        lista.removeChild(li);
    });
});