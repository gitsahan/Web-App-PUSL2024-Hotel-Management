package com.example.testproj1.dao;

import java.sql.Connection;
import java.sql.SQLException;

public class bookroom {
    public Boolean createBooking(
            int room_id,
            String customer_name,
            String booking_date,
            String customer_mail,
            String booking_id
    ) throws SQLException {
        boolean status = false;

        Connection connection = dbconnection.getconnection();
        String sql = "insert into booking (room_id, customer_name, booking_date, customer_mail, paymentComplete, payment_id, booking_id)  values " +
                "(?, ?, ?, ?,?, ?, ?);";
        java.sql.PreparedStatement statement = connection.prepareStatement(sql);

        statement.setString(1, String.valueOf(room_id));
        statement.setString(2,customer_name);
        statement.setString(3,booking_date);
        statement.setString(4,customer_mail);
        statement.setBoolean(5,false);
        statement.setString(6,"null");
        statement.setString(7, booking_id);

        System.out.println(statement);

        int s = statement.executeUpdate();

        if(s==1){
            status = true;
        }
        return  status;

    }
}
