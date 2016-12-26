<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.*" %>
    <%@ page import ="com.candidjava.Category" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Style-Type" content="text/css";">
<title>List</title>
</head>
<style>
body {
margin-left:100px;  
background-size: 100%;
background-repeat: no-repeat;   
}
.wrapper { width:80%;
           margin:0 auto}
</style>
<body background="background-2.jpg">
	<div class="wrapper">
	  <div class="container">
		<h3 style="color:Maroon;background:LightSalmon;width:140px;align:center;vertical-align:middle;">List of News</h3>
		<% for(Category cx: ((ArrayList<Category>)request.getAttribute("servletName"))) {
		out.println("*	"+cx.getTitle());
		String title =  cx.getTitle().toString();
		request.setAttribute("Title",title);
		String body = cx.getBody().toString();
		request.setAttribute("Body",body);
		String author = cx.getAuthor().toString();
		request.setAttribute("Author",author);
		String date = cx.getDate().toString();
		request.setAttribute("Date",date); %>
		<br><a href="parseHtml.jsp?param1=<%=request.getAttribute("Title")%>&param2=<%=request.getAttribute("Body")%>
		&param3=<%=request.getAttribute("Author")%>&param4=<%=request.getAttribute("Date")%>">html</a>  |  
		<a href="parseXml.jsp?param1=<%=request.getAttribute
		("Title")%>&param2=<%=request.getAttribute("Body")%>&param3=<%=request.getAttribute("Author")%>
		&param4=<%=request.getAttribute("Date")%>">xml</a>  
		|  <a href="parseJson.jsp?param1=<%=request.getAttribute("Title")%>&param2=<%=request.getAttribute
		("Body")%>&param3=<%=request.getAttribute("Author")%>
		&param4=<%=request.getAttribute("Date")%>">json</a><br><br>
		<% } %>
	  </div>
	</div>
<script>
window.opener.history.go(0);
</script>
</body>
</html>