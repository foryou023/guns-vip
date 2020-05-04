package com.foryou.controller;

import com.foryou.domain.UserPo;
import com.foryou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    
    @RequestMapping("/findAll")
    @ResponseBody
    public List<UserPo> findAll(){
        System.out.println("控制器findAll执行了...");
        return userService.findAll();
    }
}
