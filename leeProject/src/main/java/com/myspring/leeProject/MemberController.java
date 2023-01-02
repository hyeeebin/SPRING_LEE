package com.myspring.leeProject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.myspring.leeProject.service.MemberService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	
//	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	
	@Autowired 
	MemberService memberService;
	
	
	@RequestMapping(value = "/member/listMembers.do")
	public String listMembers(Model model) {
		
		model.addAttribute("list", memberService.listMembers());
		
		return "/member/listMembers";
	}
	
	
	
}
