package controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController {

	//@RequestMapping("/test")
	public String test() {
		//return "/WEB-INF/view/test.jsp";
		return "test";
	}
	
	@RequestMapping("/form")
	public String form() {
		return "form";
	}
	
	@ResponseBody
	@PostMapping(value = "/formProc")
	public String home(@RequestBody String json) {
		System.out.println(json);
		return json;
	}
	// home.jsp
	/*
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
	 * index() { return "home"; }
	 * 
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/test", method = RequestMethod.POST) public void
	 * init(@RequestBody String data) { System.out.println(data); // {name=kim,
	 * age=30} 출력 }
	 */
	
}
