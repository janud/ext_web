<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<a href="<cms:link>%(link.weak:/index.html:a3df6117-4582-11e7-88d5-005056a55a2a)</cms:link>" id="Logo"><img id="logo" src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/Logo.png:175c563c-49f2-11e7-9feb-005056a55a2a)</cms:link>"></a>
<nav id="nav">
<div class="row TopMenu" style="display: flex;">
<div class="5u 12u(mobile)">
<cms:navigation type="forSite" resource="${navStartFolder}" startLevel="${navStartLevel}" endLevel="${navStartLevel + 3}" var="nav"/>
<ul>
<div class="row TopMenu" style="display: flex;">
<c:set var="oldLevel" value="" />
<c:forEach items="${nav.items}" var="elem" varStatus="status">
<div class="TopMenuL"><li class="topmenu TopMenuL" ${listClass}><a href="<cms:link>${elem.resourceName}</cms:link>">${elem.navText}</a></li></div>
</c:forEach>

</div>
</ul>
</div>
<div class="2u 12u(mobile)"></div>
<div class="4u 12u(mobile)">
<ul>
<div class="row TopMenu" style="display: flex;">
<div class="1u 12u(mobile)"></div>
<div class="2u 12u(mobile)"><li class="topmenu TopMenuR" id="twitter"><a href="http://bit.ly/ext_twitter" class="icon fa-twitter"></a></li></div>
<div class="2u 12u(mobile)"><li class="topmenu TopMenuR" id="facebook"><a href="http://bit.ly/ext_facebook" class="icon fa-facebook"></a></li></div>
<div class="2u 12u(mobile)"><li class="topmenu TopMenuR" id="instagram"><a href="http://bit.ly/ext_ins" class="icon fa-instagram"></a></li></div>
<div class="2u 12u(mobile)"><li class="topmenu TopMenuR" id="twitch"><a href="http://bit.ly/ext_twitch" class="icon fa-twitch"></a></li></div>
<div class="2u 12u(mobile)"><li class="topmenu TopMenuR" id="youtube"><a href="http://bit.ly/ext_yt" class="icon fa-youtube"></a></li></div>
<div class="1u 12u(mobile)"></div>
</div>
</ul>
</div>
<div class="1u 12u(mobile)"></div>
</div>
</nav>