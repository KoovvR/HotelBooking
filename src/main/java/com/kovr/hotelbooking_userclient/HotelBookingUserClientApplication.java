package com.kovr.hotelbooking_userclient;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.kovr.hotelbooking_userclient.**.mapper")
public class HotelBookingUserClientApplication {

    public static void main(String[] args) {

        SpringApplication.run(HotelBookingUserClientApplication.class, args);
        System.out.println("------------------------");
        System.out.println("丨        启动成功       丨");
        System.out.println("------------------------");
    }

}
