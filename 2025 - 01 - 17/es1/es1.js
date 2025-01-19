const button = document.getElementById("Button");
let count = document.getElementById('counter');
let counter = 0;
let min = 0;
let max = 20;
let conta = 0; // Inizializza conta fuori dagli event listener
let interval; // Dichiara la variabile interval fuori dagli event listener

// Event listener per il click sinistro
button.addEventListener('click', (event) => {
  if (event.button === 0) {
    if (counter != max) {
      counter++;
      count.textContent = counter;
    }
  }
});

// Event listener per il tasto destro (contextmenu)
document.addEventListener('contextmenu', function(event) {
  event.preventDefault();

  if (conta === 1) {
    count.textContent = counter = 0;
    conta=0;
  } else {
    if (event.button === 2) {
      if (counter != min) {
        counter--;
        count.textContent = counter;
      }
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