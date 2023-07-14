<%--
  Created by IntelliJ IDEA.
  User: dasith
  Date: 1/10/22
  Time: 10:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
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

<h2>booking</h2>

<form action='/book_room' METHOD='POST'>

    <label for="booking_id">booking_id </label><br>
    <input type="text" id="booking_id" name="booking_id"><br>


    <label for="room_id">room_id </label><br>
    <input type="text" id="room_id" name="room_id"><br>



    <label for="customer_name">customer_name </label><br>
    <input type="text" id="customer_name" name="customer_name"><br>


    <label for="booking_date">booking_date </label><br>
    <input type="date" id="booking_date" name="booking_date"><br>



    <label for="customer_mail">customer_mail </label><br>
    <input type="email" id="customer_mail" name="customer_mail"><br>

    <br>
    <input type="submit">


</form>


</body>
</html>

