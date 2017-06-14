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
	<div class="${content.value.Sirka} 12u(mobile)" style="margin-bottom: 2em;">
		<div class="headline">
			<a href="<cms:link>${content.value.Link}</cms:link>"><h3>${row.krestni} "${row.prezdivka}" ${row.prijmeni}</h3></a>
		</div>
		<div class="row" style="border: 1px solid #a3a3a3;">
			<div class="4u 12u(mobile)">
			<img src='${row.picture}' cssclass="img-responsive" style="width: 10em;">
			</div>
			<div class="7u 12u(mobile)">
				${row.kratke}<br />
				<div class="row" style="padding-top: 4em;">
				<div class="6u"></div>
				<div class="2u"><a href='${row.facebook}'><i class="fa fa-facebook fa-2x" aria-hidden="true"></i></a></div>
				<div class="2u"><a href='${row.twitter}'><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a></div>
				<div class="2u"><a href='${row.twitch}'><i class="fa fa-twitch fa-2x" aria-hidden="true"></i></a></div>
				</div>
			</div>
			<div class="1u 12u(mobile)"></div>
		</div>
	</div>
</c:forEach>
</cms:formatter>