<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" type="text/css" href="/statics/css/styles.css">

<html>
<head>
    <title>零食仓库系统</title>
    <script src="/statics/js/jquery-1.8.3.min.js" ></script>
</head>
<body>
<table border="1">
    <tr>
        <td colspan="7">
            <h1>零食信息</h1>
        </td>
    </tr>
    <tr>
        <td>零食ID</td>
        <td> 零食名称</td>
        <td>零食生产商</td>
        <td>生产时间</td>
        <td>零食类别</td>
        <td>操作1</td>
        <td>操作2</td>
    </tr>
    <c:forEach items="${snacks}" var="snack">
        <tr>
            <td>${snack.bid}</td>
            <td>${snack.bname}</td>
            <td>${snack.bauthor}</td>
            <td>
                <fmt:formatDate value="${snack.btime}" pattern="yyyy-MM-dd HH:mm" />
            </td>
            <td>${snack.btype}</td>
            <td><a href="#" id="delSnack" onclick="delSnackMethod(${snack.bid})">删除</a></td>
            <td><a href="/update.jsp" id="updateSnack" onclick="updateSnackMethod(${snack.bid})">修改</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/add.jsp">增加零食信息</a>
</body>
</html>

<script>
    $(function(){
        // 可以在这里初始化其他页面逻辑
    })

    function delSnackMethod(bid){
        console.log("删除："+bid)
        $.ajax({
            url: "/delSnack",
            data: { bid: bid },
            type: "POST",
            success: function(data){
                if(data == "success"){
                    alert("删除成功！");
                    window.location = "/abcSnack";
                }
            }
        });
    }

    function updateSnackMethod(fid) {
        console.log("修改：" + fid)
        $.ajax({
            url: "/insertFilm",
            data: { fid: fid },
            type: "POST",
            success: function (data) {
                if (data == "success") {
                    alert("修改成功！");
                }
            }
        });
    }
</script>
