package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.sample.dao.CommonDao;

@Service("BoardService")
public class BoardServiceImpl implements BoardService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="CommonDao")
	private CommonDao dao;
	
	@Override
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
//		return dao.selectBoardList(map);
		return null;
		
	}

}
