package com.mycompany.app.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {


    @GetMapping("/")
    public String test(){
        String testStr = "Hello World!!!";
        System.out.println(testStr);

        return testStr;
    }

}
