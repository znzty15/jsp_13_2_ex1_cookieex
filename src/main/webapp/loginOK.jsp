<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>loginOK.jsp</title>
</head>
<body>
	<%! String id, pw; %>
	
	<%
		request.setCharacterEncoding("EUC-KR");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		//���̵�� ��й�ȣ�� ������ ����
		if(id.equals("asdf") && pw.equals("12345")){
			//id ���� ��Ű�� ����
			Cookie ck = new Cookie("id",id);
			//�α����ϰ� �ð��� ������ ��Ű ������
			ck.setMaxAge(60*60);
			response.addCookie(ck);
			//�α��� �Ǹ� �Ѿ�� ������
			response.sendRedirect("welcome.jsp");
		}	
	%>
</body>
</html>