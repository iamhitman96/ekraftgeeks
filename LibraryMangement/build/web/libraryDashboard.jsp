<%-- 
    Document   : libraryDashboard
    Created on : 6 Apr, 2018, 8:08:10 PM
    Author     : mohnish
--%>

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
        <jsp:include page="header.jsp"/>
        <br/>


        <div class="container-fluid">


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
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="" data-whatever="@mdo">View Books</button>

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
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="" data-whatever="@mdo">View Issue Books</button>

                                    </a>
                                </li>
                                <li class="nav-item lead">
                                    <a class="nav-link" href="#">
                                        <span data-feather="layers"></span>
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2" data-whatever="@mdo">Return Books</button>

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
                            <form>

                                <div class="form-group">
                                    <label for="bookid" class="col-sm-3 control-label">Book Id</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="bookid" placeholder="Give the Book Id" class="form-control" autofocus>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="bookName" class="col-sm-3 control-label">Book Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="bookName" placeholder="Give the Book Name" class="form-control" autofocus>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="authorname" class="col-sm-3 control-label">Author Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="authorname" placeholder="Give the author name" class="form-control" autofocus>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="genre" class="col-sm-3 control-label">Genre</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="genre" placeholder="Give the Genre of the Book" class="form-control" autofocus>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="cost" class="col-sm-3 control-label">Cost</label>
                                    <div class="col-sm-9">
                                        <input type="number" id="cost" placeholder="Give the cost of the Book" class="form-control" autofocus>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="publisher" class="col-sm-3 control-label">Publisher</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="publisher" placeholder="Give the Publisher" class="form-control" autofocus>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="edition" class="col-sm-3 control-label">Edition</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="edition" placeholder="Give the Edition of the Book" class="form-control" autofocus>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="language" class="col-sm-3 control-label">Language</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="language" placeholder="Give the Language of the Book" class="form-control" autofocus>

                                    </div>
                                </div>
                                <div class="col-sm-offset-2 col-sm-10">
                                    <center>
                                        <button type="submit" class="btn btn-default js">Add Book</button>
                                        <button type="cancel" class="btn btn-default js">Cancel</button>
                                    </center>
                                </div>
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
                        <form>

                            <div class="form-group">
                                <label for="bookid" class="col-sm-3 control-label">Book Id</label>
                                <div class="col-sm-9">
                                    <input type="number" id="bookid" placeholder="Give the Book Id" class="form-control" autofocus>

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="bookName" class="col-sm-3 control-label">Member ID</label>
                                <div class="col-sm-9">
                                    <input type="number" id="memberid" placeholder="Give the Member id" class="form-control" autofocus>

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="authorname" class="col-sm-3 control-label">Date Issue</label>
                                <div class="col-sm-9">
                                    <input type="date" id="authorname" placeholder="Give the date issue" class="form-control" autofocus>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="genre" class="col-sm-3 control-label">Date Return</label>
                                <div class="col-sm-9">
                                    <input type="date" id="genre" placeholder="Give the return date of Book" class="form-control" autofocus>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="publisher" class="col-sm-3 control-label">Late Fees</label>
                                <div class="col-sm-9">
                                    <input type="number" id="publisher" placeholder="Give the Publisher" class="form-control" autofocus>
                                </div>
                            </div>
                            <div class="col-sm-offset-2 col-sm-10">
                                <center>
                                    <button type="submit" class="btn btn-default js">Submit</button>
                                    <button type="cancel" class="btn btn-default js">Cancel</button>
                                </center>
                            </div>
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
                    <form>

                        <div class="form-group">
                            <label for="bookid" class="col-sm-3 control-label">Book Id</label>
                            <div class="col-sm-9">
                                <input type="number" id="bookid" placeholder="Give the Book Id" class="form-control" autofocus>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="bookName" class="col-sm-3 control-label">Member ID</label>
                            <div class="col-sm-9">
                                <input type="number" id="memberid" placeholder="Give the Member id" class="form-control" autofocus>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="authorname" class="col-sm-3 control-label">Date Return</label>
                            <div class="col-sm-9">
                                <input type="date" id="authorname" placeholder="Give the date issue" class="form-control" autofocus>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="genre" class="col-sm-3 control-label">Date Issue</label>
                            <div class="col-sm-9">
                                <input type="date" id="genre" placeholder="Give the return date of Book" class="form-control" autofocus>
                            </div>
                        </div>
                        <div class="col-sm-offset-2 col-sm-10">
                            <center>
                                <button type="submit" class="btn btn-default js">Submit</button>
                                <button type="cancel" class="btn btn-default js">Cancel</button>
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
