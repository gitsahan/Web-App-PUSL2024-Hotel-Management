package com.example.testproj1.dao;

import com.mysql.cj.protocol.Resultset;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class updatePayment {
    public boolean finishPayment(String payment_id, String booking_id) throws SQLException {
        boolean status = false;

        Connection con = dbconnection.getconnection();
        // update booking set payment_id="12", paymentComplete=1 where booking_id=1;
        String sql = "update booking set payment_id=? ,paymentComplete=1 where booking_id=?";

        PreparedStatement statement = con.prepareStatement(sql);
        statement.setNString(1,payment_id);
        statement.setString(2, booking_id);
        //System.out.println(statement);
        int set = statement.executeUpdate();

        if(set ==1){
            System.out.println(set);
            status = true;
        }
        return status;
    }
}
