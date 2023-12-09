package com.kovr.hotelbooking_userclient.domain.service.impl;

import com.kovr.hotelbooking_userclient.domain.entity.Hotel;
import com.kovr.hotelbooking_userclient.domain.mapper.HotelMapper;
import com.kovr.hotelbooking_userclient.domain.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HotelServiceImpl implements HotelService {

    @Autowired
    private HotelMapper hotelMapper;

    //    private Gson gson = new Gson();
    @Override
    public List<Hotel> getAllHotels() {
//        List<Hotel> hotels = hotelMapper.selectList(null);
//        return gson.fromJson(hotels);
        return hotelMapper.selectList(null);
    }
}
