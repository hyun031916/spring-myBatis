package kr.hs.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class GugudanController {
	@GetMapping("/gugu")
	public String gugu() {
		return "gugu/input";
	}

	@PostMapping("/gugu_result")
	public String gugu_re() {
		
	
		System.out.println("gugu");
		return "gugu/result";
	}
}
