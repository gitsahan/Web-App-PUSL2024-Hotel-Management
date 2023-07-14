package com.example.testproj1;

import com.example.testproj1.dao.updatePayment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "finish the payment", value = "/payment/finish")
public class finishpayment extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // http://localhost:8080/payment/finish?payment_id=7FV809124V199553W&payid=1

        String payment_id = req.getParameter("payment_id");
        String payid= req.getParameter("payid");

        updatePayment complete = new updatePayment();
        boolean status = false;
        try {
            status = complete.finishPayment(payment_id, payid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PrintWriter io = resp.getWriter();
        io.println("<html>");
        if(status){
            io.println("payment successful thanks for the order<br>");

        }
        else{
            io.println("something went wrong while completing the payment please contact the admin<br>");
        }
        io.println("<a href='/'> back to home </a>");

    }
}
