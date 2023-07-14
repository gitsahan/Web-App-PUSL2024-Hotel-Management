package com.example.testproj1.dao;

import com.example.testproj1.model.booking;
import com.example.testproj1.model.room;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class viewrooms {
    public List<room> getalltherooms(){
        List<room> rooms = new ArrayList<>();

        try{
            Connection connection = dbconnection.getconnection();
            String sql = "select * from rooms";
            Statement st = connection.createStatement();
            ResultSet set = st.executeQuery(sql);

            while(set.next()){
                room bk = new room();
                bk.setAboutroom(set.getString("aboutroom"));
                bk.setPrice(set.getInt("price"));
                bk.setRoom_id(set.getInt("room_id"));
                rooms.add(bk);
            }
        }
        catch (SQLException exception) {
            exception.printStackTrace();
        }

        return rooms;
    }
}
