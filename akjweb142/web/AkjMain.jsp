<%--
  Created by IntelliJ IDEA.
  User: 程森
  Date: 2017/5/18
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style>
        body{
            background: #a5b1db;
           color: blue;
        }

        td {
            text-align: center;
            background: #8fffb2;
            tab-size: 10px;
            tab-size: 10px;
        }
        #jsdata{
            text-align: right;
            background: #c1ffab;
        }
        

      
    </style>
</head>
<body>
<center>
    <!--   欢迎<%=request.getAttribute("names") %>来到计算器世界！
                 -->
    欢迎<%=request.getAttribute("names") %>来到计算器世界！
    <table border="2" width="300" height="300" id="js" onclick="js();">
        <tr>
            <td colspan="5" height="50"   id="jsdata">  </td>
        </tr>
        <tr>
            <td>c</td>
            <td>/</td>
            <td>*</td>
            <td>c</td>
        </tr>
        <tr>
            <td>7</td>
            <td>8</td>
            <td>9</td>
            <td>-</td>

        </tr>
        <tr>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td>+</td>

        </tr>
        <tr>

        <td>1</td>
        <td>2</td>
        <td>3</td>
        <td rowspan="2">=</td>
    </tr>
        <tr>
            <td id="ff">%</td>
            <td>0</td>
            <td>.</td>

        </tr>

    </table>
    <script type="text/javascript">
        var result = "";
        var jsresult = "";
        var judge = 0;
        var equal = 0;
        var first = 0;
        zeros = 0;
        function js() {
            //alert("123");
            var events = event.srcElement.innerText;
            //$('#jsdata').innerText;
            if ("=" == events) {
                jsresult = eval(result);
                document.getElementById('jsdata').innerText = jsresult;
                first = 0;
                zeros = 0;
                return;
            }
            if ("c" == events) {
                document.getElementById('jsdata').innerText = "0";
                result = "";
                first = 0;
                return;
            }
//            if (events == "1" || events == "2" || events == "3" || events == "4" || events == "5" ||
//                events == "6" || events == "7" || events == "8" || events == "9" || events =='.') {
//                first = 1;
//            }
//            if (0 == events) {
//                if (first) {
//                    result += events;
//                }
//            }
            if ("0" == result) {
                result = events;
            }
            else {

                if (events != "0") {
                    result += events;
                    first = 1;
                    if (events == "+" || events == "-" || events == "*" || events == "/") {
                        first = 0;
                    }
                    zeros = 0;
                }
                else {
                    if (first == 0) {
                        if (zeros == 0)
                            result += events;
                    }
                    if (first == 1) {
                        result += events;
                    }
                    zeros = 1;
                }
            }
            document.getElementById('jsdata').innerText = result;
        }

    </script>

</center>
</body>

</html>
