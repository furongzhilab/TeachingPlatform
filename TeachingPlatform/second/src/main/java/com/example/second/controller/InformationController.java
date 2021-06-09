package com.example.second.controller;

import com.example.second.entity.Information;
import com.example.second.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/information")
@CrossOrigin
public class InformationController {

    @Autowired
    InformationService informationService;

    @GetMapping("/findAllInfos")
    public List<Information> findAllInfos() {
        return this.informationService.findAllInfos();
    }
    
    @PostMapping("/addInfo")
    public void addInfo(@RequestBody Information information) {
        this.informationService.addInfo(information);
    }

}
