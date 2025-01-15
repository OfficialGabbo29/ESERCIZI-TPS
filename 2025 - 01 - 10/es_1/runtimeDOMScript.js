let h2Elem= document.getElementById("selezione");
h2Elem.textContent = "Modificato...";
h2Elem.setAttribute("class","valore");
document.querySelector("#selezione");
document.querySelectorAll(".selezioni"); //QUERYSELECTOR E' PER CSS (simile a getElementByID)
let newPar = document.createElement('p');
newPar.textContent = "Sono un paragrafo";
document.body.appendChild(newPar);

let newTable = document.createElement('table'); //creo tabella
for(let row=1;row<=3;row++){
    const tr = document.createElement('tr');
    for(let col=1;col<=3;col++){
        const td = document.createElement('td');
        td.textContent = col;
        tr.appendChild(td);
    };
    newTable.appendChild(tr);
};

document.body.appendChild(newTable);