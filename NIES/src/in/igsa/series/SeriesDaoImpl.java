package in.igsa.series;

import in.igsa.upload.FileUploadVo;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class SeriesDaoImpl implements SeriesDao {

	private SqlSessionFactory sqlMapper = null;

	public SeriesDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	@Override
	public List<FileUploadVo> getSeriesData(FileUploadVo vo) {
		SqlSession session = sqlMapper.openSession();
		List<FileUploadVo> list = new ArrayList<FileUploadVo>();
		try {
			list = session.selectList("getSeriesData", vo);
		} catch (Exception e) {
			System.err.println(e.getMessage());
			
		}
		return list;

	}

	@Override
	public List<FileUploadVo> getSeriesDataValue(FileUploadVo vo)throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getSeriesDataValue", vo);
	}

	@Override
	public List<String> getScenarioNames() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getScenarioNames");
	}

	
	/*public static void main(String[] args) throws Exception {
		
		SeriesDaoImpl daoImpl = new SeriesDaoImpl();
		
		FileUploadVo vo = new FileUploadVo();
		
		vo.setVariable("Price|Carbon");
		vo.setScenario("SSP3-Ref-SPA0-V1");

		System.out.println(daoImpl.getSeriesData(vo).size());
	}*/
	
}
