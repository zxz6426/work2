<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改零食信息</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        table {
            width: 50%;
            border-collapse: collapse;
            margin: auto;
            border: 1px solid #ddd;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        input[type=text], select {
            width: calc(100% - 20px);
            padding: 8px;
            margin: 6px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
        }
        input[type=submit]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="/updateSnack" method="post">
        <table>
            <tr>
                <th colspan="3">修改零食信息</th>
            </tr>
            <tr>
                <td>零食ID</td>
                <td><input type="text" name="bid" value="${snack.bid}" /></td>
                <td></td>
            </tr>
            <tr>
                <td>零食名称</td>
                <td><input type="text" name="bname" value="${snack.bname}" /></td>
                <td></td>
            </tr>
            <tr>
                <td>零食生产商</td>
                <td><input type="text" name="bauthor" value="${snack.bauthor}" /></td>
                <td></td>
            </tr>
            <tr>
                <td>生产时间</td>
                <td><input type="text" name="btime" value="${snack.btime}" /></td>
                <td>yyyy-MM-dd HH:mm格式</td>
            </tr>
            <tr>
                <td>零食类别</td>
                <td>
                    <select name="btype">
                        <option value="甜品" ${snack.btype == '甜品' ? 'selected' : ''}>甜品</option>
                        <option value="咸食" ${snack.btype == '咸食' ? 'selected' : ''}>咸食</option>
                        <option value="肉类" ${snack.btype == '肉类' ? 'selected' : ''}>肉类</option>
                        <option value="坚果" ${snack.btype == '坚果' ? 'selected' : ''}>坚果</option>
                    </select>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3">
                    <input type="submit" value="提交修改" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>