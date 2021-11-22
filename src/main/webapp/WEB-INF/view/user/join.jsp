<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String msg = (String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.8">
    <title>Join</title>
    <style>
        <%--  reset --%>
        *{ margin: 0; padding: 0; }
        a{ text-decoration: none; }
        body{
            background-color: antiquewhite;
        }
        .wrap{
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .form{
            background-color: #fff;
            width: 300px;
            height: 350px;
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
<div class="wrap">
    <form action="/user/join" method="post" class="form">
        <h1>회원가입</h1>
        <% if(msg != null) { %>
        <div class="err"><%=msg%></div>
        <% } %>
        <div>
            <label>이름 : <input type="text" name="nm" placeholder="이름 입력"></label>
        </div>
        <div>
            <label>아이디 : <input type="text" name="uid" placeholder="아이디 입력"></label>
        </div>
        <div>
            <label>비밀번호 : <input type="password" name="upw" placeholder="비밀번호 입력"></label>
        </div>
        <div>
            <label>남 <input type="radio" name="gender" value="1"></label>
            <label>여 <input type="radio" name="gender" value="0"></label>
        </div>
        <div>
            <input type="submit" value="가입">
            <input type="reset" value="초기화">
        </div>
    </form>
</div>
</body>
</html>
