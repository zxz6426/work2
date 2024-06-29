<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加零食</title>
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
            <td>图书作者</td>
            <td><input type="text" name="bauthor" /></td>
            <td></td>
        </tr>
        <tr>
            <td>购买时间</td>
            <td><input type="text" name="btime" /></td>
            <td>yyyy-MM-dd HH:mm格式</td>
        </tr>
        <tr>
            <td>图书类别</td>
            <td>
                <select name="btype" >
                    <option value="文学">文学</option>
                    <option value="小说">小说</option>
                </select>
            </td>
            <td></td>
        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="增加图书" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
