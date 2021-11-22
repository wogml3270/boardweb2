<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        a{
            text-decoration: none;
            color: #909090;
        }
        #wrap{
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        #main{
            border: 3px solid #909090;
            width: 300px;
            height: 250px;
        }
        h1{
            margin: 3rem 0;
        }
        h2{
            float: left;
            margin-left: 2.5rem;
        }
    </style>
</head>
<body>
<div id="wrap">
    <div id="main">
        <h1>환영합니다!</h1>
        <h2><a href="/user/login">로그인</a></h2>
        <h2><a href="/user/join">회원가입</a></h2>
    </div>
</div>
</body>
</html>
