<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Html View</title>
</head>
<body style="color:OrangeRed;background:Aquamarine;">
<h3 style="color:blue;">Title : </h3><%= request.getParameter("param1") %>
<h3 style="color:blue;">Body : </h3><%= request.getParameter("param2") %>
<h3 style="color:blue;">Author : </h3><%= request.getParameter("param3") %>
<h3 style="color:blue;">Date : </h3><%= request.getParameter("param4") %>
</body>
</html>




