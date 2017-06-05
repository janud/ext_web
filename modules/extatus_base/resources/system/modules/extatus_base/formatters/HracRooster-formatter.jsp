<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" import="org.opencms.json.JSONArray"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<cms:formatter var="content">
<c:import var="dataRM" url="http://extatus.janud.eu/opencms/permalink/4def6930-4901-11e7-859a-005056a55a2a.json"/>
<% 
//${content.value.Link}
String json = (String)pageContext.getAttribute("dataRM");
//JsonReader r = Json.createReder(new StringReader(json));
JSONArray data = new org.opencms.json.JSONArray(json);
pageContext.setAttribute("parsedJSON", data);
%>
<% for (int i=0; i<data.length();i++){%>
	<div style="margin-bottom: 2em;">
		<div class="headline">
			<a href="<cms:link>${content.value.Link}</cms:link>"><h3><%=data.getJSONObject(i).getString("krestni")%> "<%=data.getJSONObject(i).getString("prezdivka")%>" <%=data.getJSONObject(i).getString("prijmeni")%></h3></a>
		</div>
		<div class="row" style="border: 1px solid #a3a3a3;">
			<div class="4u 12u(mobile)">
			<img src='<%=data.getJSONObject(i).getString("picture")%>' cssclass="img-responsive" style="width: 10em;">
			</div>
			<div class="8u 12u(mobile)">
				<%=data.getJSONObject(i).getString("info.kratke")%><br />
				<div style="margin: 4em 0em 0em 13em;">
				<a href='<%=data.getJSONObject(i).getString("facebook")%>'style="margin: 0em 1em 0em 1em;"><i class="fa fa-facebook fa-2x" aria-hidden="true"></i></a>
				<a href='<%=data.getJSONObject(i).getString("twitter")%>'style="margin: 0em 1em 0em 1em;"><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a>
				<a href='<%=data.getJSONObject(i).getString("twitch")%>'style="margin: 0em 1em 0em 1em;"><i class="fa fa-twitch fa-2x" aria-hidden="true"></i></a>
				</div>
			</div>
		</div>
	</div>
<%}%>
</cms:formatter>