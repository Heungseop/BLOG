package first.sample.service;

import java.util.List;
import java.util.Map;

public interface CommonService {

	List<Map<String, Object>> selectBigMenuList() throws Exception;
	List<Map<String, Object>> selectMidMenuList() throws Exception;

}
