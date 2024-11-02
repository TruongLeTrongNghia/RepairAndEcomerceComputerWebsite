/**
 * 
 */
function toggleForm() {
	const loginForm = document.getElementById("loginForm");
	const registerForm = document.getElementById("registerForm");

	loginForm.classList.toggle("active");
	registerForm.classList.toggle("active");
}