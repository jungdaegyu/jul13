package com.gyu.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	//사용자가 /board라고 호출하면 동작할 메소드를 만들겠습니다.
	
	@GetMapping("/board")
	public ModelAndView board() {
		ModelAndView mv = new ModelAndView("board");
		mv.addObject("name", "홍길동");
		
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		
		for (int i = 1; i <= 10; i++) { //이런 방법이 있고
			BoardDTO e = new BoardDTO(i, i+ "번째 글입니다.", "홍길동","2023-07-0" + i, i * 10 );
		//	e.setBno(i);
		//	e.setBtitle(i+ "번째 글입니다.");
		//	e.setBwrite("홍길동");
		//	e.setBdate("2023-07-" + i);
		//	e.setBlike(i * 10);
			list.add(e);
			
		}
		
		mv.addObject("list", list);
		
		
		List<Map<String, Object>> list2 = new ArrayList<Map<String,Object>>();
		
		for (int i = 1; i <= 10; i++) { //이런 방법도 있음
			Map<String, Object> e = new HashMap<String, Object>();
			e.put("bno", i);
			e.put("btitle", i + "번째 글입니다2");
			e.put("bwrite", "홍길동");
			e.put("bdate", "2023-07-13");
			e.put("blike", i*10);
			list2.add(e);
		}
		
		mv.addObject("list2", list2);
		
		return mv; //jsp파일명
	}
	
	
}
