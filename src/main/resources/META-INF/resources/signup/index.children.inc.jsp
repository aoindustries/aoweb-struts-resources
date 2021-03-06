<%--
aoweb-struts-resources - Web resources for legacy Struts-based site framework with AOServ Platform control panels.
Copyright (C) 2007-2009, 2016, 2018, 2019  AO Industries, Inc.
	support@aoindustries.com
	7262 Bull Pen Cir
	Mobile, AL 36695

This file is part of aoweb-struts-resources.

aoweb-struts-resources is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

aoweb-struts-resources is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with aoweb-struts-resources.  If not, see <http://www.gnu.org/licenses/>.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@include file="/_taglibs.inc.jsp" %>

<c:set var="rootConn" value="${siteSettings.rootAOServConnector}" />
<c:set var="activePackageDefinitions" value="${rootConn.currentAdministrator.username['package'].account.activePackageDefinitions}" />
<c:set var="packageCategories" value="${rootConn.billing.PackageCategory.map}" />
<c:if test="${activePackageDefinitions[packageCategories.application]!=null}">
	<skin:child><%@include file="application.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.virtual]!=null}">
	<skin:child><%@include file="virtual-hosting.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.virtual_dedicated]!=null}">
	<skin:child><%@include file="virtual-dedicated-server.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.virtual_managed]!=null}">
	<skin:child><%@include file="virtual-managed-server.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.dedicated]!=null}">
	<skin:child><%@include file="dedicated-server.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.managed]!=null}">
	<skin:child><%@include file="managed-server.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.aoserv]!=null}">
	<skin:child><%@include file="aoserv.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.backup]!=null}">
	<skin:child><%@include file="backup.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.colocation]!=null}">
	<skin:child><%@include file="colocation.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.reseller]!=null}">
	<skin:child><%@include file="reseller.meta.inc.jsp" %></skin:child>
</c:if>
<c:if test="${activePackageDefinitions[packageCategories.sysadmin]!=null}">
	<skin:child><%@include file="system-administration.meta.inc.jsp" %></skin:child>
</c:if>
