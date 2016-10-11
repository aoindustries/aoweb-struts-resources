<%-- aoweb-struts: Do not edit --%>
<%--
Copyright 2000-2009, 2015, 2016 by AO Industries, Inc.,
7262 Bull Pen Cir, Mobile, Alabama, 36695, U.S.A.
All rights reserved.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@include file="/_taglibs.inc.jsp" %>

<skin:setContentType />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html:html lang="true" xhtml="true">
	<aoweb:exists path="/add-parents.inc.jsp"><jsp:include page="/add-parents.inc.jsp" /></aoweb:exists>
	<%@include file="contact.meta.inc.jsp" %>
	<skin:skin onload="document.forms['contactForm'].from.select(); document.forms['contactForm'].from.focus();">
		<skin:content colspans="3" width="600">
			<fmt:bundle basename="com.aoindustries.website.ApplicationResources">
				<skin:contentTitle><fmt:message key="contact.title" /></skin:contentTitle>
				<skin:contentHorizontalDivider colspansAndDirections="1,down,1" />
				<skin:contentLine>
					<fmt:message key="contact.text.mainDescription" />
					<skin:contentVerticalDivider />
					<skin:lightArea>
						<table cellspacing='0' cellpadding='2'>
							<tr>
								<th style='white-space:nowrap' colspan='2'><fmt:message key="contact.header.dayPhone" /></th>
							</tr>
							<logic:notEmpty name="siteSettings" property="brand.supportTollFree">
								<tr>
									<td style="white-space:nowrap"><fmt:message key="contact.label.tollfree" /></td>
									<td style='white-space:nowrap' align="right"><code><ao:write name="siteSettings" property="brand.supportTollFree" /></code></td>
								</tr>
							</logic:notEmpty>
							<logic:notEmpty name="siteSettings" property="brand.supportDayPhone">
								<tr>
									<td style="white-space:nowrap"><fmt:message key="contact.label.direct" /></td>
									<td style='white-space:nowrap' align="right"><code><ao:write name="siteSettings" property="brand.supportDayPhone" /></code></td>
								</tr>
							</logic:notEmpty>
							<tr>
								<th style='white-space:nowrap' colspan='2'><fmt:message key="contact.header.emergencyPhone" /></th>
							</tr>
							<logic:notEmpty name="siteSettings" property="brand.supportEmergencyPhone1">
								<tr>
									<td style="white-space:nowrap"><fmt:message key="contact.label.primary" /></td>
									<td style='white-space:nowrap' align="right"><code><ao:write name="siteSettings" property="brand.supportEmergencyPhone1" /></code></td>
								</tr>
							</logic:notEmpty>
							<logic:notEmpty name="siteSettings" property="brand.supportEmergencyPhone2">
								<tr>
									<td style="white-space:nowrap"><fmt:message key="contact.label.secondary" /></td>
									<td style='white-space:nowrap' align="right"><code><ao:write name="siteSettings" property="brand.supportEmergencyPhone2" /></code></td>
								</tr>
							</logic:notEmpty>
							<tr>
								<th style='white-space:nowrap' colspan='2'><fmt:message key="contact.header.email" /></th>
							</tr>
							<tr>
								<td style='white-space:nowrap' colspan='2'>
									<a class="aoDarkLink" href="mailto:<ao:write name="siteSettings" property="brand.supportEmailAddress" />">
										<code><ao:write name="siteSettings" property="brand.supportEmailAddress" /></code>
									</a>
								</td>
							</tr>
							<logic:notEmpty name="siteSettings" property="brand.supportFax">
								<tr>
									<th style='white-space:nowrap' colspan='2'><fmt:message key="contact.header.fax" /></th>
								</tr>
								<tr>
									<td style='white-space:nowrap' colspan='2'><code><ao:write name="siteSettings" property="brand.supportFax" /></code></td>
								</tr>
							</logic:notEmpty>
							<tr>
								<th style='white-space:nowrap' colspan='2'><fmt:message key="contact.header.mailingAddress" /></th>
							</tr>
							<logic:notEmpty name="siteSettings" property="brand.supportMailingAddress1">
								<tr>
									<td style='white-space:nowrap' colspan='2'><code><ao:write name="siteSettings" property="brand.supportMailingAddress1" /></code></td>
								</tr>
							</logic:notEmpty>
							<logic:notEmpty name="siteSettings" property="brand.supportMailingAddress2">
								<tr>
									<td style='white-space:nowrap' colspan='2'><code><ao:write name="siteSettings" property="brand.supportMailingAddress2" /></code></td>
								</tr>
							</logic:notEmpty>
							<logic:notEmpty name="siteSettings" property="brand.supportMailingAddress3">
								<tr>
									<td style='white-space:nowrap' colspan='2'><code><ao:write name="siteSettings" property="brand.supportMailingAddress3" /></code></td>
								</tr>
							</logic:notEmpty>
							<logic:notEmpty name="siteSettings" property="brand.supportMailingAddress4">
								<tr>
									<td style='white-space:nowrap' colspan='2'><code><ao:write name="siteSettings" property="brand.supportMailingAddress4" /></code></td>
								</tr>
							</logic:notEmpty>
						</table>
					</skin:lightArea>
				</skin:contentLine>
				<skin:contentHorizontalDivider colspansAndDirections="1,up,1" />
				<skin:contentLine colspan="3">
					<fmt:message key="contact.text.formWelcome" />
					<skin:lightArea>
						<html:javascript staticJavascript='false' bundle="/ApplicationResources" formName="contactForm" />
						<html:form action="/contact-completed" onsubmit="return validateContactForm(this);">
							<table cellspacing='0' cellpadding='0'>
								<tr>
									<td style="white-space:nowrap"><fmt:message key="contact.field.from.prompt" /></td>
									<td><html:text size="30" property="from" /></td>
									<td><html:errors bundle="/ApplicationResources" property="from" /></td>
								</tr>
								<tr>
									<td style="white-space:nowrap"><fmt:message key="contact.field.subject.prompt" /></td>
									<td><html:text size="45" property="subject" /></td>
									<td><html:errors bundle="/ApplicationResources" property="subject" /></td>
								</tr>
								<tr><td colspan='2'>&#160;</td></tr>
								<tr><td colspan='2'><fmt:message key="contact.field.message.prompt" /></td></tr>
								<tr><td colspan='2'><html:textarea property="message" cols="60" rows="12" /></td></tr>
								<tr>
									<td colspan='2' align="center">
										<br />
										<ao:input type="submit"><fmt:message key="contact.field.submit.label" /></ao:input>
									</td>
								</tr>
							</table>
						</html:form>
					</skin:lightArea>
				</skin:contentLine>
			</fmt:bundle>
		</skin:content>
	</skin:skin>
</html:html>