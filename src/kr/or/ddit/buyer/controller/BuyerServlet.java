package kr.or.ddit.buyer.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.buyer.service.BuyerServiceImpl;
import kr.or.ddit.buyer.service.IBuyerService;
import kr.or.ddit.buyer.vo.BuyerVO;

/**
 * Servlet implementation class BuyerServlet
 */
@WebServlet("/BuyerServlet")
public class BuyerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BuyerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IBuyerService service = BuyerServiceImpl.getInstance();
		
		List<BuyerVO> list = null;
		try {
			list = service.selectAllBuyer();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("list", list);
		
		RequestDispatcher disp = request.getRequestDispatcher("0810/buyer.jsp");
		disp.forward(request, response);
	}

}
