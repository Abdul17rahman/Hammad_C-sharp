/*var userID = userid.value;
  var userName = username.value;
  var passWord = password.value;
  var Desig = Des.options[Des.selectedIndex].text;

  console.log(`ID: ${userID} , Name: ${userName}, password: ${passWord}, Des: ${Desig}`); */

/* JavaScript for the Responsive Menu */
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
/* Validating the Login Form */
 const userid = document.querySelector('#formid');
 const username = document.querySelector('#formname');
 const password = document.querySelector('#inputPassword');
 const Des = document.querySelector('#selecteditem');
 const Fill = document.querySelector('#Logerror');
 const Passhelp = document.querySelector('#passwordHelpInline');
 
//Add Event Listener when the form is submited
 document.querySelector('#Login-form').addEventListener('submit', validate);

//Clearing the fields 

function Clear(){
  userid.value = '';
  username.value = '';
  password.value = '';
}

//Method validating the submission form
 function validate(e){
   e.preventDefault();
//Check if the fields are empty
  if((userid.value == '') || (username.value == '') || (password.value == '') ){
    if(userid.value == ''){
      userid.classList.add('error');
      setTimeout(() => {
        userid.classList.remove('error');
      }, 3000);
    }
    if(username.value == ''){
      username.classList.add('error');
      setTimeout(() => {
        username.classList.remove('error');
      }, 3000);
    }
    if(password.value == ''){
      password.classList.add('error');
      setTimeout(() => {
        password.classList.remove('error');
      }, 3000);
    }
    Fill.style.display = 'block';
    setTimeout(() => {
    Fill.style.display = 'none';
   }, 2000);
   Clear();
  }
  else{
    if(password.value.length < 8){
      password.classList.add('error');
      Passhelp.classList.add('pass-le');
      setTimeout(() => {
        password.classList.remove('error');
        Passhelp.classList.remove('pass-le');
      }, 3000);
    }
    Clear();
  }
 }
 //End of Validation for the LogIn
 //Validate password forgotten form
 const passform = document.querySelector('#pass-help');
 const forgotid = document.querySelector('#forgot-id');
 const forgotname = document.querySelector('#forgot-name');
 const forgotemail = document.querySelector('#forgot-email');
 const forgotpara = document.querySelector('#forgot-msg');


 passform.addEventListener('submit', valforgot)

 function valforgot(e){
  e.preventDefault();
  if(forgotid.value == ''){
    forgotid.classList.add('error');
    setTimeout(() => {
      forgotid.classList.remove('error');
      forgotname.value = '';
      forgotemail.value = '';
    }, 2000);
  }
  if(forgotname.value == ''){
    forgotname.classList.add('error');
    setTimeout(() => {
      forgotname.classList.remove('error');
      forgotid.value = '';
      forgotemail.value = '';
    }, 2000);
  }
  if(forgotemail.value == ''){
    forgotemail.classList.add('error');
    setTimeout(() => {
      forgotemail.classList.remove('error');
      forgotid.value = '';
      forgotname.value = '';
    }, 2000);
  }
  if((forgotid.value != '') && (forgotname.value != '') && (forgotemail.value != '')){
    forgotpara.textContent = `Thank you ${forgotname.value}, Your password reset code has been sent to your email!`;
    forgotid.value = '';
    forgotname.value = '';
    forgotemail.value = '';
    setTimeout(() => {
      forgotpara.textContent = '';
    }, 5000);
  }
 }
  //End of Validation form the Forgot Password

  //Validating form for Sign Up
  const signup = document.querySelector('#signup');
  const studentid = document.querySelector('#student-id');
  const sfirst = document.querySelector('#first-name');
  const slast = document.querySelector('#last-name');
  const semail = document.querySelector('#email-1');
  const phonenumber = document.querySelector('#phone-number');
  const userpass = document.querySelector('#userpassword');
  const confirmPass = document.querySelector('#confirm-pass');
  const SignError = document.querySelector('#Log-error');

  function clearall(){
    studentid.value = '';
    sfirst.value = '';
    slast.value = '';
    semail.value = '';
    phonenumber.value = '';
    userpass.value = '';
    confirmPass.value = '';
  }

  signup.addEventListener('submit', ValSign);

  function ValSign(e){
    e.preventDefault();
    if((studentid.value == '') || (sfirst.value == '') || (slast.value == '') || (semail.value == '') || (phonenumber.value == '') || (userpass.value == '') || (confirmPass.value == '')){
      SignError.style.display = 'block';
      clearall();
      setTimeout(() => {
        SignError.style.display = 'none';
      }, 3000);
    }
    else{
      if((userpass.value != confirmPass.value)){
        SignError.textContent = 'Passwords Should Match';
        SignError.style.display = 'block';
        userpass.classList.add('error');
        confirmPass.classList.add('error');
        clearall();
        setTimeout(() => {
          SignError.textContent = '';
          SignError.style.display = 'block';
          userpass.classList.remove('error');
          confirmPass.classList.remove('error');
        }, 3000);
      }
      else{
        console.log('Submited');
        clearall();
      }
    }
  }