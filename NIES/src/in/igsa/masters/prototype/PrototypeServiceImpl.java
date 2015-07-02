package in.igsa.masters.prototype;

import java.util.List;

public class PrototypeServiceImpl implements PrototypeService {
	private PrototypeDao dao = null;

	public PrototypeServiceImpl() {
		this.dao = new PrototypeDaoImpl();
	}

	/**
	 * Start implement the Prototype related methods
	 */

	public void insertPrototype(PrototypeVo vo)  {
		dao.insertPrototype(vo);
	}

	public int updatePrototype(PrototypeVo vo)  {
		return dao.updatePrototype(vo);
	}

	public int deletePrototypeById(String id)  {
		return dao.deletePrototypeById(id);
	}

	public List<PrototypeVo> getPrototypeList()  {
		return dao.getPrototypeList();
	}

	public PrototypeVo getPrototypeById(String prototypeId)  {
		return dao.getPrototypeById(prototypeId);
	}

	public static void main(String[] args)  {
		PrototypeService service = new PrototypeServiceImpl();
		List<PrototypeVo> list = service.getPrototypeList();

		for (PrototypeVo vo : list) {
			System.out.println("Prototype name " + vo.getModelId());
		}
	}
}
