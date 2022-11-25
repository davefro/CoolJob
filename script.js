// open new page document //
document.getElementById("myButton2").onclick = () => {
    location.href = "loginform.html";
};

document.getElementById("myButton1").onclick = () => {
    location.href = "signupform.html";
};

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
    myWindow = window.open("https://uk.linkedin.com/jobs/search?keywords=&location=&geoId=&trk=homepage-jobseeker_jobs-search-bar_search-submit&position=1&pageNum=0", "_blank")
}

let myWindow1;

function newWindow1(){
    myWindow1 = window.open("student-list.html")
}