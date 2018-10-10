package com.webaid.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String deviceCheck(HttpServletRequest req, Model model) {
		logger.info("deviceCheck.");
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device.isMobile()){
			deviceType="mobile";
			logger.info(deviceType);
			
			return "main/mobileIndex";
		}else{
			deviceType="normal";
			logger.info(deviceType);
			
			return "main/index";
		}
	}*/
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("home");
		
		return "main/index";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		logger.info("test");
		
		return "test";
	}
	
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public String test2(Locale locale, Model model) {
		logger.info("test2");
		
		return "test2";
	}
	
}
