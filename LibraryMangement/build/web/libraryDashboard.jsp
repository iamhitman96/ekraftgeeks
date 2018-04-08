<%-- 
    Document   : libraryDashboard
    Created on : 6 Apr, 2018, 8:08:10 PM
    Author     : mohnish
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Main.ConnectionProvider"%>
<%@page import="java.util.UUID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <title>Dashboard</title>
    </head>
    <body>
        <%
            HttpSession sessions = request.getSession(false);
            if (sessions.getAttribute("token") == null && sessions.getAttribute("type") == null) {
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.forward(request, response);
            }

            if (request.getAttribute("alert") != null) {

        %>

        <script>alert('<%=request.getAttribute("alert")%>');</script>
        <%
            }
        %>

        <br/>


        <div class="container-fluid">

            <div class="row">
                <div class="col-sm-12 offset-sm-11">
                    <a href="signout" class="btn btn-outline-danger" role="button" aria-pressed="true" style="margin-right: 1% ">Signout</a>


                </div>
            </div>

            <div class="container-fluid" style="float: left;">
                <div class="row">
                    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                        <div class="sidebar-sticky">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a class="nav-link active lead" href="#">
                                        <span data-feather="home"></span>
                                        Dashboard
                                        <span class="sr-only">(current)</span>

                                    </a>
                                </li>
                                <div class="dropdown-divider"></div>
                                <li class="nav-item lead">
                                    <a class="nav-link" href="#">
                                        <span data-feather="file"></span>
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"> Add Books </button>


                                    </a>
                                </li>
                                <li class="nav-item lead">
                                    <a class="nav-link" href="#">
                                        <span data-feather="shopping-cart"></span>
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#viewBook" data-whatever="@mdo">View Books</button>

                                    </a>
                                </li>
                                <li class="nav-item lead">
                                    <a class="nav-link" href="#">
                                        <span data-feather="users"></span>
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1" data-whatever="@mdo">Issue Books</button>

                                    </a>
                                </li>
                                <li class="nav-item lead">
                                    <a class="nav-link" href="#">
                                        <span data-feather="bar-chart-2"></span>
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#viewIssuedBook" data-whatever="@mdo">View Issue Books</button>

                                    </a>
                                </li>
                                <li class="nav-item lead">
                                    <a class="nav-link" href="#">
                                        <span data-feather="layers"></span>
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2" data-whatever="@mdo">Return Books</button>

                                    </a>
                                </li>

                                <li class="nav-item lead">
                                    <a class="nav-link" href="#">
                                        <span data-feather="layers"></span>
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#viewContactRequest" data-whatever="@mdo">Contact Request's</button>

                                    </a>
                                </li>

                            </ul>



                        </div>
                </div>

            </div>


            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Adding New Book</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="addbook" method="post">

                                <div class="form-group">
                                    <label for="bookid" class="col-sm-3 control-label">Book Id</label>
                                    <div class="col-sm-9">
                                        <%String uuid = UUID.randomUUID().toString().replace("-", "").substring(0, 7);%>
                                        <label class="form-control"><%=uuid%></label>
                                        <input type="text" hidden="true" value="<%=uuid%>" name="id" class="form-control">

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="bookName" class="col-sm-3 control-label">Book Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="name" placeholder="Give the Book Name" class="form-control" required>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="authorname" class="col-sm-3 control-label">Author Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="author" placeholder="Give the author name" class="form-control" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="language" class="col-sm-3 control-label">Language</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="language" placeholder="Give the Language of the Book" class="form-control" required>

                                    </div>
                                </div>
                                <div class="col-sm-offset-2 col-sm-10">
                                    <center>
                                        <button type="submit" class="btn btn-default js">Add Book</button>

                                    </center>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>


            <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Issue Book</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="issuebook" method="post">

                                <div class="form-group">
                                    <label for="bookid" class="col-sm-3 control-label">Book Id</label>
                                    <div class="col-sm-9">
                                        <select class="form-control" name="bookId" id="exampleFormControlSelect1">


                                            <%

                                                try {
                                                    Connection con = ConnectionProvider.getConnection();
                                                    Statement stmt = con.createStatement();
                                                    ResultSet rs = stmt.executeQuery("select * from book");

                                                    while (rs.next()) {
                                            %>
                                            <option value='<%=rs.getString("id")%>'><%=rs.getString("id")%>~<%=rs.getString("name")%>~<%=rs.getString("author")%></option>

                                            <%
                                                    }

                                                } catch (Exception e) {
                                                    out.print(e);
                                                }

                                            %>


                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="bookName" class="col-sm-3 control-label">Member ID</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="memberId" placeholder="Give the Member id" class="form-control" autofocus required>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="authorname" class="col-sm-3 control-label">Date Issue</label>
                                    <div class="col-sm-9">
                                        <input type="date" name="issueDate" id="issueDate" onchange="setDate();" class="form-control" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="genre" class="col-sm-3 control-label">Date Return</label>
                                    <div class="col-sm-9">
                                        <label class="form-control" id="returnDate">DD-MM-YYYY</label>
                                        <input type="text" hidden name="returnDate" id="returnDatehidden"   class="form-control" required>
                                    </div>
                                </div>

                                <div class="col-sm-offset-2 col-sm-10">
                                    <center>
                                        <button type="submit" class="btn btn-default js">Submit</button>

                                    </center>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>  


            <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Return Book</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="returnbook" method="post">

                                <div class="form-group">
                                    <label for="bookid" class="col-sm-3 control-label">Book Id</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="bookid" placeholder="Give the Book Id" class="form-control" autofocus>

                                    </div>
                                </div>

                                <div class="col-sm-offset-2 col-sm-10">
                                    <center>
                                        <button type="submit" class="btn btn-default js">Submit</button>                          
                                    </center>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>
            </div>




            <div class="modal fade bd-example-modal-lg" id="viewBook" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>

                                    <th scope="col">ID</th>
                                    <th scope="col">NAME</th>
                                    <th scope="col">AUTHOR</th>
                                    <th scope="col">LANGUAGE</th>
                                    <th scope="col">STATUS</th>
                                </tr>
                            </thead>
                            <tbody>


                                <%                                                                                try {
                                        Connection con = ConnectionProvider.getConnection();
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("select * from book");

                                        while (rs.next()) {
                                %>

                                <%
                                    if (rs.getString("flag").equals("F")) {
                                %>
                                <tr >
                                    <%
                                    } else {
                                    %>
                                <tr class="bg-warning">
                                    <%
                                        }
                                    %>

                                    <td><%=rs.getString("id")%></td>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("author")%></td>
                                    <td><%=rs.getString("language")%></td>


                                    <%
                                        if (rs.getString("flag").equals("F")) {
                                    %>
                                    <td>Not Issued</td>       
                                    <%
                                    } else {
                                    %>
                                    <td>Issued</td>       
                                    <%
                                        }
                                    %>



                                </tr>
                                <%
                                        }

                                    } catch (Exception e) {
                                        out.print(e);
                                    }

                                %>




                            </tbody>
                        </table>
                    </div>
                </div>
            </div>


            <div class="modal fade bd-example-modal-lg" id="viewIssuedBook" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>

                                    <th scope="col">ID</th>
                                    <th scope="col">NAME</th>
                                    <th scope="col">AUTHOR</th>
                                    <th scope="col">LANGUAGE</th>

                                </tr>
                            </thead>
                            <tbody>


                                <%                                                                                try {
                                        Connection con = ConnectionProvider.getConnection();
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("select * from book where flag='O'");

                                        while (rs.next()) {
                                %>

                                <tr>

                                    <td><%=rs.getString("id")%></td>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("author")%></td>
                                    <td><%=rs.getString("language")%></td>

                                </tr>
                                <%
                                        }

                                    } catch (Exception e) {
                                        out.print(e);
                                    }

                                %>




                            </tbody>
                        </table>
                    </div>
                </div>
            </div>


            <div class="modal fade bd-example-modal-lg" id="viewContactRequest" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>

                                    <th scope="col">ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Query</th>

                                </tr>
                            </thead>
                            <tbody>


                                <%                                                                                try {
                                        Connection con = ConnectionProvider.getConnection();
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("select * from contactrequest");

                                        while (rs.next()) {
                                %>

                                <tr>

                                    <td><%=rs.getString("id")%></td>
                                    <td><%=rs.getString("firstName")%> <%=rs.getString("lastName")%></td>
                                    <td><%=rs.getString("email")%></td>
                                    <td><%=rs.getString("description")%></td>

                                </tr>
                                <%
                                        }

                                    } catch (Exception e) {
                                        out.print(e);
                                    }

                                %>




                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <script>

                function setDate() {
                    var rawDate = document.getElementById("issueDate").value
                    var date = new Date(rawDate);
                    date.setDate(date.getDate() + 7);

                    var addedDate = date.getDate() + '-' + (date.getMonth() + 1) + '-' + date.getFullYear();

                    document.getElementById("returnDate").innerHTML = addedDate;
                    document.getElementById("returnDatehidden").value = addedDate;
                }

            </script>
            <jsp:include page="footer.jsp"/>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    </body>
</html>
