package kr.hs.study.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.hs.study.model.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSessionTemplate sqlsessiontemplate;
	
	public List<MemberDTO> list() {
		// TODO Auto-generated method stub
		System.out.println("1");
		return sqlsessiontemplate.selectList("member.list");
	}

	public void insert(MemberDTO dto) {
		// TODO Auto-generated method stub

	}

	public MemberDTO read(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

}
