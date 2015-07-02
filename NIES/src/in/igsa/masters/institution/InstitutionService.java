package in.igsa.masters.institution;

import java.util.List;

public interface InstitutionService {
	// Query for Instructor
	public void insertInstitution(InstitutionVo vo) throws Exception;

	public int updateInstitution(InstitutionVo vo) throws Exception;

	public int deleteInstitutionById(String id) throws Exception;

	public List<InstitutionVo> getInstitutionList() throws Exception;

	public InstitutionVo getInstitutionById(String id) throws Exception;

	// Query for Departments
}