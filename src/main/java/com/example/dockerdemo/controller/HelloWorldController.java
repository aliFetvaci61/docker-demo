package com.example.dockerdemo.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

	@GetMapping(value="/hello", produces = MediaType.TEXT_PLAIN_VALUE)
    public String index() {
        return "This is Home page";
    }
	
}
