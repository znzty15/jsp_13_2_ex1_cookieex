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
		   if(name.equals("naver")){ //if���� ���� ������ ��� ��Ű�� ������ �� �ִ�!
		   out.println("cookies["+i+"]�� Name��"+name+"<br>");
		   out.println("cookies["+i+"]�� Value��"+value+"<br>");
		   cookies[i].setMaxAge(0); //setMaxAge = ��ȿ�Ⱓ�̱� ������ ��ȿ�Ⱓ�� ª�� �����ؼ� ��Ű�� �����!
		         //naver �ε����� ���� ���鸸 ������ ����
		   response.addCookie(cookies[i]);//response ��ü cookie ž��
		   out.println(name+"��Ű�� ���� �Ǿ����ϴ�.<br>");
		   }
		}
	%>
	<a href="cookietest.jsp">cookie ���� Ȯ�� �������� �̵�</a>
</body>
</html>