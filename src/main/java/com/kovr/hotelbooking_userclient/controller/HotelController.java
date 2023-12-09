package com.kovr.hotelbooking_userclient.controller;

import com.kovr.hotelbooking_userclient.domain.entity.Hotel;
import com.kovr.hotelbooking_userclient.domain.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@ResponseBody
@RequestMapping("/user")
public class HotelController {
    @Autowired
    private HotelService hotelService;

    @GetMapping("/home")
    public List<Hotel> getAllHotels(){
        return hotelService.getAllHotels();
    }
}
