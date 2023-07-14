package com.example.testproj1;

import com.example.testproj1.dao.addfeedbackdao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "add feedback", value = "/addfeedback")
public class addfeedback extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String customer_name;
        String content;

        customer_name = req.getParameter("name");
        content = req.getParameter("content");

        addfeedbackdao bkr = new addfeedbackdao();
        boolean isok = false;

        try {
            isok = bkr.addfeedbacku(customer_name, content);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        PrintWriter io = resp.getWriter();
        io.println("<html>");
        io.println("added review  => "+ isok);


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter io = resp.getWriter();
        io.println("<html>");
        io.println("createa form to post request ");
    }
}
