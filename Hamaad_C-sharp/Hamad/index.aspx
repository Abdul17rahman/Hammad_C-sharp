﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Hamad.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hammad | Home</title>

    <!--Bootsrap and Custom Css Styles-->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/font/css/all.min.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/hammad.css">
</head>
<body>

    <!--Header-->
    <div class="myheader">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <nav class="navbar navbar-light bg-light">
                    <a class="navbar-brand" href="index.html" id="navh">
                      <img src="/images/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
                      Hammad International School
                    </a>
                    <form id="navform" class="form-inline">
                        <a href="#" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true" data-toggle="modal" data-target="#staticBackdrop"><i class="fa fa fa-user"></i> Sign Up</a>
                    </form>
                    <span id="menu" style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; MENU</span>
                    <div id="mySidenav" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        <a data-toggle="modal" data-target="#staticBackdrop">Register</a>
                        <a href="#">Login</a>
                      </div>
                  </nav>
            </div>
        </div>
    </div>

    <!--Showcase-->
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 showcase">
            <div class="showcasehead">
                <h1>Welcome to Hammad International School</h1>
                <p>Unlock your child's future with the best Education services offered!</p>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 login">
            <div class="showcaselog">
                <h4>Web Login Portal</h4>
                <div class="log-form">
                    <form ID="Loginform" runat="server">
                        <p id="Logierror">All fields must be filled!</p>
                        <div class="form-group">
                          <label for="formGroupExampleInput">User ID:</label>
                          <input type="text" class="form-control" ID="formid" name="formid" placeholder="Please Enter Your User ID">
                            <input id="Text1" type="text" />
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput">User Name:</label>
                            <input type="text" class="form-control" id="formname" placeholder="Please Enter Your User Name">
                          </div>
                          <div class="form-group">
                            <label for="inputPassword6">Password:</label>
                            <input type="password" id="inputPassword" class="form-control" aria-describedby="passwordHelpInline">
                            <small id="passwordHelpInline" class="text-muted">
                              Must be 8-20 characters long.
                            </small>
                          </div>
                          <a href="" id="forgot" data-toggle="modal" data-target="#staticBackdrop1">Click me if you Forgot Your Password?</a><br><br>
                        <label for="formGroupExampleInput">Login As:</label>
                        <select class="custom-select" id="selecteditem">
                            <option value="1">Admin</option>
                            <option value="2">Head Teacher</option>
                            <option value="3">Director</option>
                            <option value="4">DOS</option>
                            <option value="5">Accountant</option>
                            <option value="6">Teacher</option>
                            <option value="7">Class Teacher</option>
                            <option value="8">Librarian</option>
                            <option value="9">Student</option>
                            <option value="10">Parent</option>
                        </select>
                        <asp:Button type="submit" class="btn btn-outline-danger" id="LoginBtn" runat="server" Text="LOGIN" OnClick="LoginBtn_Click" />
                      </form>
                </div>
            </div>
        </div>
    </div>


    <!--About Section-->
    <section class="about">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                <div id="about-section">
                    <h4>About Our School</h4>
                    <hr>
                    <p>Hammad International School is a Registered and licensed primary International School Located in the heart of Kampala, the Capital City of Uganda. We offer both curriculums i.e Arabic and English based on the International curriculum. With the experience of over 10 years in the education sector, we have the best teacher in the country and best learning facilities for your children. In addition we also have co-cirlicular activies including swimming, football, basketball, netball etc. For registration and interviews please feel free to contact us or come direct to the school to pick registration forms.</p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                <div id="contact">
                    <h4>For more Info</h4>
                    <hr>
                    <h6>Address:</h6>
                    <p>Plot 21/20 Kabusu, Mugwanya Road <br>P.O BOX 11787 Kampala, Uganda <br>+256 783 555307, +256 703 370037 <br>info@his.edu</p>
                </div>
            </div>
        </div>
    </section>

    <!--Footer-->

    <footer id="footer">
        <p>Copyright &copy; 2020 Hammad International School | Designed and maintained by AR TECHNOLOGIES Ltd</p>
    </footer>
    <!--End of Page-->

    <!--Modal for Registration/Sign Up-->
    <!-- Modal -->
    <div class="modal fade bd-example-modal-lg" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content" id="signup-modal">
            <div class="modal-header">
            <h4 class="modal-title" id="staticBackdropLabel">Parent's and Student's Sign Up form</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
                <p>Please Make Sure u have the student's number to sign up.</p>
                <p id="Log-error">All fields must be filled!</p>
                <!--Form-->
                <form id="signup">
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="inputSno">Student's Number:</label>
                        <input type="text" class="form-control" id="student-id" placeholder="Student's Number">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputName">First Name:</label>
                        <input type="text" class="form-control" id="first-name" placeholder="FirstName">
                      </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="inputSno">Last Name:</label>
                          <input type="text" class="form-control" id="last-name" placeholder="LastName">
                        </div>
                        <div class="form-group col-md-6">
                          <label for="inputName">Email:</label>
                          <input type="email" class="form-control" id="email-1" placeholder="example@email.com">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                          <label for="inputSno">Phone Number:</label>
                          <input type="text" class="form-control" id="phone-number" placeholder="256 700 000000">
                        </div>
                        <div class="form-group col-md-4">
                          <label for="inputName">Password:</label>
                          <input type="password" class="form-control" id="userpassword">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputName">Confirm Password:</label>
                            <input type="password" class="form-control" id="confirm-pass">
                          </div>
                    </div>
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="inputCity">Address</label>
                        <input type="text" class="form-control" id="inputCity">
                      </div>
                      <div class="form-group col-md-4">
                        <label for="inputState">Sign Up As:</label>
                        <select id="inputState" class="form-control">
                          <option value="1">Student</option>
                          <option value="2">Parent</option>
                        </select>
                      </div>
                      <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" class="form-control" id="inputZip">
                      </div>
                    </div>
                    <fieldset class="form-group">
                        <div class="row">
                          <legend class="col-form-label col-sm-2 pt-0">Gender:</legend>
                          <div class="col-sm-10">
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                              <label class="form-check-label" for="gridRadios1">
                                Male
                              </label>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                              <label class="form-check-label" for="gridRadios2">
                                Female
                              </label>
                            </div>
                          </div>
                        </div>
                      </fieldset>
                    <button type="button" class="btn btn-danger" data-dismiss="modal" id="mod-cancel">Cancel</button>
                    <button type="submit" class="btn btn-primary" >Sign Up</button>
                  </form>
            </div>
            <div class="modal-footer">
                <p><strong>NOTE: </strong> Please sign up only if you dont have login credentials.</p>
            </div>
        </div>
        </div>
    </div>
    <!--End of Modal for Registration/Sign Up-->


    <!--Modal for Password Forgotten-->

    <div class="modal fade bd-example-modal-lg" id="staticBackdrop1" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel1" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content" id="reset-pas">
          <div class="modal-header">
            <h5 class="modal-title">Password Reset Form</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form id="pass-help">
              <p id="Logerror">All fields must be filled!</p>
              <div class="form-group">
                <label for="exampleInputEmail1">User ID:</label>
                <input type="text" class="form-control" id="forgot-id" aria-describedby="emailHelp" placeholder="Enter your user ID">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">User Name:</label>
                <input type="text" class="form-control" id="forgot-name" aria-describedby="emailHelp" placeholder="Enter your user Name">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Email:</label>
                <input type="email" class="form-control" id="forgot-email" aria-describedby="emailHelp" placeholder="example@email.com">
              </div>
              <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
              <button type="submit" class="btn btn-primary">Reset</button>
            </form>
          </div>
          <div class="modal-footer">
            <!--For a message after submission-->
            <p id="forgot-msg"></p>
          </div>
        </div>
      </div>
    </div>
    <!--End of Modal for Forgot Password-->


    <!--Javascript Files and J Querry-->
    <script src="/js/jquery-3.4.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/hammad.js"></script>


</body>
</html>
