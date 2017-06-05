<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<a href="<cms:link>%(link.weak:/index.html:a3df6117-4582-11e7-88d5-005056a55a2a)</cms:link>" id="Logo"><img id="logo" src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/extatus-logo.png:e7e47b91-458f-11e7-88d5-005056a55a2a)</cms:link>"></a>
<nav id="nav">
<div class="row" style="display: flex;">
<div class="1u 12u(mobile)"></div>
<div class="4u 12u(mobile)">
<cms:navigation type="forSite" resource="${navStartFolder}" startLevel="${navStartLevel}" endLevel="${navStartLevel + 3}" var="nav"/>
<ul>
<div class="row" style="display: flex;">
<c:set var="oldLevel" value="" />
<c:forEach items="${nav.items}" var="elem" varStatus="status">
<div class="2,4u 12u(mobile)"><li class="topmenu" ${listClass}><a href="<cms:link>${elem.resourceName}</cms:link>">${elem.navText}</a></li></div>
</c:forEach>
</div>
</ul>
</div>
<div class="2u 12u(mobile)"></div>
<div class="4u 12u(mobile)">
<ul>
<div class="row" style="display: flex;">
<div class="2,4u 12u(mobile)"><li id="twitter"><a href="#" class=" icon fa-twitter"></a></li></div>
<div class="2,4u 12u(mobile)"><li id="facebook"><a href="#" class="icon fa-facebook"></a></li></div>
<div class="2,4u 12u(mobile)"><li id="instagram"><a href="#" class="icon fa-instagram"></a></li></div>
<div class="2,4u 12u(mobile)"><li id="twitch"><a href="#" class="icon fa-twitch"></a></li></div>
<div class="2,4u 12u(mobile)"><li id="youtube"><a href="#" class="icon fa-youtube"></a></li></div>
</div>
</ul>
</div>
<div class="1u 12u(mobile)"></div>
</div>
</nav>