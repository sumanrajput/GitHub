package in.igsa.series;

import in.igsa.upload.FileUploadVo;

import java.util.List;

public class SeriesServiceImpl implements SeriesService {
	
	private SeriesDao dao = null;
	
	public SeriesServiceImpl() {
		dao = new SeriesDaoImpl();
	}

	@Override
	public List<FileUploadVo> getSeriesData(FileUploadVo vo) throws Exception {
		return dao.getSeriesData(vo);
	}

	@Override
	public List<FileUploadVo> getSeriesDataValue(FileUploadVo vo)
			throws Exception {
		return dao.getSeriesDataValue(vo);
	}

	@Override
	public List<String> getScenarioNames() throws Exception {
		return dao.getScenarioNames();
	}
	
}
