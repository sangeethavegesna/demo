<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Entities</title>
</head>
<body>
    <div align="center">
        <h2>Add Author</h2>
        <form:form action="addAuthor" method="post" modelAttribute="author">
            <form:label path="name">Full name:</form:label>
            <form:input path="name"/><br/>
            <form:button>Add</form:button>
        </form:form>
    </div>

    <div align="center">
            <h2>Add Book</h2>
            <form:form action="addBook" method="post" modelAttribute="book">
                <form:label path="author">Author Id:</form:label>
                <form:input path="author"/><br/>
                <form:label path="title">Book Title:</form:label>
                <form:input path="title"/><br/>
                <form:button>Add</form:button>
            </form:form>
        </div>
</body>
</html>