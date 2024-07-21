// show a popup message with a button to redirect to homepage
if (confirm("User created successfully! Go to the homepage?")) {
	window.location.href = "home"; // redirect to homepage
} else {
	window.location.href = "home";
}
// disable the form elements 
document.getElementById("signupForm").disabled = true;