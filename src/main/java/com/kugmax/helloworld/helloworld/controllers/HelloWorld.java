package com.kugmax.helloworld.helloworld.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorld {
    
    @RequestMapping("/")
    public String helloWorld() {
        return "Hello World!!76";
    }
}
