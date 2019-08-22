package kr.or.ddit.member.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.member.vo.ZipVO;

public interface IMemberDao {

	public List<MemberVO> selectAll() throws SQLException;


	//id중복검사
	public String getSelectedId(String id) throws SQLException;

	//우편번호 검색
	public List<ZipVO> getSelectedDong(String dong) throws SQLException;

	//저장하기
	public String insertMember(MemberVO vo) throws SQLException;

	public List<String> searchSido() throws SQLException;

	public List<String> searchGugun(String sido) throws SQLException;

	public List<String> searchDong(HashMap<String, String> sidoGugun) throws SQLException;

	public List<ZipVO> searchAddr(ZipVO zipvo) throws SQLException;


}
