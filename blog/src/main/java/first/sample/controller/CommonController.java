package first.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import first.sample.service.CommonService;

@Controller
public class CommonController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="CommonService")
	private CommonService commonService;

	@RequestMapping(value="/common/openSampleBoardList.do")
    public ModelAndView openSampleBoardList(Map<String,Object> commandMap) throws Exception{
		System.out.println("/common/openSampleBoardList.do");
    	ModelAndView mv = new ModelAndView("/sample/boardList");
    	
    	List<Map<String,Object>> list = commonService.selectBoardList(commandMap);
    	mv.addObject("list", list);
    	
    	return mv;
    }

	@RequestMapping(value="/common/main.do")
    public ModelAndView main(Map<String,Object> commandMap) throws Exception{
		System.out.println("/common/openSampleBoardList.do");
    	ModelAndView mv = new ModelAndView("/src/main");
    	
    	List<Map<String,Object>> list = commonService.selectBoardList(commandMap);
    	mv.addObject("list", list);
    	
    	return mv;
    }
	
	@RequestMapping(value="/common/profile.do")
	public ModelAndView profile(Map<String,Object> commandMap) throws Exception{
		System.out.println("/common/openSampleBoardList.do");
		ModelAndView mv = new ModelAndView("/profile/profile");
		
		List<Map<String,Object>> list = commonService.selectBoardList(commandMap);
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value="/common/contacts.do")
	public ModelAndView contacts(Map<String,Object> commandMap) throws Exception{
		System.out.println("/common/openSampleBoardList.do");
		ModelAndView mv = new ModelAndView("/profile/contacts");
		
		List<Map<String,Object>> list = commonService.selectBoardList(commandMap);
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value="/common/mailbox.do")
	public ModelAndView mailbox(Map<String,Object> commandMap) throws Exception{
		System.out.println("/common/openSampleBoardList.do");
		ModelAndView mv = new ModelAndView("/profile/mailbox");
		
		List<Map<String,Object>> list = commonService.selectBoardList(commandMap);
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value="/common/login.do")
	public ModelAndView login(Map<String,Object> commandMap) throws Exception{
		System.out.println("/common/openSampleBoardList.do");
		ModelAndView mv = new ModelAndView("/profile/login");
		
		List<Map<String,Object>> list = commonService.selectBoardList(commandMap);
		mv.addObject("list", list);
		
		return mv;
	}
}
