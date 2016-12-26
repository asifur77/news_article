<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Style-Type" content="text/css">
<title>News</title>
</head>
<style>
body {
margin-left:100px;  
background-size: 100%;
background-repeat: no-repeat;  
}
.wrapper { width:80%;
           margin:0 auto}
.form-group {
    margin-bottom: 15px;
}
textarea.form-control {
    height: auto;
}
.form-control {
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
    color: #555;
    display: block;
    font-size: 14px;
    height: 34px;
    line-height: 1.42857;
    padding: 6px 12px;
    transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;
    width: 50%;
}
textarea {
    overflow: auto;
}
</style>
<body background="background-1.jpg">
	<div class="wrapper">
	<div class="container">
		<h3 style="color:black;background:DarkSalmon;width:150px;align:center;vertical-align:middle;">Create News !</h3>
		<form action="RegistrationController" method="post">	
			<h4 style="color:black;background:GreenYellow;width:50px;align:center;vertical-align:middle;">Title</h4>
			<input type="text" name="title" size="30" required/>
			<h4 style="color:black;background:GreenYellow;width:50px;align:center;vertical-align:middle;">Body</h4>
			<div class="form-group">
				<textarea id="body" name="body" class="form-control" rows="8" maxlength="400" required></textarea>
			</div>
			<h4 style="color:black;background:GreenYellow;width:70px;align:center;vertical-align:middle;">Author</h4>
			<input type="text" name="author" size="30" required/>
			<h4 style="color:black;background:GreenYellow;width:50px;align:center;vertical-align:middle;">Date</h4>
			<input type="text" name="date" size="20" placeholder="yyyy-MM-dd" required/><br><br>				
			<input type="submit" style="font-size:15pt;color:white;background-color:green;border:1px solid #336600;padding:1px" value="Register"/>
		</form>
	</div>
	</div>
</body>
</html>
