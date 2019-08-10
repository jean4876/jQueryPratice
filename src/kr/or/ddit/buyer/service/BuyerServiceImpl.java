package kr.or.ddit.buyer.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.buyer.dao.BuyerDaoImpl;
import kr.or.ddit.buyer.dao.IBuyerDao;
import kr.or.ddit.buyer.vo.BuyerVO;
import kr.or.ddit.lprod.dao.LprodDaoImpl;
import kr.or.ddit.lprod.service.ILprodService;
import kr.or.ddit.lprod.service.LprodServiceImpl;

public class BuyerServiceImpl implements IBuyerService {
	
	
	private IBuyerDao dao;
	private static IBuyerService service;
	
	private BuyerServiceImpl() {
		dao =  BuyerDaoImpl.getInstance();
	}
	
	public static IBuyerService getInstance() {
		if(service==null) service = new BuyerServiceImpl();
		return service;
	}

	@Override
	public List<BuyerVO> selectAllBuyer() throws SQLException {
		List<BuyerVO> list = null;
		
		try {
			list = dao.selectAllBuyer();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public BuyerVO selectBuyerInfo() throws SQLException {
		
		BuyerVO buyervo = null;
		
		try {
			buyervo = dao.selectBuyerInfo();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return buyervo;
	}

}
