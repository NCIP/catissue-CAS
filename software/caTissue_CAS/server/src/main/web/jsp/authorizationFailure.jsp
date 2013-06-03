<%--L
   Copyright Washington University in St. Louis
   Copyright SemanticBits
   Copyright Persistent Systems
   Copyright Krishagni

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/catissue_CAS/LICENSE.txt for details.
L--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="org.springframework.security.web.authentication.AbstractProcessingFilter"%>
<jsp:directive.include file="/WEB-INF/view/jsp/default/ui/includes/top.jsp" />
<div class="errors" id="status">
	<h2>Authorization Failure</h2>
	<p>You are not authorized to use this application for the following reason: 
	<%final Exception e = (Exception) request.getSession().getAttribute(AbstractProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY);
    request.setAttribute("e", e);%>
<c:out value="${e.message}" escapeXml="true" />.
	</p>
	<p>
</div>
<jsp:directive.include file="/WEB-INF/view/jsp/default/ui/includes/bottom.jsp" />