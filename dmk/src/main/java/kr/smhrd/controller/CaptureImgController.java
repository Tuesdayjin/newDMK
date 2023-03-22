package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.entity.t_history;
import kr.smhrd.entity.t_member;
import kr.smhrd.mapper.Mapper;

@Controller
public class CaptureImgController {
	@Autowired
	private Mapper mapper;


	@RequestMapping("/imgResult.do")
	public String uploadCapture(@RequestParam("fileName") String fileName, Model model) {

		model.addAttribute("fileName", fileName); // result.jsp에서 이미지 주소 받아오기

		return "imgResult"; // 이미지분석jsp에서 출력
	}
	
	@RequestMapping("/historyInsert.do")
	public String historyInsert(t_history vo, HttpSession session) {
		
		t_member mvo = (t_member) session.getAttribute("mvo");
		vo.setId(mvo.getId());
		mapper.historyInsert(vo);
		
		if(vo.getH_kind().equals("비디오")) {
			
			return "redirect:/result.do?fileName=" + vo.getH_value();
			
		}else {
			
			return "redirect:/imgResult.do?fileName=" + vo.getH_value();
			
		}
		
	}

}
