<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>增加零食</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
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
            width: 100%;
            padding: 6px 10px;
            margin: 4px 0;
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
    <h2>增加零食</h2>
    <form action="/saveSnack" method="post">
        <table>
            <tr>
                <th colspan="3">填写零食信息</th>
            </tr>
            <tr>
                <td>零食名称</td>
                <td><input type="text" name="snackName" required></td>
                <td></td>
            </tr>
            <tr>
                <td>零食品牌</td>
                <td><input type="text" name="snackBrand"></td>
                <td></td>
            </tr>
            <tr>
                <td>购买时间</td>
                <td><input type="datetime-local" name="purchaseTime" required></td>
                <td>请选择购买时间</td>
            </tr>
            <tr>
                <td>零食类别</td>
                <td>
                    <select name="snackType" required>
                        <option value="甜食">甜食</option>
                        <option value="咸食">咸食</option>
                        <option value="饮料">饮料</option>
                        <option value="水果">水果</option>
                    </select>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3">
                    <input type="submit" value="提交">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>