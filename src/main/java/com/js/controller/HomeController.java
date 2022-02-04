package com.js.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.js.service.MainService;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Data
@AllArgsConstructor
@Controller
@Log4j

public class HomeController {
	@Setter(onMethod_ = @Autowired)
	private MainService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("newp",service.newprolist());
		model.addAttribute("bestp",service.bestprolist());
		return "index";
	
	}
}
	
	
