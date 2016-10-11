<%-- aoweb-struts: Do not edit --%>
<%--
Copyright 2003-2009, 2016 by AO Industries, Inc.,
7262 Bull Pen Cir, Mobile, Alabama, 36695, U.S.A.
All rights reserved.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@include file="/_taglibs.inc.jsp" %>

<aoweb:exists path="/clientarea/control/business/cancel-message.override.inc.jsp">
	<jsp:include page="/clientarea/control/business/cancel-message.override.inc.jsp" />
</aoweb:exists>
<aoweb:notExists path="/clientarea/control/business/cancel-message.override.inc.jsp">
	<fmt:bundle basename="com.aoindustries.website.clientarea.control.ApplicationResources">
		<fmt:message key="business.cancel.message" />
	</fmt:bundle>
</aoweb:notExists>