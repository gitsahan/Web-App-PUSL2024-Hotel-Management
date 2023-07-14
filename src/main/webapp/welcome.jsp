<%--
  Created by IntelliJ IDEA.
  User: dasith
  Date: 1/12/22
  Time: 11:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = (String) session.getAttribute("name");

    if(name == null){
%>

please login

<%
    }
    else {

%>
<br><br>
<center><h2>Welcome ZAPAYA Admin :- We are happy to have you here view the all feedbacks here.</h2></center>
<br><br><br>

<center><h3><a href="/admin"> Check Out the ZAPAYA Admin Panel </a></h3></center>

<%
    }
%>
</body>
</html>
