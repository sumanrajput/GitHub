package in.igsa.masters.unit;

import java.util.List;

public class UnitServiceImpl implements UnitService {
	private UnitDao dao = null;

	public UnitServiceImpl() {
		this.dao = new UnitDaoImpl();
	}

	/**
	 * Start implement the Unit related methods
	 */

	public void insertUnit(UnitVo vo) throws Exception {
		dao.insertUnit(vo);
	}

	public int updateUnit(UnitVo vo) throws Exception {
		return dao.updateUnit(vo);
	}

	public int deleteUnitById(String id) throws Exception {
		return dao.deleteUnitById(id);
	}

	public List<UnitVo> getUnitList() throws Exception {
		return dao.getUnitList();
	}

	public UnitVo getUnitById(String unitId) throws Exception {
		return dao.getUnitById(unitId);
	}

	public static void main(String[] args) throws Exception {
		UnitService service = new UnitServiceImpl();
		List<UnitVo> list = service.getUnitList();

		for (UnitVo vo : list) {
			System.out.println("Unit name" + vo.getUnitName());
		}
	}
}
