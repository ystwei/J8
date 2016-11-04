<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/4
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="p" class="com.weikun.vo.portal"/>
    <c:set target="${p}" value="news" property="kind"/>
    ${p.value}
    <c:set target="${p}" value="game" property="kind"/>

    ${p.values.lol}
    ${p["values"].cs}
    ${p.values["cf"]}


    ${p.list[0]}
    ${p.list[1]}
    ${p.games[0]}

</body>
</html>
