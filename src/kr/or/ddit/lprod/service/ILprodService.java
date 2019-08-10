package kr.or.ddit.lprod.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.lprod.vo.LprodVO;

public interface ILprodService {
	
	public List<LprodVO> selectAllLprod() throws SQLException;

}
