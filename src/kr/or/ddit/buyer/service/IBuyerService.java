package kr.or.ddit.buyer.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.buyer.vo.BuyerVO;

public interface IBuyerService {
	
	public List<BuyerVO> selectAllBuyer() throws SQLException;
	
	public BuyerVO selectBuyerInfo() throws SQLException;

}
