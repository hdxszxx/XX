package com.XX.xx.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/test")
public class TestController {
	
	@RequestMapping("/test")
	public ModelAndView test1(HttpServletRequest request,HttpServletResponse response){
		return new ModelAndView("/index");
	}
}
