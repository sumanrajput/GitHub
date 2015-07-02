package in.igsa.manage.modelregion;

import java.util.List;

public class ModelRegionServiceImpl implements ModelRegionService {
	private ModelRegionDao dao = null;

	public ModelRegionServiceImpl() {
		this.dao = new ModelRegionDaoImpl();
	}

	/**
	 * Start implement the ModelRegion related methods
	 */

	public void insertModelRegion(ModelRegionVo vo)  {
		dao.insertModelRegion(vo);
	}

	public int updateModelRegion(ModelRegionVo vo)  {
		return dao.updateModelRegion(vo);
	}

	public int deleteModelRegionById(String id)  {
		return dao.deleteModelRegionById(id);
	}

	public List<ModelRegionVo> getModelRegion()  {
		return dao.getModelRegion();
	}
	
	public ModelRegionVo getModelRegionById(String modelRegionId)  {
		return dao.getModelRegionById(modelRegionId);
	}
}
