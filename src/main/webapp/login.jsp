<%--
  Created by IntelliJ IDEA.
  User: dasith
  Date: 1/12/22
  Time: 11:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>ZAPAYA Admin Login</title>
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


<br>
  <br>
  <br>
<center><h1>Login!</h1></center>
<br><br>1
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    <div class="card" style="margin-right: 20%;margin-left: 20%; padding: 7%">

        <form action="/login" method="post">
            <div class="mb-3">
                <label for="username" class="form-label">UserName</label>
                <input type="text" class="form-control" id="username" name="name" aria-describedby="username">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

    </div>
</div>

</body>
</html>
