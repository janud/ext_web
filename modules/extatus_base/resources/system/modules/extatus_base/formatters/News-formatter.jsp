<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:formatter var="content">
<div class="${content.value.Sirka} 12u(mobile)">
<article class="special news">
	<a href="${content.value.Link}" class="image featured"><img class="newsI" src="/opencms${content.value.Image}" alt="" /></a>
		<header>
			<h2><a href="${content.value.Link}">${content.value.Title}</a></h2>
		</header>
		<a href="${content.value.Link}" style="font-size: 1em; padding-left:1em;">Číst dále</a>
</article>
</div>
</cms:formatter>