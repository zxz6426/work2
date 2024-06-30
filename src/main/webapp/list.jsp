<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>零食仓库系统</title>
    <link rel="stylesheet" href="/statics/css/styles.css">
    <script src="/statics/js/jquery-1.8.3.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #1e2022;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
            border: 1px solid #ddd;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #52616b; /* 设置表头背景颜色 */
            color: white;
        }

        /* 设置奇数行背景颜色 */
        tr:nth-child(odd) {
            background-color: #c9d6df; /* 奇数行背景颜色 */
        }

        /* 设置偶数行背景颜色 */
        tr:nth-child(even) {
            background-color: #52616b; /* 偶数行背景颜色 */
        }
        a {
            text-decoration: none;
            color: #212121;
            cursor: pointer;
        }
        a:hover {
            text-decoration: underline;
            color: #1e88e5
        }
        .add-link {
            display: block;
            margin: 20px auto;
            text-align: center;
            font-size: 18px;
            color: #c9d6df; /* 设置链接文字颜色 */
        }
        .add-link:hover {
            text-decoration: underline;
            color: #1e88e5; /* 设置链接鼠标悬停时的文字颜色 */
        }
        h1{
            color: #212121;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <td colspan="7">
            <h1>零食信息</h1>
        </td>
    </tr>
    <tr>
        <th>零食ID</th>
        <th>零食名称</th>
        <th>零食生产商</th>
        <th>生产时间</th>
        <th>零食类别</th>
        <th>操作1</th>
        <th>操作2</th>
    </tr>
    <c:forEach items="${snacks}" var="snack">
        <tr>
            <td>${snack.bid}</td>
            <td>${snack.bname}</td>
            <td>${snack.bauthor}</td>
            <td><fmt:formatDate value="${snack.btime}" pattern="yyyy-MM-dd HH:mm" /></td>
            <td>${snack.btype}</td>
            <td><a href="#" onclick="delSnackMethod(${snack.bid})">删除</a></td>
            <td><a href="/update.jsp" onclick="updateSnackMethod(${snack.bid})">修改</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/add.jsp" class="add-link">增加零食信息</a>
</body>
</html>

<script>
    $(function(){
        // 页面初始化逻辑
    });

    function delSnackMethod(bid){
        console.log("删除："+bid);
        $.ajax({
            url: "/delSnack",
            data: { bid: bid },
            type: "POST",
            success: function(data){
                if(data === "success"){
                    alert("删除成功！");
                    window.location = "/abcSnack";
                }
            }
        });
    }

    function updateSnackMethod(bid) {
        console.log("修改：" + bid);
        $.ajax({
            url: "/updateSnack",
            data: { bid: bid },
            type: "POST",
            success: function (data) {
                if (data === "success") {
                    alert("修改成功！");
                }
            }
        });
    }
</script>