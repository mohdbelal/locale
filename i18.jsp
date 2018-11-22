<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>internationalization demo</title>
</head>
<body>

<%
String lang=request.getParameter("lang");
if(lang == null)
	lang="en";//request.getHeader("accept language")
	
	Locale locale = new Locale(lang);
	ResourceBundle rBundel= ResourceBundle.getBundle("messages",locale);
	String greeting=rBundel.getString("greeting");

%>

<h1><%= greeting %></h1>

<a href="i18.jsp?lang=en">English</a>
<a href="i18.jsp?lang=hi">hindi</a>

</body>
</html>