package com.example.testproj1.model;
import java.util.Date;
import java.util.Date;

public class booking {
    private static long booking_id;
    private static int room_id;
    private static String customer_name;
    private static Date booking_date;
    private static String customer_mail;


    public static long getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(long booking_id) {
        this.booking_id = booking_id;
    }

    public static int getRoom_id() {
        return room_id;
    }

    public void setRoom_id(int room_id) {
        booking.room_id = room_id;
    }

    public static String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        booking.customer_name = customer_name;
    }

    public static Date getBooking_date() {
        return booking_date;
    }

    public void setBooking_date(Date booking_date) {
        booking.booking_date = booking_date;
    }

    public static String getCustomer_mail() {
        return customer_mail;
    }

    public void setCustomer_mail(String customer_mail) {
        booking.customer_mail = customer_mail;
    }
}
