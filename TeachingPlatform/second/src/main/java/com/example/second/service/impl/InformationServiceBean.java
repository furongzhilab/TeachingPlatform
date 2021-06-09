package com.example.second.service.impl;


import com.example.second.dao.InformationDao;
import com.example.second.entity.Information;
import com.example.second.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class InformationServiceBean implements InformationService {
    @Autowired
    private InformationDao informationDao;

    public List<Information> findAllInfos() {
        return this.informationDao.findAllInfos();
    }
    
    @Transactional
    public void addInfo(Information information) {
        this.informationDao.addInfo(information);
    }
}
