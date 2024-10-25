<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Authors List</title>
</head>
<body>
    <h2>Authors List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="author" items="${authors}">
                <tr>
                    <td>${author.id}</td>
                    <td>${author.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>