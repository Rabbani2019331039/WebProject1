const container = document.querySelector(".container");
const btnPopup = document.querySelector(".nav-btn-login");
const signupNavBtn = document.querySelector("nav-btn-signup");

btnPopup.addEventListener("click", (event) => {
	container.classList.remove("inactive-popup");
	container.classList.add("active-popup");
	console.log("pop up");
});

const closeIcon = document.querySelector(".close-icon");

closeIcon.addEventListener("click", () => {
	container.classList.remove("active-popup");
	container.classList.add("inactive-popup");
	console.log("close");
});

function loginPopUp() {
	console.log("login pop");
	container.classList.add("active-popup");
}