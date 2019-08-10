package kr.or.ddit.buyer.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.buyer.vo.BuyerVO;

public interface IBuyerDao {
	
	public List<BuyerVO> selectAllBuyer() throws SQLException;
	
	public BuyerVO selectBuyerInfo() throws SQLException;
}
