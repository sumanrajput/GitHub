package in.igsa.masters.institution;

import java.util.List;

public class InstitutionServiceImpl implements InstitutionService {
	private InstitutionDao dao = null;

	public InstitutionServiceImpl() {
		this.dao = new InstitutionDaoImpl();
	}

	/**
	 * Start implement the Institution related methods
	 */

	public void insertInstitution(InstitutionVo vo) throws Exception {
		dao.insertInstitution(vo);
	}

	public int updateInstitution(InstitutionVo vo) throws Exception {
		return dao.updateInstitution(vo);
	}

	public int deleteInstitutionById(String id) throws Exception {
		return dao.deleteInstitutionById(id);
	}

	public List<InstitutionVo> getInstitutionList() throws Exception {
		return dao.getInstitutionList();
	}

	public InstitutionVo getInstitutionById(String institutionId) throws Exception {
		return dao.getInstitutionById(institutionId);
	}

	public static void main(String[] args) throws Exception {
		InstitutionService service = new InstitutionServiceImpl();
		List<InstitutionVo> list = service.getInstitutionList();

		for (InstitutionVo vo : list) {
			System.out.println("Institution name" + vo.getInstitutionName());
		}
	}
}
