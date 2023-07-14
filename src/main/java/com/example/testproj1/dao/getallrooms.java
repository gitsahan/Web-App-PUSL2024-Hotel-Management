package com.example.testproj1.dao;

import com.example.testproj1.model.booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class getallrooms {
    public List<booking> getbookings(){
        List<booking> bookings = new ArrayList<>();

        try{
            Connection connection = dbconnection.getconnection();
            String sql = "select * from booking";
            Statement st = connection.createStatement();
            ResultSet set = st.executeQuery(sql);

            while(set.next()){
                booking bk = new booking();
                bk.setBooking_id(set.getLong("booking_id"));
                bk.setBooking_date(set.getDate("booking_date"));
                bk.setRoom_id(set.getInt("room_id"));
                bk.setCustomer_mail(set.getString("customer_mail"));
                bk.setCustomer_name(set.getString("customer_name"));
                bookings.add(bk);
            }
        }
        catch (SQLException exception) {
            exception.printStackTrace();
        }

        return bookings;
    }
}
