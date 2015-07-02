package in.igsa.popup;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import config.DaoConfig;

public class DropDownSqlMapDao implements DropDownDao {
	SqlSessionFactory sqlMapper = null;

	public DropDownSqlMapDao() {
		sqlMapper = DaoConfig.getSession();
	}

	public List<DropDownVo> populateCombo(String listType){
		SqlSession session = sqlMapper.openSession();
		List<DropDownVo> dd = null;
		try {
			dd = session.selectList(listType, null);
			// dd.add(0, new DropDownForm("-- Select --", ""));
			// System.out.println("dropdowndao");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return dd;
	}

	public List<DropDownVo> populateCombo(String listType, String value){
		SqlSession session = sqlMapper.openSession();
		List<DropDownVo> dd = null;
		try {
			dd = session.selectList(listType, value);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return dd;
	}

	public List<DropDownVo> populateComboAll(String listType, String value){
		SqlSession session = sqlMapper.openSession();
		List<DropDownVo> dd = null;
		try {
			dd = session.selectList(listType, value);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		dd.add(0, new DropDownVo("-- Select --", ""));
		dd.add(1, new DropDownVo("ALL", "ALL"));
		return dd;
	}
}
