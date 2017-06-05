<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:formatter var="content">
<div class="${content.value.sirka} 12u(mobile) ">
	<div class="partnersM">
		<div class="margin-bottom-30">
			<div class="accordion">
				<cms:img src="${content.value.Image}" />
				<div>
					<h3>${content.value.Title}</h3>
					<p>
						${content.value.Text}
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
</cms:formatter>
