<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Json View</title>
</head>
<body style="color:DarkRed;background:LightSkyBlue;">
<p id="demo"></p>
<script>
var data = { "Title": "<%= request.getParameter("param1") %>", "Body": "<%= request.getParameter("param2") %>", "Author": "<%= request.getParameter("param3") %>", "Date": "<%= request.getParameter("param4") %>" }

document.getElementById("demo").innerHTML = JSON.stringify(data, undefined, 2); 
</script>
</body>
</html>