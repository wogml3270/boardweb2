<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String err = (String)request.getAttribute("err");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        <%--  reset --%>
        *{ margin: 0; padding: 0; }
        a{ text-decoration: none; }
        body{
            background-color: antiquewhite;
        }
        .wrap{
            margin: 0 auto;
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .form{
            background-color: #fff;
            width: 300px;
            height: 250px;
            border: 3px solid #909090;
            padding: 3rem 3rem;
        }
        h1{
            margin-bottom: 1.3rem;
        }
        .form > div{
            margin-bottom: 1.6rem;
        }
        .err{
            color: red;
        }
    </style>
</head>
<body>
<% if(err != null) { %>
<div class="err"><%=err%></div>
<% } %>
<div class="wrap">
    <form action="/user/login" method="post" class="form">
        <h1>로그인</h1>
        <div>
            <input type="text" name="uid" placeholder="아이디">
        </div>
        <div>
            <input type="password" name="upw" placeholder="비밀번호">
        </div>
        <div>
            <input type="submit" value="Login">
        </div>
        <div>
            <a href="/user/join">회원가입</a>
        </div>
    </form>
</div>
</body>
</html>
