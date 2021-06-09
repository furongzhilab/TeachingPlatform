package com.example.second.dao;

import com.example.second.entity.Information;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component(value = "InformationDao")
public interface InformationDao {
    List<Information> findAllInfos();

    void addInfo(Information information);
}
