package first.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("BoardDao")
public class BoardDao extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<HashMap<String, Object>> selectBoardList(HashMap hm) throws Exception{
		System.out.println("hm : " + hm);
		System.out.println("board.selectBoardList dao : " + selectList("board.selectBoardList", hm));
		return (List<HashMap<String, Object>>)selectList("board.selectBoardList", hm);
	}
//	@SuppressWarnings("unchecked")
//	public List<Map<String, Object>> selectMidMenuList() throws Exception{
//		return (List<Map<String, Object>>)selectList("common.selectMidMenuList");
//	}
//	
//	@SuppressWarnings("unchecked")
//	public List<Map<String, Object>> selectMenuList(Map<String, Object> map) throws Exception{
//		return (List<Map<String, Object>>)selectList("common.selectMenuList", map);
//	}

}
