// hamburger menu - mobile version //
const hamburger = document.querySelector(".hamburger");
const navbarMenu = document.querySelector(".navbar-menu");


hamburger.addEventListener("click", () => {
    hamburger.classList.toggle("active");
    navbarMenu.classList.toggle("active");
})

document.querySelectorAll(".navbar-link").forEach(n => n. addEventListener("click", () => {
    hamburger.classList.remove("active");
    navbarMenu.classList.remove("active");
}))

// open document in new window //
let myWindow;

function newWindow() {
    myWindow = window.open("https://uk.indeed.com/?r=us", "_blank")
}

