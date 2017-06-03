<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<cms:enable-ade />
<!DOCTYPE HTML>
<html>
	<head>
		<title>Extatus</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="<cms:link>%(link.weak:/system/modules/extatus_base/resources/css/main.css:18d9c72d-458d-11e7-88d5-005056a55a2a)</cms:link>" />
	</head>
	<body class="no-sidebar">
		<div id="page-wrapper">

			<!-- MainNav -->
			<div id="header">
			<cms:include file="%(link.weak:/system/modules/extatus_base/elements/main_nav.jsp:32ec15b5-4581-11e7-88d5-005056a55a2a)"/>
			</div>
			<cms:include file="%(link.weak:/system/modules/extatus_base/elements/partners.jsp:19974492-48af-11e7-afef-005056a55a2a)"/>
			<!-- Main -->
				<div class="wrapper style1">
				<cms:container name="content1" type="center" maxElements="8" detailview="true"/>
				</div>

			<!-- Footer -->
			<cms:include file="%(link.weak:/system/modules/extatus_base/elements/footer.jsp:2d9f30dd-488f-11e7-bbcb-005056a55a2a)"/>
		</div>

		<!-- Scripts -->
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/jquery.min.js:189f07fc-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/jquery.dropotron.min.js:18a3e9ff-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/jquery.scrolly.min.js:184d6572-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/jquery.onvisible.min.js:1850c0d5-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/skel.min.js:18549168-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/util.js:18a76c72-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/main.js:189a25f9-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
	</body>
</html>