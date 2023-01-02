package com.myspring.leeProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.leeProject.entity.MemberVO;
import com.myspring.leeProject.mappers.MemberDAO;


@Service
public class MemberService {
	@Autowired
	MemberDAO memberDAO;
	
	public List<MemberVO> listMembers() {
		return memberDAO.listMembers();
	}

}
