package com.example.second.service;

import com.example.second.entity.Information;

import java.util.List;

public interface InformationService {
    public List<Information> findAllInfos();

    public void addInfo(Information information);
}
