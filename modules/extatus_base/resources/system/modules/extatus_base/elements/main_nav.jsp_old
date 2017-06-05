<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<a href="<cms:link>%(link.weak:/index.html:a3df6117-4582-11e7-88d5-005056a55a2a)</cms:link>" id="Logo"><img id="logo" src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/extatus-logo.png:e7e47b91-458f-11e7-88d5-005056a55a2a)</cms:link>"></a>
	<nav id="nav">
<c:set var="pathparts" value="${fn:split(cms.requestContext.folderUri, '/')}" />
<c:set var="navStartLevel">${param.startlevel}</c:set>
<c:set var="navStartFolder" value="/" />
<c:forEach var="folderName" items="${pathparts}" varStatus="status">
  <c:if test="${status.count <= navStartLevel}">
    <c:set var="navStartFolder">${navStartFolder}${folderName}/</c:set>
  </c:if>
</c:forEach>

<cms:navigation type="forSite" resource="${navStartFolder}" startLevel="${navStartLevel}" endLevel="${navStartLevel + 3}" var="nav"/>
  <ul>

<li><a href="#" class="icon fa-instagram"></a></li>
<li><a href="#" class="icon fa-twitch"></a></li>

  <c:set var="oldLevel" value="" />
  <c:forEach items="${nav.items}" var="elem" varStatus="status">
    <c:set var="currentLevel" value="${elem.navTreeLevel}" />

    <c:choose>
      <c:when test="${empty oldLevel}"></c:when>
      <c:when test="${currentLevel > oldLevel}"><ul></c:when>
      <c:when test="${currentLevel == oldLevel}"></li></c:when>
      <c:when test="${oldLevel > currentLevel}">
        <c:forEach begin="${currentLevel + 1}" end="${oldLevel}"></li></ul></c:forEach>
      </c:when>
    </c:choose>

    <c:set var="markItem">false</c:set>
    <c:if test="${fn:startsWith(cms.requestContext.uri, elem.resourceName) || (elem.navigationLevel && fn:startsWith(cms.requestContext.uri, elem.parentFolderName))}">
      <c:set var="markItem">true</c:set>
    </c:if>

    <c:set var="parentItem">false</c:set>
    <c:if test="${currentLevel == navStartLevel}">
      <c:set var="parentItem">true</c:set>
    </c:if>

    <c:set var="listClass" value="" />
    <c:if test="${markItem}">
      <c:set var="listClass"></c:set>
    </c:if>

    <c:set var="nextElemDeeper">false</c:set>
    <c:if test="${not status.last}">
      <c:forEach items="${nav.items}" var="nextelem" varStatus="nextstatus">
        <c:if test="${nextstatus.count eq (status.count + 1) and nextelem.navTreeLevel > currentLevel}">
          <c:set var="nextElemDeeper">true</c:set>
          <c:choose>
            <c:when test="${parentItem}">
              <c:set var="listClass"></c:set>
            </c:when>
            <c:otherwise>
              <c:set var="listClass"></c:set>
            </c:otherwise>
          </c:choose>
          <c:if test="${markItem or (parentItem and cms.subSitePath != '/' and fn:startsWith(elem.resourceName,cms.subSitePath))}">
             <c:set var="listClass">${listClass} active</c:set>
          </c:if>
          <c:set var="listClass">${listClass}"</c:set>
        </c:if>
      </c:forEach>
    </c:if>

<li class="${elem.description}" ${listClass}><%--
--%><a href="<cms:link>${elem.resourceName}</cms:link>" <%--
--%><c:if test="${parentItem and nextElemDeeper}"></c:if>><%--
--%>${elem.navText}</a>
  <c:set var="oldLevel" value="${currentLevel}" />
  </c:forEach>

  <c:forEach begin="${navStartLevel + 1}" end="${oldLevel}"></li></ul></c:forEach>
  <c:if test="${not empty nav.items}"></li></c:if>

<li><a href="#" class="icon fa-twitter"></a></li>
<li><a href="#" class="icon fa-facebook"></a></li>

</ul>
</nav>