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
  
  if(cookies != null){
	  for(int i = 0; i < cookies.length; i++){
		  if(cookies[i].getValue().equals("abcde")){ //id�� abcde�� ��Ű���� ������
			  cookies[i].setMaxAge(0);
			  response.addCookie(cookies[i]); //����� �Ӽ����ٽ� ž�� (���� -> �Ӽ��Է� -> ž�����)
		  }
	  }
  }
  
  //response.sendRedirect("login.html");
  response.sendRedirect("cookietest.jsp"); //cookiestest���� abcde�� �������ִ��� Ȯ��
 
%>

</body>
</html>