<%--
  Created by IntelliJ IDEA.
  User: dell1
  Date: 2017/5/18
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <style>
        body{
            background: #8ddfff;
        }
        div{
            color: #000000;
            margin-top:10px;
        }
        input {

        }
    </style>
</head>
<body>
<center>
<form action="AkjLogin" method="post">
    <div style="margin-top: 50px">
        <label>用户名称:</label>
        <input type="text " id="akjname" name="akjname"/>
    </div>
    <div style="margin-top: 20px">
        <label>用户密码:</label>
        <input type="password " id="akjpassword" name="akjpassword"/>

    </div>
       <input type="submit"value="登录" style="margin-top: 20px"/>
</form>
</center>
</body>
</html>
