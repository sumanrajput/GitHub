package in.igsa.masters.standardized;

import java.util.List;

public class StandardizedServiceImpl implements StandardizedService {
	private StandardizedDao dao = null;

	public StandardizedServiceImpl() {
		this.dao = new StandardizedDaoImpl();
	}

	/**
	 * Start implement the Standardized related methods
	 */

	public void insertStandardized(StandardizedVo vo)  {
		dao.insertStandardized(vo);
	}

	public int updateStandardized(StandardizedVo vo)  {
		return dao.updateStandardized(vo);
	}

	public int deleteStandardizedById(String id)  {
		return dao.deleteStandardizedById(id);
	}

	public List<StandardizedVo> getStandardizedList()  {
		return dao.getStandardizedList();
	}

	public StandardizedVo getStandardizedById(String roleId)  {
		return dao.getStandardizedById(roleId);
	}

	public static void main(String[] args)  {
		StandardizedService service = new StandardizedServiceImpl();
		List<StandardizedVo> list = service.getStandardizedList();

		for (StandardizedVo vo : list) {
			System.out.println("Standardized name" + vo.getStandardizedName());
		}
	}
}
