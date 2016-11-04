<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/4
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL隐式对象实例</title>
</head>
<body>

<%--	以中文编码显示--%>
<% request.setCharacterEncoding("utf-8"); %>
<h1 align="center">
    EL隐式对象实例
</h1>
<form action="formproc.jsp" method="post"
      name="form1">
    <table width="400" border="1" align="center" bgcolor="#ffff80">
        <tbody>
        <tr>
            <td colspan="2" align="center" valign="middle" bgcolor="#004080">
                <font><strong><font size="5" color="#ffffff">为你的朋友设计一个生日蛋糕</font>
                </strong> </font>
                <br>
            </td>
        </tr>
        <tr>
            <td align="center">
                <font size="4"><strong>蛋糕形状</strong> </font>
            </td>
            <td>
                <select name="shape">
                    <option selected value="">
                        请选择
                    </option>
                    <option value="yuanxing">
                        圆形
                    </option>
                    <option value="square">
                        方形
                    </option>
                    <option value="heart">
                        心形
                    </option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="center">
                <strong><font size="4"> 蛋糕顶部花色</font> </strong>
            </td>
            <td>
                <font size="3">
                    <input type="checkbox" value="rose"
                           name="topping">
                    <font size="2">玫瑰花</font> <br>
                    <input
                            type="checkbox" value="red tip" name="topping">
                    <font
                            size="2">红色彩带</font> <br>
                    <input type="checkbox"
                           value="text" name="topping"><font size="2">祝福文字</font>
                </font>

                <br />
            </td>

        </tr>
        <tr>
            <td valign="top">

                <br>

            </td>
            <td valign="top" colspan="2" align="right">
                <input type="submit" value="提交" name="button2">

            </td>
        </tr>
        </tbody>
    </table>
</form>
</body>
</html>

