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
	
//	@GetMapping("/delete")
//	public String delete(@RequestParam String user_id) {
//		//user_id: kim
//		sessionTemplate.delete("test_db.delete_data", user_id);
//		return "result";
//	}
//	
//	@GetMapping("/update")
//	public String update(@RequestParam String user_id) {
//		sessionTemplate.update("test_db.update_data", user_id);
//		return "result";
//	}
}