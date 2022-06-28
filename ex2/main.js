let form = document.querySelector("form");
form.addEventListener("submit", ()=>{
  if (document.forms["myForm"]["fname"].value == "") {
    alert("First Name must be filled out");
    return false;
  }
  if (document.forms["myForm"]["lname"].value == "") {
    alert("Last Name must be filled out");
    return false;
  }
  if (document.forms["myForm"]["email"].value == "") {
    alert("email must be filled out");
    return false;
  }
  if (document.forms["myForm"]["age"].value == "") {
    alert("Age must be filled out");
    return false;
  }
  if (document.forms["myForm"]["password"].value == "") {
    alert("password must be filled out");
    return false;
  }
  if (document.forms["myForm"]["repassword"].value == "") {
    alert("re-enter Password for confirmation");
    return false;
  }
  if (document.forms["myForm"]["password"].value != document.forms["myForm"]["repassword"].value) {
    alert("password does not match");
    return false;
  }
});

