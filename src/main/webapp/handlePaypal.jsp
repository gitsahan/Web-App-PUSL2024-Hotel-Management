<%--
  Created by IntelliJ IDEA.
  User: dasith
  Date: 1/16/22
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>complete payment</title>
</head>
<body>
<script src="https://www.paypal.com/sdk/js?client-id=AbpKIgpm-K-6-0dxR8eRbr0eIqS2WJCi4dnxGpHdlL-J_0lYsAUW5zemISg3zBNd0VtcTHzXyTiIfTOl"></script>

<br>
<center>
<h1> complete the payment for <%=request.getAttribute("payment_id")%>!</h1>
</center>

<div class="card" style="margin-left: 30%;margin-right: 30%;margin-top: 2%;">
    <div class="card-body">
        <div id="paypal-button-container">
        </div>
    </div>
</div>

<script>
    paypal.Buttons({
        createOrder: function(data, actions) {
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: <%= request.getAttribute("payment_amount")%>
                    }
                }]
            });
        },
        onApprove: function(data, actions) {
            return actions.order.capture().then(function (details){
                alert('You have successfully complete payment ' + details.id);
                const p_id = <%=request.getAttribute("payment_id")%>
                document.location = "/payment/finish?payment_id="+details.id+"&payid="+p_id
                console.log(details)
            })
        }
    }).render('#paypal-button-container');

</script>


</body>
</html>
