package kr.hs.study.service;

import java.util.List;

import kr.hs.study.model.dto.MemberDTO;

public interface MemberService {
	public List<MemberDTO> list(); //select
	public void insert(MemberDTO dto); //insert
	public MemberDTO read(String userid);//select where userid=
	public boolean check(String userid, String passwd);
}
