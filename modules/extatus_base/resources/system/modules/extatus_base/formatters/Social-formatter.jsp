<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:formatter var="content">
<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/instafeed.min.js:4a48d43b-4e95-11e7-a04b-005056a55a2a)</cms:link>"></script>
<script>
var feed = new Instafeed({
  clientId: '440a344d9b1b4331affcb2aef92a20e2',
  userId: '2223035013',
  accessToken: '2223035013.440a344.e46631122776405f8f44fbbab25515e1',
  get: 'tagged',
  tagName: 'extatus',
  resolution: 'standard_resolution',
  limit: "10",
  sortBy: "most-recent",
  template: '<a href="{{link}}"><img class="instaimg" src="{{image}}" /></a>'
});
feed.run();
</script>
<div class="6u 12u(mobile)">
<div id="instafeed"></div>
</div>

</cms:formatter>