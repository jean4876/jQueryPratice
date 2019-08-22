<%@page import="kr.or.ddit.member.vo.ZipVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
[
    <%
       List<String> list = (List<String>) request.getAttribute("list");
       for(int i = 0; i < list.size(); i++){
          String gugun =  list.get(i);
          if(i > 0)  out.print(",");
   %>
      {
         "gugun"    : "<%=gugun%>"
      }
   <%} %>

]