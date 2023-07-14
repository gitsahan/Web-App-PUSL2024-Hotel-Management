package com.example.testproj1;

import com.example.testproj1.dao.getprice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "payment", value = "/payment")
public class paymentservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String payid = req.getParameter("id");

        getprice p = new getprice();
        int price = 0;

        try {
            price = p.requrestedprice(payid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PrintWriter io = resp.getWriter();

        if(price == 0){
            io.println("<html> payment id is invalid please check again.");
        }else{
            io.println("<html> "+price);
            req.setAttribute("payment_amount", price);
            req.setAttribute("payment_id", payid);
            req.getRequestDispatcher("/handlePaypal.jsp").forward(req,resp);
        }
    }
}
