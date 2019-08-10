<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    //클라이언트 요청시 전송되는 데이타를 받아온다.
    //DB를 이용하는 CRUD처리를 한다.
    //처리한 결과를 클라이언트로 응답한다.
    //응답타입은 json object 배열로 한다.
    %>
    
    <%-- 
    
   	주석처리 
   	html주석은 불가능 jsp주석문을 사용
   	
   	--%>
[
    {
    	"name" : "홍길동",
    	"addr" : "대전 중구",
    	"tel" : "010-1234-5678"
    },
    {
    
    	"name" : "개나리",
    	"addr" : "서울 중구",
    	"tel" : "010-2345-6543"
    
    },
    {
    	"name" : "진달래",
    	"addr" : "공주 중구",
    	"tel" : "010-1254-5428"
    },
    {
    	"name" : "일지매",
    	"addr" : "조선 중구",
    	"tel" : "010-5234-5128"
    }
    
    
]