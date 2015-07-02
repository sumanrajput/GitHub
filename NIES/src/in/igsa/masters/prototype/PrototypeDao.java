package in.igsa.masters.prototype;

import java.util.List;

public interface PrototypeDao {
	// Query for Prototype
	public void insertPrototype(PrototypeVo vo);

	public int updatePrototype(PrototypeVo vo);

	public int deletePrototypeById(String id) ;

	public List<PrototypeVo> getPrototypeList();

	public PrototypeVo getPrototypeById(String id);
}
