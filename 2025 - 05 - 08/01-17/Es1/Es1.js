let button = document.getElementById("Button");
let div = document.getElementById("text");
let numero = 0;
let conta = 0;
let max = 20;
let min = 0;

button.addEventListener("click", () => {
    if(numero<max){
        numero = numero +1;
        div.textContent = numero;
    }
});

// Event listener per il tasto destro (contextmenu)
document.addEventListener('contextmenu', function(event) {
    event.preventDefault();
  
    if (conta > 1) {
      div.textContent = numero = 0;
      conta=0;
    } else {
        if (numero > min) {
          numero--;
          div.textContent = numero;
        }
    }
  });
  
  // Event listener per mousedown (spostati fuori da contextmenu)
  button.addEventListener("mousedown", () => {
    interval = setInterval(() => {
      conta++; 
    }, 1000);
  });
  
  // Event listener per mouseup (spostati fuori da contextmenu)
  button.addEventListener("mouseup", () => {
    clearInterval(interval);
  });