package kr.hs.study.controller;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.hs.study.model.dto.MusicDTO;

@Controller
public class TestController {
	@Autowired
	SqlSessionTemplate sessionTemplate;
	
	@GetMapping("/add")
	public String add() {
		return "music/add";
	}
	
	@PostMapping("/add")
	public String add_re(@ModelAttribute MusicDTO dto) {
		sessionTemplate.insert("music.add", dto);
		return "result";
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		List<MusicDTO> list = sessionTemplate.selectList("music.list");
		model.addAttribute("list", list);
		return "music/list";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam int id) {
		sessionTemplate.delete("music.delete", id);
		return "music/delete";
	}
	
	@GetMapping("/modify")
	public String update(@RequestParam int id, Model model) {
		MusicDTO dto = sessionTemplate.selectOne("music.selectOne", id);
		model.addAttribute("dto", dto);
		return "music/modify";
	}
	
	@PostMapping("modify")
	public String update(MusicDTO dto) {
		System.out.println("dto"+dto.getId());
		sessionTemplate.update("music.update", dto);
		return "music/modify_result";
	}
	
	@GetMapping("/search")
	
	public String search() {
		return "music/search";
	}
	@PostMapping("search")
	public String search(@RequestParam String song_title, Model model) {
		List<MusicDTO> list = sessionTemplate.selectList("music.search", song_title);
		model.addAttribute("list", list);
		return "music/search_result";
	}
}