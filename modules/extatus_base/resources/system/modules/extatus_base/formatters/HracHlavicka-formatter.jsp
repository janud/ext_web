<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" import="org.opencms.json.JSONArray" pageEncoding="UTF-8"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:formatter var="content">
<c:import var="dataRM" url="http://data.extatus.janud.eu/json/hraci/frozen.json"/>
<% 
//${content.value.Link}
String json = (String)pageContext.getAttribute("dataRM");
//JsonReader r = Json.createReder(new StringReader(json));
JSONArray data = new org.opencms.json.JSONArray(json);
pageContext.setAttribute("parsedJSON", data);
%>
<% for (int i=0; i<data.length();i++){%>
<div class="row" style="margin: 0em 0em 0em 0em;">
<div class="4u 12u(mobile)">
<span><h4 class="h4w">JMÉNO</h4></span>
<span><h3 class="h3h"><%=data.getJSONObject(i).getString("krestni")%>   <%=data.getJSONObject(i).getString("prijmeni")%></h3></span><br />
<span><h4 class="h4w">PŘEZDÍVKA</h4></span>
<span><h3 class="h3h"><%=data.getJSONObject(i).getString("prezdivka")%></h3></span><br />
<span><h4 class="h4w">HRA</h4></span>
<span><h3 class="h3h">Counter strike: Global offensive</h3></span><br />
<span><h4 class="h4w">ROLE</h4></span>
<span><h3 class="h3h"><%=data.getJSONObject(i).getString("role")%></h3></span><br />
<span><h4 class="h4w">NÁRODNOST</h4></span>
<span><h3 class="h3h"><%=data.getJSONObject(i).getString("narodnost")%></h3></span><br />
</div>
<div class="4u 12u(mobile)">
<img src='<%=data.getJSONObject(i).getString("picture")%>' cssclass="img-responsive" style="width: 25em;">
</div>
<div class="4u 12u(mobile)" style="color: white;">
<%=data.getJSONObject(i).getString("info.dlouhe")%>
</div>
</div>
<%}%>
</cms:formatter>