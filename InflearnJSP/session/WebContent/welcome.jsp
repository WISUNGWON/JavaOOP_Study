<%@page import="java.util.Enumeration" %>
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
    	Enumeration enumeration = session.getAttributeNames(); //��� �������� �����ϸ� ���� ������  �� �޾ƿ��� 
		while(enumeration.hasMoreElements()){ //�ݺ��� ����
			String sName = enumeration.nextElement().toString(); 
			String sValue = (String)session.getAttribute(sName);
			
			if(sValue.equals("abcde")) out.println(sValue + "�� �ȳ��ϼ���." + "<br/>"); //�ش� ������ �����ϸ� �λ� ���
			//if(sValue.equals("abcde")) session.removeAttribute(sName);
		}
	%>
	
	<a href="logout.jsp">�α׾ƿ�</a>

</body>
</html>