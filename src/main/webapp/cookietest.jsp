<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		
		//����� ���� �ѹ� ����ֱ�!
		for(int i =0;i<cookies.length;i++){
		   String name = cookies[i].getName();
		   String value = cookies[i].getValue();
		   
		   out.println("cookies["+i+"]�� Name��"+name+"<br>");
		   out.println("cookies["+i+"]�� Value��"+value+"<br>");
		   out.println("=================================<br>");		
		   }	
	%>
</body>
</html>