<%-- 
    Document   : Login
    Created on : 6 Apr, 2018, 7:52:22 PM
    Author     : mohnish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <title>Login</title>
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
    </head>
    <body>

        <%

            if (request.getAttribute("alert") != null) {
        %>

        <script>
            alert('<%=request.getAttribute("alert")%>');
        </script>
        <%
            }

        %>
        <jsp:include page="header.jsp"/>



        <div class="container" style="padding-top: 50px;">
            <center> <h2>Login Form</h2></center>

            <br/>
            <div class="row">
                <div class="w-25 col-lg-4 offset-lg-4">
                    <form class="form-horizontal" action="login" method="post">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">Email:</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" name="email" placeholder="Enter email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">Password:</label>
                            <div class="col-sm-10"> 
                                <input type="password" class="form-control" name="password" placeholder="Enter password">
                            </div>
                        </div>

                        <div class="form-group"> 
                            <div class="col-sm-offset-2 col-sm-10">
                                <center>
                                    <button type="submit" class="btn btn-default js">Submit</button>

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
