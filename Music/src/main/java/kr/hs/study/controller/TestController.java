package kr.hs.study.controller;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.hs.study.dto.MusicDTO;

public class TestController {
	@Autowired
	SqlSessionTemplate  sessionTemplate;
	
	@GetMapping("/add")
	public String add() {
		return "music/add";
	}
	
	@PostMapping("/add")
	public String add(@ModelAttribute MusicDTO dto) {
		return "result";
	}
	@GetMapping
	public String list() {
		return "music/list";
	}
}
