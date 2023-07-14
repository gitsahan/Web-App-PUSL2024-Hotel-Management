package com.example.testproj1.dao;

import com.example.testproj1.model.feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class getallfeedback {
    public List<feedback> getfeedbacks(){

        List<feedback> feedbackArray = new ArrayList<>();
        feedback fb = null;

        try{
            Connection connection = dbconnection.getconnection();
            String sql = "select * from feedback";
            Statement st = connection.createStatement();
            ResultSet set = st.executeQuery(sql);

            while(set.next()){
                fb = new feedback();
                fb.setCustomer_name(set.getString("customer_name"));
                fb.setContent(set.getString("content"));
                feedbackArray.add(fb);
            }
        }
        catch (SQLException exception) {
            exception.printStackTrace();
        }

        return feedbackArray;
    }
}
