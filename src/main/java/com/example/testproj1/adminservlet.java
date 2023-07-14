package com.example.testproj1;

import com.example.testproj1.dao.getallfeedback;
import com.example.testproj1.model.feedback;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "admin route", value = "/admin")
public class adminservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String name = (String) session.getAttribute("name");

        if(name == null){
            PrintWriter io = resp.getWriter();
            io.println("<html>");
            io.println("<h2> Access Denied </h1>");
        }
        else{
            getallfeedback gtf = new getallfeedback();
            List<feedback> feedbackArray = new ArrayList<>();

            feedbackArray = gtf.getfeedbacks();
            req.setAttribute("allfeedback", feedbackArray);
            req.getRequestDispatcher("/admin/dashboard.jsp").forward(req, resp);
        }
    }
}
