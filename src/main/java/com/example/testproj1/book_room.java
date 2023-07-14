package com.example.testproj1;

import com.example.testproj1.dao.bookroom;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "book room", value = "/book_room")
public class book_room extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/booking/createBooking.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int room_id;
        String customer_name;
        String booking_date;
        String customer_mail;
        SimpleDateFormat formatter = new SimpleDateFormat("ddMMyyyyHHmmss");
        Date date = new Date();
        String booking_id = formatter.format(date);

        room_id = Integer.parseInt(req.getParameter("room_id"));
        customer_name = req.getParameter("customer_name");
        booking_date = req.getParameter("booking_date");
        customer_mail = req.getParameter("customer_mail");

        PrintWriter io = resp.getWriter();
        io.println("<html>");
        io.println(booking_date);
        io.println(room_id);
        io.println(customer_name);
        io.println(customer_mail);

        bookroom bkr = new bookroom();
        boolean isok = false;
        try {
            isok = bkr.createBooking(room_id, customer_name, booking_date, customer_mail , booking_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        io.println("update status => "+ isok);

        if(isok){
            resp.sendRedirect("/payment?id="+booking_id);
        }else{
            io.println("payment failed");
        }

    }
}
