package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("DAO")
public class DAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("sample.selectBoardList", map);
	}

}
