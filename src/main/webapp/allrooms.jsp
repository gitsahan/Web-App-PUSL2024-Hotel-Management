<%@ page import="com.example.testproj1.model.feedback" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@  page import="java.util.Iterator" %>
<%@ page import="com.example.testproj1.model.room" %>
<%--
  Created by IntelliJ IDEA.
  User: Kasun
  Date: 1/16/22
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get all bookings </title>
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
                    </li>     <li class="nav-item">
                    <a class="nav-link" href="/rooms">   Rooms </a>
                </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/book_room"> Book Now</a>
                    </li>              </ul>
               <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</header>

<br>
<br><br><br>
<center><h2>Our All Rooms</h2></center>
<br><br><br>
<div class="card" style="width: 18rem;padding: 0%;margin-left: 20%">
    <ul class="list-group list-group-flush">
<%
    List<room> feedbackList = (ArrayList) request.getAttribute("allrooms");
    Iterator<room> iterator = feedbackList.iterator();
    while (iterator.hasNext()) {
        room fb = iterator.next();
%>



        <div class="card">
            <div class="card-body">
                <li class="list-group-item">Room ID = <%= fb.getRoom_id()%> </li>
                <li class="list-group-item"> Room Price =  <%= fb.getPrice()%> </li>
                <li class="list-group-item">About the Room =  <%= fb.getAboutroom()%> </li>

            </div>
        </div>

        <br><br>


<%
    }
%>
    </ul>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</html>
