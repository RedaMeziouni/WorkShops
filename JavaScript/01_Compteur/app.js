// Votre script JS

// set inital value to zero
let count = 0;
// select value and buttons
const value = document.querySelector("#value");
const btns = document.querySelectorAll(".btn");

btns.forEach(function (btn) {
  btn.addEventListener("click", function (e) {
    const styles = e.currentTarget.classList;
    if (styles.contains("decrease")) {
      count--;
    } else if (styles.contains("increase")) {
      count++;
    } else {
      count = 0;
    }

    if (count > 0) {
      value.style.color = "green";
    }
    if (count < 0) {
      value.style.color = "red";
    }
    if (count === 0) {
      value.style.color = "#222";
    }
    value.textContent = count;
  });
});

// *************2nd Solution*************

// let add = document.querySelector('.increase'),
//     sub = document.querySelector('.decrease'),
//     reset = document.querySelector('.reset'),
//     conter = document.querySelector('#value')

// x = 0
// function style(x) {
//     if (x > 0) {
//         value.style.color = "green"
//     }
//     if (x == 0) {
//         value.style.color = "#222"
//     }
//     if (x < 0) {
//         value.style.color = "red"
//     }
// }
// add.addEventListener('click', () => {
//     conter.innerHTML = ++x
//     style(x)

// });
// sub.addEventListener('click', () => {
//     conter.innerHTML = --x
//     style(x)

// });
// reset.addEventListener('click', () => {
//     x = 0
//     conter.innerHTML = x
//     style(x)

// })