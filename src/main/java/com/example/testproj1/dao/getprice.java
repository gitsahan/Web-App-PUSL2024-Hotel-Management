package com.example.testproj1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class getprice {
    public int requrestedprice(String id) throws SQLException {
        int price = 0;
        Connection connection = dbconnection.getconnection();
        String sql = "select price from rooms where room_id=(select room_id from booking where booking_id=?);";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, id);

        ResultSet set = statement.executeQuery();

        while(set.next()){
            price = set.getInt("price");
        }
        return price;

    }
}
