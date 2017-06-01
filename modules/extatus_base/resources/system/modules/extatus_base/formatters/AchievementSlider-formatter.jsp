<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:formatter var="content">
	<!-- Carousel -->
				<section class="carousel">
					<div class="reel">
					
						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic01.jpg:1985bdda-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Pulvinar sagittis congue</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>
					
					</div>
				</section>

	
	
	
	
	
	<div class="margin-bottom-30">
		<div class="headline">
			<h3 ${content.rdfa.Title}>${content.value.Title}</h3>
		</div>
		<div class="row">
			<c:if test="${content.value.Image.exists}">
				<div class="col-md-4 col-sm-2 hidden-xs">
					<div class="thumbnail-kenburn">
						<div class="overflow-hidden">
							<cms:img src="${content.value.Image}" scaleColor="transparent"
								width="400" scaleType="0" noDim="true" cssclass="img-responsive" />
						</div>
					</div>
				</div>
			</c:if>
			<div class="${content.value.Image.exists ? 'col-md-8 col-sm-10 col-xs-12' : 'col-xs-12' }">
				<div ${content.rdfa.Text}>${content.value.Text}</div>
				<c:if test="${content.value.Link.exists}">
					<p>
						<a class="btn-u btn-u-small"
							href="<cms:link>${content.value.Link}</cms:link>">${paragraph.value.Link}</a>
					</p>
				</c:if>
			</div>
		</div>
	</div>
</cms:formatter>