package com.example.testproj1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "login servlet", value = "/login")
public class loginservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("name");
        String password = req.getParameter("password");

        if(username.equals("admin") && password.equals("admin")){
            HttpSession session = req.getSession();
            session.setAttribute("name", "admin");
            req.getRequestDispatcher("/welcome.jsp").forward(req,resp);
        }
        else{
            resp.sendRedirect("/login");
        }
    }


}
