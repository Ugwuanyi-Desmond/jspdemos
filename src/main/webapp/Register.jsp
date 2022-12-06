<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="">
		Enter Name: <input type = "text"name = "fname"><br/>
		Enter Age: <input type = "text"name = "age"><br/>
		Enter Email: <input type = "text"name = "email"><br/>
		Enter Password: <input type = "password"name = "password"><br/>
		
		Gender:<input type = "radio" name = "gender" value = "female" >Female
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type = "radio" name = "gender" value = "male" >Male<br/>
		
		Hobbies:<input type = "checkbox" name = "hobby" value = "reading">Reading
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				<input type = "checkbox" name = "hobby" value = "browsing">Browsing
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type = "checkbox" name = "hobby" value = "gaming">Gaming
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type = "checkbox" name = "hobby" value = "cooking">Cooking<br/>
		Country: <select name = "country">
				<option value = "select"> Select Country </option>
					<option value = "select"> INDIA </option>
					<option value = "select"> USA </option>
					<option value = "select"> UK </option>
					<option value = "select"> Others </option>

		</select>	<br/> <br/>
		<input type = "submit" name = "Register" value = "Register Details"/>
</form>
		<%
		if(request.getParameter("Register") != null) 
		{%>
			
			<jsp:useBean id="user" class ="com.to.User" scope = "request"></jsp:useBean>
			<jsp:setProperty property="*" name="user"/>
			<jsp:forward page="RegisterServlet"></jsp:forward>
			
		 <%}
		 %>


</body>
</html>