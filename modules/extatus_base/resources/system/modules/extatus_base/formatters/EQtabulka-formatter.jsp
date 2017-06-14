<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:formatter var="content">
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
url = "jdbc:mysql://localhost/extatus"
user = "extatus"  password = "Extatus1337."/>
<sql:query dataSource = "${snapshot}" var = "result">
SELECT * FROM `EQ-cz`
</sql:query>
<div class="row" style="text-align: center; background-color: white; color: black;">
<div class="1u 12u(mobile) equip"></div>
<c:forEach var = "row" items = "${result.rows}">
<div class="2u 12u(mobile) equip">
${row.nadpis}
<div class="accordion">
<img src='${row.obrazek}' style="width: 10em;">
<div>
${row.popis}<br />
<a href='${row.link}' class="button">Koupit na Alza.cz</a>
</div>
</div>
</div>
</c:forEach>
<div class="1u 12u(mobile) equip"></div>
</div>
</cms:formatter>