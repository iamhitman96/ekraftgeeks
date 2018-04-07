<%-- 
    Document   : header
    Created on : 21-Mar-2018, 18:53:05
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

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
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">


                <a class="navbar-brand" href="#">
                    <img src="C:\Users\Shubham\Desktop\Project\img.jpg" width="30" height="30" class="d-inline-block align-top" alt=""> Library
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>



                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav mx-auto padding ">
                        <li class="nav-item">
                            <a class="nav-link" href="home.jsp">Home

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="aboutus.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contactus.jsp">Contact US</a>
                        </li>


                    </ul>
                    <%
                        HttpSession sessions = request.getSession(false);
                        if ((String) sessions.getAttribute("token") != null) {
                    %>

                    <a href="signout" class="btn btn-outline-secondary" role="button" aria-pressed="true" style="margin-right: 1% ">Signout</a>


                    <%
                    } else {
                    %>

                    <a href="Login.jsp" class="btn btn-outline-secondary" role="button" aria-pressed="true" style="margin-right: 1% ">Login</a>
                    <a href="MemberRegistration.jsp" class="btn btn-outline-secondary" role="button" aria-pressed="true">Register</a>

                    <%
                        }

                    %>

                </div>
            </nav>


        </div>

    </body>
</html>
