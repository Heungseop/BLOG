package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.sample.dao.CommonDao;

@Service("CommonService")
public class CommonService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="CommonDao")
	private CommonDao dao;
	
	public List<Map<String, Object>> selectBigMenuList() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectBigMenuList();
	}

	public List<Map<String, Object>> selectMidMenuList() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectMidMenuList();
	}


}
