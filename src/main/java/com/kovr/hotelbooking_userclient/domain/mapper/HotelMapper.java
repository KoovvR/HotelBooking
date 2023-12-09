package com.kovr.hotelbooking_userclient.domain.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.kovr.hotelbooking_userclient.domain.entity.Hotel;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HotelMapper extends BaseMapper<Hotel> {
}
