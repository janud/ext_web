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
<div class="row" style="margin: 0em 3em 0em 3em;">
<div class="4u 12u(mobile)">
<span><h4 class="h4w">NAME</h4></span>
<span><h3 class="h3h">${row.krestni}&nbsp;${row.prijmeni}</h3></span><br />
<span><h4 class="h4w">NICKNAME</h4></span>
<span><h3 class="h3h">${row.prezdivka}</h3></span><br />
<span><h4 class="h4w">GAME</h4></span>
<span><h3 class="h3h">${row.hra}</h3></span><br />
<span><h4 class="h4w">ROLE</h4></span>
<span><h3 class="h3h">${row.role}</h3></span><br />
<span><h4 class="h4w">COUNTRY</h4></span>
<span><h3 class="h3h">${row.narodnost}</h3></span><br />
</div>
<div class="4u 12u(mobile)">
<img src='${row.picture}' cssclass="img-responsive" style="width: 100%;">
</div>
<div class="4u 12u(mobile)" style="color: white; text-align: justify;">
${row.dlouhe}
</div>
</div>
</c:forEach>
</cms:formatter>