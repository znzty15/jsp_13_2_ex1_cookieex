<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cookieset.jsp</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("naver","daum"); //cookie(��Ű�̸�,��Ű��);
		cookie.setMaxAge(60*60*24); //cookie�� ��ȿ�ð� ���� 60��*60*24 = 24�ð�
		response.addCookie(cookie);	//response��ü cookiež��
	%>
	<h3>cookie�� name, value, Max_age�� �����߽��ϴ�.</h3>
	<a href="cookieget.jsp">cookie�� ���� ���� �����ִ� �������� �̵�</a>
</body>
</html>