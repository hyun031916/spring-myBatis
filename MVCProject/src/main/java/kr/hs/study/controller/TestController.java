package kr.hs.study.controller;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.hs.study.model.dto.HapDTO;

@Controller
public class TestController {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	@GetMapping("/add")
	public String add() {
		return "add_form";
	}
	
	@PostMapping("/add")
	public String add_re(@ModelAttribute HapDTO dto, Model model) {
		int n = dto.getN();
		int m = dto.getM();
		int sum = 0;
		for(int i = n; i <= m; i++) {
			sum += i;
		}
		model.addAttribute("add", sum);
		return "add";
	}
	
	@GetMapping("/gugudan")
	public String gugudan() {
		return "gugudan_form";
	}
	
	@PostMapping("/gugudan")
	public String gugudan_re(@RequestParam int dan, Model model) {
		String result = "";
		for(int i = 1; i <=9; i++) {
			result += dan+"*"+i+"="+(dan*i)+", ";
		}
		model.addAttribute("list", result);
		return "gugudan";
	}	
}