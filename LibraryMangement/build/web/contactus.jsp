<%-- 
    Document   : contactus
    Created on : 7 Apr, 2018, 2:44:57 PM
    Author     : mohnish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <style>
            * {
                box-sizing: border-box;
            }

            /* Style inputs */
            input[type=text], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }

            input[type=email], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            /* Style the container/contact section */
            .container {
                border-radius: 5px;

                padding: 10px;
            }

            /* Create two columns that float next to eachother */
            .column {
                float: left;
                width: 50%;
                margin-top: 6px;
                padding: 20px;
            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 600px) {
                .column, input[type=submit] {
                    width: 100%;
                    margin-top: 0;
                }
            }
        </style>

    </head>

    <body>

        <jsp:include page="header.jsp"/>
        <%
            if (request.getAttribute("alert") != null) {

        %>

        <script>alert('<%=request.getAttribute("alert")%>');</script>
        <%
            }
        %>
        <div class="container">
            <div style="text-align:center">
                <h2>Contact Us</h2>

            </div>
            <div class="row">
                <div class="column">
                    <div id="map" style="width:100%;height:500px"></div>
                </div>
                <div class="column">
                    <form action="requestQuery" method="post">
                        <label for="fname">First Name</label>
                        <input type="text" id="fname" name="firstName" placeholder="Your First name.." required>
                        <label for="lname">Last Name</label>
                        <input type="text" id="lname" name="lastName" placeholder="Your last name.." required>
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" placeholder="Your email Id.." required>
                        <label for="subject">Query</label>
                        <textarea id="subject" name="query" placeholder="Write something.." style="height:170px"></textarea>
                        <input type="submit" value="Submit">
                    </form>
                </div>
            </div>
        </div>

        <!-- Initialize Google Maps -->
        <script>
            function myMap() {
                var myCenter = new google.maps.LatLng(19.123562, 72.912714);
                var mapCanvas = document.getElementById("map");
                var mapOptions = {center: myCenter, zoom: 12};
                var map = new google.maps.Map(mapCanvas, mapOptions);
                var marker = new google.maps.Marker({position: myCenter});
                marker.setMap(map);
            }
        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-_vwqttQEKSpse34jNAdNg-iI7BFc_n4&callback=myMap"></script>



        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

    </body>
</html>
