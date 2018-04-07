<%-- 
    Document   : MemberRegistration
    Created on : 6 Apr, 2018, 7:55:43 PM
    Author     : mohnish
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <title>Register</title>
    </head>
    <body>
         <%
            HttpSession sessions = request.getSession(false);
            if ((String) sessions.getAttribute("token") != null) {

                sessions.invalidate();

            }

        %>
        <jsp:include page="header.jsp"/>
       
        <div class="container">
            <form class="form-horizontal" action="register" method="post" role="form">
                <div class="w-75 col-lg-8 offset-lg-2">
                    <center>
                        <h2>Member Registration Form</h2>
                    </center>
                    <div class="form-group">
                        <label for="firstName" class="col-sm-3 control-label">First Name</label>
                        <div class="col-sm-9">
                            <input type="text"  name="firstName" placeholder="First Name" class="form-control" required >

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lastName" class="col-sm-3 control-label">Last Name</label>
                        <div class="col-sm-9">
                            <input type="text" name="lastName" placeholder="Last Name" class="form-control" required >

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="age" class="col-sm-3 control-label">Enter Age</label>
                        <div class="col-sm-9">
                            <input type="number" name="age" placeholder="Age" class="form-control" required >

                        </div>
                    </div>

                    <%                        Calendar cal = Calendar.getInstance();
                        Date today = cal.getTime();
                        cal.add(Calendar.YEAR, -18); // to get previous year add -1
                        Date oldDate = cal.getTime();
                        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                        String newstring = dateFormat.format(oldDate);

                    %>
                    <div class="form-group">
                        <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                        <div class="col-sm-9">
                            <input type="date" name="dob" class="form-control" max="<%=newstring%>" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-3">Gender</label>
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label class="radio-inline">
                                        <input type="radio" id="femaleRadio" name="gender" value="Female">Female
                                    </label>
                                </div>
                                <div class="col-sm-4">
                                    <label class="radio-inline">
                                        <input type="radio" id="maleRadio" name="gender" value="Male" checked="true">Male
                                    </label>
                                </div>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address" class="col-sm-3 control-label">Enter Address</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" required rows="5" name="address" class="form-control" required placeholder="Full Address"></textarea>

                            </div>
                        </div>

                        <div class="form-group">
                            <label for="phone" class="col-sm-3 control-label">Phone Number</label>
                            <div class="col-sm-9">
                                <input type="number" name="phoneNumber" placeholder="Phone Number" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email" class="col-sm-3 control-label">Email</label>
                            <div class="col-sm-9">
                                <input type="email" name="email" placeholder="Email" class="form-control" required>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="password" class="col-sm-3 control-label">Enter Password</label>
                            <div class="col-sm-9">
                                <input type="password" name="password" placeholder="Password" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-9 col-sm-offset-3">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">I accept Terms and Condition

                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <center>
                                <button type="submit" class="btn btn-default js">Submit</button>

                            </center>
                        </div>


                    </div>


                </div>
            </form>
        </div>



        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </body>
</html>
