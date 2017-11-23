package first.sample.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface BoardService {

	List<HashMap<String, Object>> selectBoardList(HashMap<String, String> map) throws Exception;

}
