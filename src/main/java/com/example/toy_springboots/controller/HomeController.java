package com.example.toy_springboots.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = { "", "/", "/main" })
    public String main() {
        return "main";
    }
}
