package com.kovr.hotelbooking_userclient.domain.entity;


import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("hotel")
public class Hotel {
    private int hotelId;
    private String hotelName;
    private String address;
    private int cityId;
}
