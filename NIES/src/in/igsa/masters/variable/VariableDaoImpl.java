package in.igsa.masters.variable;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class VariableDaoImpl implements VariableDao {
	private SqlSessionFactory sqlMapper = null;

	public VariableDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the Variable related methods
	 */
	public String insertVariable(VariableVo vo) {
		SqlSession session = sqlMapper.openSession();
		String errorMsg = "";
		try {

			session.insert("insertVariable", vo);
			session.commit();
		} catch (Exception e) {
			errorMsg = e.getCause().getLocalizedMessage();
		} finally {
			if (session != null)
				session.close();
		}
		
		System.out.println(errorMsg);
		return errorMsg;
	}

	public int updateVariable(VariableVo vo) throws Exception {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updateVariable", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deleteVariableById(String id) throws Exception {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete = session.delete("deleteVariableById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<VariableVo> getVariableList() throws Exception {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getVariableList", null);
	}

	public VariableVo getVariableById(String id) throws Exception {
		SqlSession session = sqlMapper.openSession();
		return (VariableVo) session.selectOne("getVariableById", id);
	}

	public static void main(String[] args) {
		VariableDaoImpl daoImpl = new VariableDaoImpl();

		VariableVo vo = new VariableVo();

		vo.setVariableId("VR262");
		vo.setVariableName("Population");
		vo.setAreaId("AR001");
		vo.setUnitId("U001");
		vo.setDefinition("dfs sfsdfsfsdfsf sf sfsd");

		if(daoImpl.insertVariable(vo) != "")
		System.out.println(daoImpl.insertVariable(vo));

	}

}
