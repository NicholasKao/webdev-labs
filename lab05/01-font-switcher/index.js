let currentSize = 1.4;

const makeBigger = () => {
    // alert('make bigger!');
    currentSize += 0.2;
    document.querySelector(".content").style.fontSize = `${currentSize}em`
    document.querySelector("h1").style.fontSize = `${currentSize + 0.4}em`

};

const makeSmaller = () => {
    // alert('make smaller!');
    currentSize -= 0.2;
    document.querySelector(".content").style.fontSize = `${currentSize}em`
    document.querySelector("h1").style.fontSize = `${currentSize + 0.4}em`
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

