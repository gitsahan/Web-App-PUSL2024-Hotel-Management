<%@ page import="com.example.testproj1.model.feedback" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.example.testproj1.dao.getallrooms" %>
<%@ page import="com.example.testproj1.model.booking" %><%--

  Created by IntelliJ IDEA.
  User: dasith
  Date: 1/18/22
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>panel</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/all_bookings">view all bookings</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<br>
<center><h1>Admin Panel</h1></center>



<br>


<div class="feedbacks" style="margin-left: 10%;margin-right: 10%;">
<h1> feedbacks</h1>
<div class="feedbackcontent">
    <table>



    <%
        List<feedback> feedbackList = (ArrayList) request.getAttribute("allfeedback");
        Iterator<feedback> iterator = feedbackList.iterator();
        while (iterator.hasNext()) {
            feedback fb = iterator.next();
    %>
    <br>
   <th style="margin-left: 10% !important;">
       <div class="card" style="width: 18rem;">
           <ul class="list-group list-group-flush">
               <li class="list-group-item"> feedback = <%= fb.getContent()%> </li>
               <li class="list-group-item"> name = <%= fb.getCustomer_name()%> </li>

           </ul>
       </div>
   </th>


    <%
        }
    %>
    </table>
</div>
    <br><br>
    <hr>
    <br><br>
    <h1> All Bookings</h1>

    <br><br>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">booking id</th>
            <th scope="col">customer name</th>
            <th scope="col">date</th>
            <th scope="col">customer email</th>
        </tr>
        </thead>
        <tbody>
        <%
            getallrooms allr = new getallrooms();
            List<booking> bookings = allr.getbookings();

            if(bookings!=null){
                Iterator<booking> iterator2 = bookings.iterator();

                while (iterator2.hasNext()) {
                    booking b = iterator2.next();

        %>

        <tr>
            <th></th>
            <td><%= booking.getBooking_id()%></td>
            <td><%= booking.getCustomer_name()%></td>
            <td> <%= booking.getBooking_date()%></td>
            <td> <%= booking.getCustomer_mail()%></td>
        </tr>


        </tbody>

        <%
            }
        }else{
        %>

        <p> no bookings found. </p>

        <%
            }
        %>
    </table>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>
