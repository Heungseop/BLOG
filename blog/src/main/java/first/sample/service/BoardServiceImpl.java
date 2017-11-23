package first.sample.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.board.dao.BoardDao;

@Service("BoardService")
public class BoardServiceImpl implements BoardService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="BoardDao")
	private BoardDao dao;

	@Override
	public List<HashMap<String, Object>> selectBoardList(HashMap<String, String> hm) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectBoardList(hm);
	}

}
