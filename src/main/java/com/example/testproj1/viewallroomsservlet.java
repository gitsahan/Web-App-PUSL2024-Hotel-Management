package com.example.testproj1;

import com.example.testproj1.dao.getallfeedback;
import com.example.testproj1.dao.viewrooms;
import com.example.testproj1.model.feedback;
import com.example.testproj1.model.room;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "view rooms", value = "/rooms")
public class viewallroomsservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        viewrooms gtf = new viewrooms();
        List<room> feedbackArray = new ArrayList<>();

        feedbackArray = gtf.getalltherooms();
        req.setAttribute("allrooms", feedbackArray);
        req.getRequestDispatcher("/allrooms.jsp").forward(req, resp);
    }
}
