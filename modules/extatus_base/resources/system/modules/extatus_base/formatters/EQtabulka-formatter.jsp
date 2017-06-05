<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" import="org.opencms.json.JSONArray"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:formatter var="content">
<c:import var="dataRM" url="${content.value.Link}"/>
<% 
//${content.value.Link}
String json = (String)pageContext.getAttribute("dataRM");
//JsonReader r = Json.createReder(new StringReader(json));
JSONArray data = new org.opencms.json.JSONArray(json);
pageContext.setAttribute("parsedJSON", data);
%>
<div class="row">
<% for (int i=0; i<data.length();i++){%>
<div class="4u 12u(mobile) equip">
<%=data.getJSONObject(i).getString("druh")%>
<div class="accordion">
<img src='<%=data.getJSONObject(i).getString("obrazek")%>' style="width: 10em;">
<div>
<a href='<%=data.getJSONObject(i).getString("link")%>'><%=data.getJSONObject(i).getString("nadpis")%></a><br />
<%=data.getJSONObject(i).getString("popis")%><br />
<a href='<%=data.getJSONObject(i).getString("link")%>' class="button">Koupit na Alza.cz</a>
</div>
</div>
</div>
<%}%>
</div>
</cms:formatter>