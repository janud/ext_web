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
	<div class="6u 12u(mobile)" style="margin-bottom: 0em; border: 1px solid #a3a3a3; padding: 1em;">
		<div class="headline">
			<a href="<cms:link>${content.value.Link}</cms:link>"><h3>${row.krestni}&nbsp;${row.prijmeni}</h3></a>
		</div>
		<div>
		<a href="<cms:link>${content.value.Link}</cms:link>"><img src='${row.picture}' cssclass="img-responsive" style="width: 100%;"></a>
		</div>
	</div>
</c:forEach>
</cms:formatter>