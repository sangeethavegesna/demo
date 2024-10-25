<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Books List</title>
</head>
<body>
    <h2>Books List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Id</th>
                <th>Title</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td>${book.id}</td>
                    <td>${book.title}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>