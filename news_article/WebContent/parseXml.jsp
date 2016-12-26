<%@ page contentType="text/xml" %>
<body>
<h2>Title : </h2><b><%= request.getParameter("param1") %></b>
<h2>Body : </h2><b><%= request.getParameter("param2") %></b>
<h2>Author: </h2><b><%= request.getParameter("param3") %></b>
<h2>Date: </h2><b><%= request.getParameter("param4") %></b>
</body>
