<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>




<html>
<head>
    <title>零食仓库系统</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffb6b9;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h1 {
            color: #ffb6b9;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th,
    td {
      padding: 10px;
      text-align: left;
    }

    tr:nth-child(even) {
      background-color: #fae3d9;
    }

    tr:nth-child(odd) {
      background-color: #bbded6;
    }
        .btn {
            display: inline-block;
            color: #61c0bf;
            text-decoration: none;

        }
        .btn-container {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }
        .btn:hover {
    color: #521262; /* 设置悬停时的字体颜色 */
}
    </style>
</head>
<body>
<table>
    <tr>
        <td colspan="6">
            <h1>零食信息</h1>
        </td>
    </tr>
    <tr>
        <td>零食ID</td>
        <td>零食生产商</td>
        <td>生产时间</td>
        <td>零食类别</td>
        <td>操作1</td>
        <td>操作2</td>
    </tr>
    <tr>
        <td>1</td>
        <td>abc公司</td>
        <td>2021-10-20</td>
        <td>巧克力</td>
        <td><a href="#" class="btn">删除</a></td>
        <td><a href="update.jsp" class="btn">修改</a></td>
    </tr>
    <tr>
        <td>2</td>
        <td>xyz公司</td>
        <td>2021-10-25</td>
        <td>薯片</td>
        <td><a href="#" class="btn">删除</a></td>
        <td><a href="update.jsp" class="btn">修改</a></td>
    </tr>
</table>
<div class="btn-container">
    <a href="/add.jsp" class="btn">增加零食</a>
</div>
</body>
</html>
