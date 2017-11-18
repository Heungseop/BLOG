package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("CommonDao")
public class CommonDao extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBigMenuList() throws Exception{
		return (List<Map<String, Object>>)selectList("common.selectBigMenuList");
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMidMenuList() throws Exception{
		return (List<Map<String, Object>>)selectList("common.selectMidMenuList");
	}
//	
//	@SuppressWarnings("unchecked")
//	public List<Map<String, Object>> selectMenuList(Map<String, Object> map) throws Exception{
//		return (List<Map<String, Object>>)selectList("common.selectMenuList", map);
//	}

}
