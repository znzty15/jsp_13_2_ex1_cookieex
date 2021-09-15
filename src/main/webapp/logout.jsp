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
		
		//지우기 전에 한번 찍어주기!
		for(int i =0;i<cookies.length;i++){
		   String id = cookies[i].getValue();
		   if(id.equals("asdf")){ //if문을 넣지 않으면 모든 쿠키가 삭제될 수 있다!
		   out.println("cookies[" + i + "]의 ID는 " + id + "<br>");
		 //setMaxAge = 유효기간 0이기 때문에 쿠키를 바로 삭제
		   cookies[i].setMaxAge(0);
		   response.addCookie(cookies[i]);//response 객체 cookie 탑재
		   out.println(id + "님 로그아웃 하셨습니다.<br>");
		   }
		}
	%>
	 <a href="cookietest.jsp">로그아웃</a>
</body>
</html>