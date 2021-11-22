<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    String err = (String)request.getAttribute("err");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mod</title>
</head>
<body>
    <h1>글 수정</h1>
    <% if(err != null) { %>
        <div><%=err%></div>
    <% } %>
    <div>
        <form action="/board/mod?pk=${requestScope.data.iboard}" method="post">
            <div>
                <input type="text" name="title" placeholder="title" value="${requestScope.data.title}">
            </div>
            <div>
                <textarea name="ctnt" placeholder="content" rows="20">${requestScope.data.ctnt}</textarea>
            </div>
            <div>
                <input type="submit" value="수정">
                <input type="reset" valuew="초기화">
            </div>
        </form>
    </div>
</body>
</html>    