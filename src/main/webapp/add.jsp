<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加零食信息</title>
</head>
<body>
<form action="/saveSnack" method="post">
    <table border="1">
        <tr>
            <td colspan="3">增加零食</td>
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
