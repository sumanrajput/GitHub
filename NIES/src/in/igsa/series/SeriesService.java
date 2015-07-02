package in.igsa.series;

import in.igsa.upload.FileUploadVo;

import java.util.List;

public interface SeriesService {
	
	// Query for Instructor
	public List<FileUploadVo> getSeriesData(FileUploadVo vo)throws Exception;
	public List<FileUploadVo> getSeriesDataValue(FileUploadVo vo)throws Exception;
	public List<String> getScenarioNames()throws Exception;
	
}
