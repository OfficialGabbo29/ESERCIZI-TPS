const ul = document.getElementById("lista-elementi");
const childrenLi = ul.children; // <-- solo gli <li>

for (let li of childrenLi) {
  li.setAttribute('class', 'evidenziato');
}
