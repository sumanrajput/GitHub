package in.igsa.masters.prototype;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class PrototypeDaoImpl implements PrototypeDao {
	private SqlSessionFactory sqlMapper = null;

	public PrototypeDaoImpl() {
		sqlMapper = DaoConfig.getSession();
	}

	/**
	 * Start implement the Prototype related methods
	 */
	public void insertPrototype(PrototypeVo vo)  {
		SqlSession session = sqlMapper.openSession();
		try {

			session.insert("insertPrototype", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public int updatePrototype(PrototypeVo vo)  {
		int update = 0;
		SqlSession session = sqlMapper.openSession();
		try {

			update = session.update("updatePrototype", vo);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return update;
	}

	public int deletePrototypeById(String id)  {
		int delete = 0;
		SqlSession session = sqlMapper.openSession();
		try {
			delete=  session.delete("deletePrototypeById", id);
			session.commit();
		} finally {
			if (session != null)
				session.close();
		}
		return delete;
	}

	public List<PrototypeVo> getPrototypeList()  {
		SqlSession session = sqlMapper.openSession();
		return session.selectList("getPrototypeList", null);
	}

	public PrototypeVo getPrototypeById(String id)  {
		SqlSession session = sqlMapper.openSession();
		return (PrototypeVo) session.selectOne("getPrototypeById", id);
	}
}
