<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" import="org.opencms.json.JSONArray"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<cms:formatter var="content">
<c:import var="dataRM" url="http://extatus.janud.eu/opencms/permalink/b3a7852e-4644-11e7-8373-005056a55a2a.json"/>

<% 
String json = (String)pageContext.getAttribute("dataRM");
//JsonReader r = Json.createReder(new StringReader(json));
JSONArray data = new org.opencms.json.JSONArray(json);
pageContext.setAttribute("parsedJSON", data);
%>

	<!-- Carousel -->
				<section class="carousel achiev">
					<div class="reel" style="text-align: center;">
					<% for (int i=0; i<data.length();i++){%>
						<article>
							<header>
								<img src="<%=data.getJSONObject(i).getString("picture")%>" alt="" />
								<h3><a href="#"><%=data.getJSONObject(i).getString("souper")%></a></h3>
							</header>
							</article>
					<%}%>
					</div>
				</section>
</cms:formatter>