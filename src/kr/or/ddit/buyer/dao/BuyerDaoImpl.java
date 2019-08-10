package kr.or.ddit.buyer.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.buyer.vo.BuyerVO;
import kr.or.ddit.ibatis.config.SqlMapClientFactory;
import kr.or.ddit.lprod.dao.ILprodDao;
import kr.or.ddit.lprod.dao.LprodDaoImpl;

public class BuyerDaoImpl implements IBuyerDao {
	
	
	private SqlMapClient client;
	private static IBuyerDao dao;
	
	private BuyerDaoImpl() {
		client =  SqlMapClientFactory.getSqlMapClient();
	}
	
	public static IBuyerDao getInstance() {
		if(dao==null) dao = new BuyerDaoImpl();
		return dao;
	}

	@Override
	public List<BuyerVO> selectAllBuyer() throws SQLException {
		return client.queryForList("buyer.selectAllBuyer");
	}

	@Override
	public BuyerVO selectBuyerInfo() throws SQLException {
		return (BuyerVO) client.queryForObject("buyer.selectBuyerInfo");
	}


}
