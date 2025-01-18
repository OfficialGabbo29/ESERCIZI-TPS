let minElem = document.getElementById("minuti")
let secElem = document.querySelector("#secondi")
let minCount =0
let secCount=0
let resetBtnElem =document.getElementById("resetBtn")
//mouseup e mousedown sommati fanno click
resetBtnElem.addEventListener('click',()=>{
    minCount=secCount=0
    minElem.textContent=secElem.textContent=0
    clearInterval(secInterval)
//mettere riferimento all'intervallo


})

//set interval esegue ogni x millisecondi una funzione (in questo caso dopo 1000 millisecondi ovvero un secondo)
setInterval(() => {
    minElem.textContent =minCount++;
},1000
)

let secInterval = setInterval(() => {
    secElem.textContent =secCount++;
},1500
)
//dopo tot millisecondi fa una cosa
setTimeout(()=>{
    alert("Hello")
},5000)
minElem.textContent= 34