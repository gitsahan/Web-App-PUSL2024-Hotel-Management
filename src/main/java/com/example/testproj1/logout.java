package com.example.testproj1;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "logout_servlet", value = "/logout")
public class logout extends HttpServlet {
    private String message;


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session=request.getSession();
        session.invalidate();
        PrintWriter out = response.getWriter();
        out.print("<html> You are successfully logged out! <br> <a href='/'> back to home </a>");
    }

    public void destroy() {
    }
}