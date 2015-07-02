package in.igsa.manage.nativeregion;

import java.util.List;

public class NativeRegionServiceImpl implements NativeRegionService {
	private NativeRegionDao dao = null;

	public NativeRegionServiceImpl() {
		this.dao = new NativeRegionDaoImpl();
	}

	/**
	 * Start implement the ModelRegion related methods
	 */

	public void insertModelNativeStanderdizeRegion(NativeRegionVo vo)  {
		dao.insertModelNativeStanderdizeRegion(vo);
	}

	public int updateModelNativeStanderdizeRegion(NativeRegionVo vo)  {
		return dao.updateModelNativeStanderdizeRegion(vo);
	}

	public int deleteModelNativeStanderdizeRegionById(String id)  {
		return dao.deleteModelNativeStanderdizeRegionById(id);
	}

	public List<NativeRegionVo> getModelNativeStanderdizeRegion()  {
		return dao.getModelNativeStanderdizeRegion();
	}
	
	public NativeRegionVo getModelNativeStanderdizeRegionById(String modelRegionId)  {
		return dao.getModelNativeStanderdizeRegionById(modelRegionId);
	}
}
