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
SELECT * FROM `hraci-cz` WHERE prezdivka = '${content.value.Title}'
</sql:query>
<c:forEach var = "row" items = "${result.rows}">
		<div class="headline row rowSoc">
		
   			<a href="${row.facebook}"><i class="fa fa-facebook" aria-hidden="true"></i></a>
		
		<c:if test="${row.twitter.length()} gt 5">
   			<a href="${row.twitter}"><i class="fa fa-twitter" aria-hidden="true"></i></a>
		</c:if>
		<c:if test="${row.instagram.length()} gt 5">
   			<a href="${row.instagram}"><i class="fa fa-instagram" aria-hidden="true"></i></a>
		</c:if>
		<c:if test="${row.twitch.length()} gt 5">
   			<a href="${row.twitch}"><i class="fa fa-twitch" aria-hidden="true"></i></a>
		</c:if>
		</div>
</c:forEach>
</cms:formatter>