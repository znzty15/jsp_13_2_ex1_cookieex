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
	/* out.println("cookie Name : " + cookies[0].getName() + "<br>"); 
	out.println("cookie Value : " + cookies[0].getValue() + "<br>");
	out.println("cookie MaxAge : " + cookies[0].getMaxAge()); */
	for(int i=0; i<cookies.length; i++){
		String name = cookies[i].getName();
		String value = cookies[i].getValue();
		if(name.equals("naver")){
			out.println("cookies[" + i + "] name : " + name + "<br>");
			out.println("cookies[" + i + "] name : " + value + "<br>");
			out.println("---------------------------------------<br>");
		}
	}
	%>
</body>
</html>