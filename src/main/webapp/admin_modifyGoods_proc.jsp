<%@page import="db.dto.GoodsDTO"%>
<%@page import="db.dao.GoodsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String quantity = request.getParameter("quantity");
	String content = request.getParameter("content");
	String ca_id = request.getParameter("ca_id");
	
	int intid = Integer.parseInt(id);
	int intprice = Integer.parseInt(price);
	int intqun = Integer.parseInt(quantity);
	int intcaId = Integer.parseInt(ca_id);
	
	GoodsDAO goodsDAO = new GoodsDAO();
	GoodsDTO goodsDTO = new GoodsDTO(name, intprice, intqun, content, intcaId , intid);
	
	int result = goodsDAO.modifyGoodsInfo(goodsDTO);
	if(result > 0){
	%>
	<script>
		alert('수정하였습니다');
		location.href = 'admin_goodsList.jsp';
	</script>
	<%
	}else{
	%>
	<script>	
		alert('수정에 실패하였습니다');
		history.back();
	</script>			
	<% 	
	}
	%>
</body>
</html>