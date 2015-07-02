package in.igsa.masters.area;

import java.util.List;

public class AreaServiceImpl implements AreaService {
	private AreaDao dao = null;

	public AreaServiceImpl() {
		this.dao = new AreaDaoImpl();
	}

	/**
	 * Start implement the Area related methods
	 */

	public void insertArea(AreaVo vo) throws Exception {
		dao.insertArea(vo);
	}

	public int updateArea(AreaVo vo) throws Exception {
		return dao.updateArea(vo);
	}

	public int deleteAreaById(String id) throws Exception {
		return dao.deleteAreaById(id);
	}

	public List<AreaVo> getAreaList() throws Exception {
		return dao.getAreaList();
	}

	public AreaVo getAreaById(String areaId) throws Exception {
		return dao.getAreaById(areaId);
	}

	public static void main(String[] args) throws Exception {
		AreaService service = new AreaServiceImpl();
		List<AreaVo> list = service.getAreaList();

		for (AreaVo vo : list) {
			System.out.println("Area name" + vo.getAreaName());
		}
	}
}
