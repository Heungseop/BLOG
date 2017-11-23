package first.sample.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import first.sample.service.BoardService;

@Controller
public class BoardController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="BoardService")
	private BoardService boardService;
	
	@RequestMapping(value="/empty/board/boardList.do")
    public ModelAndView openSampleBoardList(@RequestParam String big_menu_cd, @RequestParam String mid_menu_cd) throws Exception{
    	ModelAndView mv = new ModelAndView("board/boardList");
    	System.out.println( "big_menu_cd : " + big_menu_cd);
    	System.out.println( "mid_menu_cd : " + mid_menu_cd);
    	
    	HashMap<String, String> hm = new HashMap<String, String>();
    	hm.put("big_menu_cd", big_menu_cd);
    	hm.put("mid_menu_cd", mid_menu_cd);
    	
    	List<HashMap<String, Object>> list = boardService.selectBoardList(hm);
    	mv.addObject("board", list);
    	
    	return mv;
    }
}
