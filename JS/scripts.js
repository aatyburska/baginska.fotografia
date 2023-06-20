let color = document.querySelector('.foto__color');
let blackAndWhite = document.querySelector('.foto__blackandwhite');

color.addEventListener('click', () => {
  color.remove();
  blackAndWhite.style.display = 'block';
});

