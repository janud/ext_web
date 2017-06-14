<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:formatter var="content">
<div class="${content.value.Sirka} 12u(mobile)">
	<article class="special">
		<header>
			<h2>${content.value.Nadpis}</h2>
			<p>
				${content.value.Text}
			</p>
		</header>
	</article>
</div>
</cms:formatter>