/* 
  See Smashing Magazine Tutorial:
  https://www.smashingmagazine.com/2021/11/dyslexia-friendly-mode-website/
*/


const dyslexiaToggle = () => {
  console.log(document.querySelector("body").className);
  if (document.querySelector("body").className != 'dyslexia-mode') {
    document.querySelector("body").className = 'dyslexia-mode';
  } else {
    document.querySelector("body").className = '';
  }

};

document.querySelector("#dyslexia-toggle").addEventListener('click', dyslexiaToggle);