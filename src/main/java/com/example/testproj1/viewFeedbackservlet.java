package com.example.testproj1;

import com.example.testproj1.dao.getallfeedback;
import com.example.testproj1.model.feedback;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "view feedback", value = "/feedback")
public class viewFeedbackservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getallfeedback gtf = new getallfeedback();
        List<feedback> feedbackArray = new ArrayList<>();

        feedbackArray = gtf.getfeedbacks();
        req.setAttribute("allfeedback", feedbackArray);
        req.getRequestDispatcher("/admin/allfeedback.jsp").forward(req, resp);
    }
}
