package com.example.testproj1.dao;

import java.sql.Connection;
import java.sql.SQLException;

public class addfeedbackdao {
    public Boolean addfeedbacku(
            String customer_name,
            String content
    ) throws SQLException {
        boolean status = false;

        Connection connection = dbconnection.getconnection();
        String sql = "insert into booking values(?,?);";
        java.sql.PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, customer_name);
        statement.setString(2,content);

        int s = statement.executeUpdate();

        if(s==1){
            status = true;
        }
        return  status;

    }
}
