package com.nucleus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController
{
    @RequestMapping("/Welcome")
    public String getpage()
    {
        return "Welcome";
}
}
