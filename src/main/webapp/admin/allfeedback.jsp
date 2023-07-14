<%@ page import="com.example.testproj1.model.feedback" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@  page import="java.util.Iterator" %>
<%--
  Created by IntelliJ IDEA.
  User: dasith
  Date: 1/16/22
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>get all bookings </title>
</head>
<body>


<li><a href="/all_bookings">view all bookings</a> </li>


<div class="card" style="width: 18rem;">
    <ul class="list-group list-group-flush">
<%
    List<feedback> feedbackList = (ArrayList) request.getAttribute("allfeedback");
    Iterator<feedback> iterator = feedbackList.iterator();
    while (iterator.hasNext()) {
        feedback fb = iterator.next();
%>


        <li class="list-group-item"> <%= fb.getCustomer_name()%> </li>
        <li class="list-group-item"> <%= fb.getContent()%> </li>

<%
    }
%>
    </ul>
</div>
</body>
</html>
