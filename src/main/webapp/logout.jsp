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
		   String id = cookies[i].getValue();
		   if(id.equals("asdf")){ //if���� ���� ������ ��� ��Ű�� ������ �� �ִ�!
		   out.println("cookies[" + i + "]�� ID�� " + id + "<br>");
		 //setMaxAge = ��ȿ�Ⱓ 0�̱� ������ ��Ű�� �ٷ� ����
		   cookies[i].setMaxAge(0);
		   response.addCookie(cookies[i]);//response ��ü cookie ž��
		   out.println(id + "�� �α׾ƿ� �ϼ̽��ϴ�.<br>");
		   }
		}
	%>
	 <a href="cookietest.jsp">�α׾ƿ�</a>
</body>
</html>