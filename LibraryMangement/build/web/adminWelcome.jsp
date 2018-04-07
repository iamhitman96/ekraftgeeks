<%-- 
    Document   : adminWelcome
    Created on : 7 Apr, 2018, 6:10:38 PM
    Author     : mohnish
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Main.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 offset-sm-11">
                    <button class="btn btn-danger"> Signout</button>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6" >
                    <form style="padding: 50px" action="register" method="post">
                        <center>     <h3>Add Employee</h3></center>
                        <br/>
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
                        <input type="hidden" name="employee" value="true"/>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <div class="col-sm-6">
                    <form  style="padding: 50px" action="RemoveEmployee" method="post">
                        <center>     <h3>Remove Employee</h3></center>
                        <br/>
                        <div class="form-group">

                            <label for="exampleFormControlSelect1">Example select</label>
                            <select class="form-control" name="employeeId" id="exampleFormControlSelect1">

                                <%
                                    try {
                                        Connection con = ConnectionProvider.getConnection();
                                        Statement stmt = con.createStatement();
                                        Statement stmt2 = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("select email from login where flag='E'");

                                        while (rs.next()) {

                                            ResultSet rs2 = stmt2.executeQuery("select id,firstName,lastName from register where email='" + rs.getString("email") + "'");
                                            while (rs2.next()) {
                                %>
                                <option value="<%=rs2.getString("id")%>"><%= rs2.getString("firstName")%> <%= rs2.getString("lastName")%></option>
                                <%
                                            }
                                        }

                                    } catch (Exception e) {
                                        System.out.println(e);
                                    }


                                %>

                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                    <hr/>

                    <center>  <h3>List of Customers</h3></center>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Age</th>
                                <th scope="col">Gender</th>
                                <th scope="col">Email</th>

                                <th scope="col">Phone Number</th>
                                <th scope="col">DOB</th>
                            </tr>
                        </thead>
                        <tbody>


                            <%                                try {
                                    Connection con = ConnectionProvider.getConnection();
                                    Statement stmt = con.createStatement();
                                    Statement stmt2 = con.createStatement();
                                    ResultSet rs = stmt.executeQuery("select email from login where flag='C'");

                                    while (rs.next()) {

                                        ResultSet rs2 = stmt2.executeQuery("select * from register where email='" + rs.getString("email") + "'");
                            %>
                            <tr>
                                <%
                                    while (rs2.next()) {
                                %>
                                <td><%=rs2.getString("firstName")%> <%=rs2.getString("lastName")%></td>
                                <td><%=rs2.getString("age")%></td>
                                <td><%=rs2.getString("gender")%></td>
                                <td><%=rs2.getString("email")%></td>

                                <td><%=rs2.getString("phoneNumber")%></td>
                                <td><%=rs2.getString("dob")%></td>

                                <%
                                    }
                                %>

                            </tr>
                            <%
                                    }

                                } catch (Exception e) {
                                    System.out.println(e);
                                }


                            %>




                        </tbody>
                    </table>

                    <center>  <h3>List of Books</h3></center>
                    <table class="table table-striped  table-hover">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">First</th>
                                <th scope="col">Last</th>
                                <th scope="col">Handle</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>@fat</td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>Larry</td>
                                <td>the Bird</td>
                                <td>@twitter</td>
                            </tr>
                        </tbody>
                    </table>

                </div>



            </div>



        </div>







    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>
</html>
