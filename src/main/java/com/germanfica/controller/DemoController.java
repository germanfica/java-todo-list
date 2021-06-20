package com.germanfica.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;

@Slf4j
@Controller
public class DemoController {

    // THIS IS THE KEY FOR API
    // http://localhost:8080/todo-list/hello
    @ResponseBody
    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

    // http://localhost:8080/todo-list/welcome
    @GetMapping("welcome")
    public String welcome(Model model) {
        // First way of adding attributes
        model.addAttribute("user", "Tim");
        log.info("model= {}", model);
        // prefix + name + suffix
        // /WEB-INF/view/welcome.jsp
        return "welcome";
    }

    // Second way of adding attributes
    @ModelAttribute("welcomeMessage")
    public String welcomeMessage() {
        log.info("welcomeMessage() called");
        return  "Welcome to this Demo Application";
    }
}
