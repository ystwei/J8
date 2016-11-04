<%@ page import="com.weikun.vo.User" %>
<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/4
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
     <c:set var="skey" value="session值" scope="session"></c:set>
     <c:set var="rkey" value="request值" scope="request"></c:set>

    session取值：${sessionScope.skey}<br/>
    request取值：${requestScope.rkey}<br/>
    <c:out value="输出值"/>
    <%out.println("输出值");%>
    <c:set var="name" value="哈尔滨"></c:set>
    ${name}
    <c:set var="sex">
      男性

    </c:set>
    ${sex}

    <jsp:useBean id="user" class="com.weikun.vo.User"/>

    <c:set target="${user}" value="你好" property="username" /><br/>
    ${user.username}
    <c:remove var="skey" scope="session"/>
     session取值：${sessionScope.skey}<br/>


    <c:set var="old" value="90"></c:set>

    <c:if test="${old<18}">
      你的年龄太小了
    </c:if>
     <c:if test="${old>=18}">
       你的年龄正好
     </c:if>


      <c:choose>
          <c:when test="${old<18}">
            你的年龄太小了
          </c:when>
          <c:when test="${old>=18&&old<60}">
            你的年龄正好
          </c:when>
          <c:otherwise>
            你的年龄太老了
          </c:otherwise>

      </c:choose>

      <c:out value="${old1}" default="9999"/>


      <%
          List list=new ArrayList();
          list.add(new User("OK","119"));
          list.add(new User("OK1","120"));
          list.add(new User("OK2","122"));


          session.setAttribute("list",list);

      %>
      <br/>
      <c:forEach items="${list}" var="user" varStatus="status">
        <c:if test="${status.first}">

          <font color="red">首个</font>
        </c:if>
          序号：${status.count}
          姓名:${user.username}
          密码:${user.pwd}<br/>
        <c:if test="${status.last}">

          <font color="blue">末个</font>
        </c:if>


      </c:forEach>


      <c:forEach items="1,2,3,4,5,6,7,8,9" var="i" begin="0" end="10" step="3">
          ${i}

      </c:forEach>

      <c:forTokens items="[{A,B,C,D,E}F,G]" delims="[]" var="s">
          ${s}


      </c:forTokens>


      <%
        int [] a={1,2,3,4,5};
        request.setAttribute("a",a);
        String [] a1={"ABC","DEF"};
        request.setAttribute("a1",a1);
        Vector v=new Vector();
        v.add("中国");
        v.add("美国");
        v.add("日本");
        v.add("韩国");
        request.setAttribute("v",v);
        Enumeration e=v.elements();
        request.setAttribute("e",e);
        Map<String,Integer> map=new HashMap<String,Integer>();

        map.put("Z",100);
        map.put("Y",200);
        map.put("X",300);
        map.put("W",400);
        request.setAttribute("m",map);

      %>
      <br/>
      <c:forEach var="i" items="${requestScope.a}"  >

          ${i}

      </c:forEach>

     <c:forEach var="i" items="${requestScope.a1}"  >

       ${i}

     </c:forEach>

     <c:forEach var="i" items="${requestScope.v}"  >

       ${i}

     </c:forEach>

     <c:forEach var="i" items="${requestScope.e}"  >

       ${i}

     </c:forEach>

     <c:forEach var="i" items="${requestScope.m}"  >

       ${i.key}:${i.value}

     </c:forEach>
      <%--<c:import url="foot.jsp"/>--%>
      <%--<jsp:include page="foot.jsp"/>--%>

      <c:redirect url="foot.jsp">
        <c:param name="key" value="MIKE"/>


      </c:redirect>
  </body>
</html>
