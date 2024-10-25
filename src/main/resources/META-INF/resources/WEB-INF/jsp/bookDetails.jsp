<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to Spring Boot JSP</title>
</head>
<body>
    <h1>Hello, JSP!</h1>
    <form action="result.jsp" method="post">
        Name: <input type="text" name="name"><br>
        <input type="submit" value="Submit">
    </form>
    <h2>Book Details</h2>
        <p>Id: ${book.id}</p>
        <p>Title: ${book.title}</p>
</body>
</html>