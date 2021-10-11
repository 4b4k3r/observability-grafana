package com.jm.actuator;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController
{
    @GetMapping(path = "/hello")
    public String greetings()
    {
        return "hello";
    }
}
