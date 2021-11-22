<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    String err = (String)request.getAttribute("err");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>write</title>
    <style>
        .err{
            background-color: red;
        }
    </style>
</head>
<body>
    <h1>글쓰기</h1>
    <% if(err != null) { %>
        <div class="err"><%=err%></div>
    <% } %>
        <form action="/board/write" method="post">
            <div>
                <input type="text" name="title" placeholder="title">
            </div>
            <div>
                <textarea name="ctnt" placeholder="content"></textarea>
            </div>
            <div>
                <input type="submit" value="등록">
                <input type="reset" value="초기화">
            </div>
        </form>
</body>
</html>    