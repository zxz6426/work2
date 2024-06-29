<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>增加零食信息</title>
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
    <form action="/saveSnack" method="post">
        <table>
            <tr>
                <th colspan="3">增加零食</th>
            </tr>
            <tr>
                <td>零食名称</td>
                <td><input type="text" name="bname" /></td>
                <td></td>
            </tr>
            <tr>
                <td>零食生产商</td>
                <td><input type="text" name="bauthor" /></td>
                <td></td>
            </tr>
            <tr>
                <td>生产时间</td>
                <td><input type="text" name="btime" /></td>
                <td>yyyy-MM-dd HH:mm格式</td>
            </tr>
            <tr>
                <td>零食类别</td>
                <td>
                    <select name="btype" >
                        <option value="甜品">甜品</option>
                        <option value="咸食">咸食</option>
                        <option value="肉类">肉类</option>
                        <option value="坚果">坚果</option>
                    </select>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3">
                    <input type="submit" value="添加" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>