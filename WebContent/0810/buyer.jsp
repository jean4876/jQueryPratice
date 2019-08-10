<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    List<BuyerVO> list = (List<BuyerVO>)request.getAttribute("list");
    %>
    
    [
    <%
    
    for(int i=0; i< list.size(); i++){
    	BuyerVO buyer = list.get(i);
    %>
    {
    	"id" : "<%=buyer.getBuyer_id() %>",
    	"name" : "<%=buyer.getBuyer_name() %>",
    	"lgu" : "<%=buyer.getBuyer_lgu() %>",
    	"bank" : "<%=buyer.getBuyer_bank() %>",
    	"bankNo" : "<%=buyer.getBuyer_bankno() %>",
    	"bankName" : "<%=buyer.getBuyer_bankname() %>",
    	"zip" : "<%=buyer.getBuyer_zip() %>",
    	"add" : "<%=buyer.getBuyer_add1() + buyer.getBuyer_add2() %>",
    	"comtel" : "<%=buyer.getBuyer_comtel() %>",
    	"fax" : "<%=buyer.getBuyer_fax() %>",
    	"mail" : "<%=buyer.getBuyer_mail() %>",
    	"charger" : "<%=buyer.getBuyer_charger() %>",
    	"telext" : "<%=buyer.getBuyer_telext() %>"
    }<%= i < list.size() - 1 ? "," : "" %>
    
    
    <% } %>
    ]
 
  