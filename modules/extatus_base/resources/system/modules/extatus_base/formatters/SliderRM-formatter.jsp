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
				<section class="carousel">
					<div class="reel">
					<% for (int i=0; i<data.length();i++){%>
						<article style="text-aling: center;">
							<img src="http://s.sk-gaming.com/www5/image/game/csgo-caticon.png"><br />
							
							<img class="sliderRMIMG" src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/Logo.png:175c563c-49f2-11e7-9feb-005056a55a2a)</cms:link>"><img class="sliderRMIMG" src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/vs.png:1cb8bae1-4a35-11e7-9feb-005056a55a2a)</cms:link>"><img class="sliderRMIMG" src="http://s.sk-gaming.com/www5/image/organisation/19.png">
							<header>
								<h5><a href="#">Extatus			Fnatic</a></h3>
							</header>
							<p><%=data.getJSONObject(i).getString("akce")%> <br /><span style="font-weight: bold;"><%=data.getJSONObject(i).getString("skore")%></span></p>
						</article>
					<%}%>
					</div>
				</section>
</cms:formatter>