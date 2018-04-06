<%-- 
    Document   : admin
    Created on : 6 Apr, 2018, 8:15:12 PM
    Author     : mohnish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">

        <title>Admin</title>

        <style>
            .padding>li {
                margin-right: 50px;
            }


            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: grey;
                color: white;
                text-align: left;

            }

            .margin {
                margin-top: 5px;
                margin-left: 5px;

            }

            .js {
                margin-right: 8px;
            }
        </style>
        <script type="text/javascript">
            function validation() {
                var email = form1.email.value;
                var pass = form1.password.value;
                if (email == '')
                {
                    alert("Please Enter Email");
                    return false;
                }

                if (pass == '') {
                    alert("Please Enter Password");
                    return false;
                }

            }
            function validateFreeEmail(email)
            {

                var reg = /^([\w-\.]+@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)([\w-]+\.)+[\w-]{2,4})?$/
                if (reg.test(email))
                {
                    return true;
                } else
                {
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <br/>

        <div class="container" style="padding-top: 50px;">
            <center> <h2>Admin Login</h2></center>
            <br/>
            <div class="row">
                <div class="w-25 col-lg-4 offset-lg-4">
                    <form class="form-horizontal" role="form" id="form1" method="get" onsubmit= "return validation()">
                        <div id="name_error"></div>

                        <div class="form-group" id="email_form">
                            <label class="control-label col-sm-2" for="email">Email:</label>
                            <div class="col-sm-10">
                                <input type="email" id="email" class="form-control" placeholder="Enter email"/>
                            </div>
                        </div>


                        <div class="form-group" id="password_form">
                            <label class="control-label col-sm-2" for="pwd">Password:</label>
                            <div class="col-sm-10"> 
                                <input type="password" id="password" class="form-control" placeholder="Enter password">

                            </div>
                        </div>




                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <center>

                                    <button type="submit" name="register" value="Register" class="btn btn-default js btn">Submit</button>


                                </center> 
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>





        <jsp:include page="footer.jsp"/>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </body>
</html>
