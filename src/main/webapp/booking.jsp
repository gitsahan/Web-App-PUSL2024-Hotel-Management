<%@ page import="com.example.testproj1.model.booking" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.example.testproj1.dao.getallrooms" %><%--
  Created by IntelliJ IDEA.
  User: dasith
  Date: 1/10/22
  Time: 10:07 PM
  To change this template use File | Settings | File Templates.
  THIS IS A PART OF ADMIN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">ZAPAYA</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/rooms">     Rooms </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/book_room"> Book Now</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</header>

<br><br><br>
<%
    getallrooms allr = new getallrooms();
    List<booking> bookings = allr.getbookings();

    if(bookings!=null){
        Iterator<booking> iterator = bookings.iterator();

        while (iterator.hasNext()) {
            booking b = iterator.next();

%>

<div class="card">
    <div class="card-body">
        <%= booking.getBooking_id()%>
        <%= booking.getCustomer_name()%>
        <%= booking.getBooking_date()%>
        <%= booking.getCustomer_mail()%>
    </div>
</div>



<br>

<%
     }
    }else{
%>

<p> no bookings found. </p>

<%
    }
%>
</body>
</html>
