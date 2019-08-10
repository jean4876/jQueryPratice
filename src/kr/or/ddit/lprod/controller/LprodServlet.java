package kr.or.ddit.lprod.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.lprod.service.ILprodService;
import kr.or.ddit.lprod.service.LprodServiceImpl;
import kr.or.ddit.lprod.vo.LprodVO;

/**
 * Servlet implementation class LprodServlet
 */
@WebServlet("/LprodServlet")
public class LprodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LprodServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * Service객체가 필요 - 직접 생성하지 않고 service클래스에서 getter를 이용하여 가져온다
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 클라이언트 요청시 전송되는 데이터를 받아온다
		// DB를 이용하는 CRUD처리를 한다
		// 처리한 결과를 클라이언트로 응답한다
		// 응답타입은 json object배열로 한다
		
		ILprodService service = LprodServiceImpl.getInstance();
		
			List<LprodVO> list = null;
			try {
				list = service.selectAllLprod();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		request.setAttribute("list", list);
		
		RequestDispatcher disp = request.getRequestDispatcher("0809/lprodList.jsp");
		disp.forward(request, response);
		
		
	}


}
