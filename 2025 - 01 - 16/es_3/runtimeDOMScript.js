let list = document.createElement("ul");
for(let i=1;i<=3;i++){
    const li = document.createElement("li");
    li.textContent="Item "+ i;
    list.appendChild(li);
}
document.body.appendChild(list);



