<%-- aoweb-struts: Do not edit --%>
<%--
Copyright 2000-2009, 2015, 2016 by AO Industries, Inc.,
7262 Bull Pen Cir, Mobile, Alabama, 36695, U.S.A.
All rights reserved.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@include file="/_taglibs.inc.jsp" %>

<fmt:bundle basename="com.aoindustries.website.clientarea.ApplicationResources">
	<skin:path>/clientarea/index.do</skin:path>
	<logic:equal name="siteSettings" property="brand.aowebStrutsNoindex" value="true"><skin:meta name="ROBOTS">NOINDEX</skin:meta></logic:equal>
	<skin:title><fmt:message key="index.title" /></skin:title>
	<skin:navImageAlt><fmt:message key="index.navImageAlt" /></skin:navImageAlt>
	<skin:keywords><fmt:message key="index.keywords" /></skin:keywords>
	<skin:description><fmt:message key="index.description" /></skin:description>
</fmt:bundle>