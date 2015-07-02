package utils;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class UtilFunctions {

	private static SqlSessionFactory sqlMapper =  DaoConfig.getSession();
	
	public static int getMaxTblid(String tableName)  {
		SqlSession session = sqlMapper.openSession();
		int num = 0;
		try {
			if(session.selectOne("getMaxTblid",tableName) != null)
				num = Integer.parseInt(session.selectOne("getMaxTblid",tableName).toString());
		} finally{
			if(session != null)
				session.close();
		}
		return num;
	}
	
	public static void main(String[] args) throws Exception {
		System.out.println(UtilFunctions.getMaxTblid("standardized_region_m_details")+"");
	}
	
}
