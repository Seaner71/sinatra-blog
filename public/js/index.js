var calcChars = function (element) {
   var maxlength = element.getAttribute("maxlength");
   var chars = element.value.length;
   var remaining = maxlength - chars;
 document.querySelector(".postcount").innerHTML = remaining;
};


var i = 0;
var txt = 'Welcome to Chirper !';
var speed = 70;

window.onload = function typeWriter() {
  if (i < txt.length) {
    document.querySelector(".welcome").innerHTML += txt.charAt(i);
    i++;
    setTimeout(typeWriter, speed);
  }
}
