const divs = document.getElementsByClassName("cancellabile");

for (let div of divs) {
  if (div.tagName === "DIV") {
    div.remove();
  }
}
