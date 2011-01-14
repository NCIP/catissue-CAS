<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License. You may obtain a
    copy of the License at:

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied. See the License for the
    specific language governing permissions and limitations
    under the License.

--%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--<spring:theme code="mobile.custom.css.file" var="mobileCss" text="" />-->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
	    <title>caTissue Suite v2.0</title>
        <c:choose>
           <c:when test="${not empty requestScope['isMobile'] and not empty mobileCss}">
                <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
                <meta name="apple-mobile-web-app-capable" content="yes" />
                <meta name="apple-mobile-web-app-status-bar-style" content="black" />
                <!--<link type="text/css" rel="stylesheet" media="screen" href="<c:url value="/css/fss-framework-1.1.2.css" />" />
                <link type="text/css" rel="stylesheet" href="<c:url value="/css/fss-mobile-${requestScope['browserType']}-layout.css" />" />
                <link type="text/css" rel="stylesheet" href="${mobileCss}" />-->
				<link rel="stylesheet" type="text/css" href="css/styleSheet.css" />
				<link rel="stylesheet" type="text/css" href="css/catissue_suite.css" />
           </c:when>
           <c:otherwise>
                <!--<link type="text/css" rel="stylesheet" href="<spring:theme code="standard.custom.css.file" />" />
                <script type="text/javascript" src="js/common_rosters.js"></script>-->
				<link rel="stylesheet" type="text/css" href="css/styleSheet.css" />
				<link rel="stylesheet" type="text/css" href="css/catissue_suite.css" />
           </c:otherwise>
        </c:choose>

		<style>
			.norepeatbkgnImg
			{
				background-image:url('images/uIEnhancementImages/shadow_down.gif');
				background-repeat:no-repeat;
			}
		</style>
		<link rel="shortcut icon" href="images/favicon.ico" type="image/vnd.microsoft.icon" />
		<link rel="icon" href="images/favicon.ico" type="image/vnd.microsoft.icon" />
	</head>
	<body id="cas" onload="init();">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr height="10%">
		<td>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td width="20%" rowspan="2" style="border-top:4px solid #558dc0;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<img src="images/uIEnhancementImages/catissue_suite_logo.jpg"
								alt="caTissue Suite" width="236" height="75" />
							</td>
						</tr>
					</table>
				</td>
				<td valign="top">
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td valign="top">
								<img
								src="images/uIEnhancementImages/top_bg1.jpg" alt="Top corner"
								width="53" height="20" />
							</td>
							<td width="95%" valign="top"
								background="images/uIEnhancementImages/top_bg.jpg"
								style="background-repeat:repeat-x;">
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td valign="middle"><span class="wh_ar_b"><spring:message code="cas.welcome.message"/> </span></td>
									<td align="right" valign="top">
										<a
											href="/catissuecore/Home.do?operation=add" class="white"> <img
											src="images/uIEnhancementImages/ic_report.gif" alt="Home" width="15"
											height="12" border="0" hspace="2" vspace="0"><spring:message code="app.home" />
										</a>
										<a
											href="/catissuecore/ReportProblem.do?operation=add" class="white"> <img
											src="images/uIEnhancementImages/ic_report.gif" alt="Report Problems" width="15"
											height="12" border="0" hspace="2" vspace="0"><spring:message code="app.reportedProblems" />
										</a>&nbsp;
										<a
											href="/catissuecore/ContactUs.do?PAGE_TITLE_KEY=app.contactUs&FILE_NAME_KEY=app.contactUs.file"
											class="white"> <img
											src="images/uIEnhancementImages/ic_mail.gif" alt="Summary"
											width="16" height="12" hspace="3" vspace="0" border="0" /><spring:message code="app.contactUs" />
										</a>&nbsp;
										<a href="/catissuecore/SummaryPage.do"
											class="white"><img
											src="images/uIEnhancementImages/ic_summary.gif" alt="Summary"
											width="10" height="10" hspace="4" vspace="0" border="0" /><spring:message code="app.summary" />
										</a>&nbsp;&nbsp;
									</td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="80%" align="right" valign="top">
					<table border="0" cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td align="right">
									<img
									border="0" src="images/uIEnhancementImages/institution_logo.gif"
									alt="Siteman Cancer Center" width="198" height="54" vspace="5" />
								<img
									border="0" src="images/uIEnhancementImages/or_dot.gif"  alt="Divider line" width="1"
									height="50" hspace="10" vspace="5" />
								<a
									href="<spring:message code="cabig.url" />"><img border="0"
									src="images/uIEnhancementImages/cabig_logo.jpg" alt="caBIG"
									width="182" height="62" />
								</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr height="90%">
		<td>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td colspan="5" class="td_orange_line" height="1">
							</td>
						</tr>
						<tr>
							<td width="23%" align="center" valign="top"><br />
							<table width="95%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td class="td_boxborder">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tr class="wh_ar_b">
											<td width="20" colspan="3" align="left">
												<table border="0" cellpadding="0" cellspacing="0">
													<tr>
														<td nowrap="nowrap" class="td_table_head">
															<span class="wh_ar_b"><spring:message code="app.quickLinks" />
															</span>
														</td>
														<td>
															<img src="images/uIEnhancementImages/table_title_corner.gif" alt="Title" width="31" height="24" />
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td colspan="3" align="left" class="showhide1">
											<table width="98%" border="0" cellspacing="0" cellpadding="2">
												<tr>
													<td>
														<a href="https://cabig.nci.nih.gov/" target="_blank"
															class="view"><spring:message code="app.cabigHome" />
														</a>
												</tr>
												<tr>
													<td>
														<a href="http://ncicb.nci.nih.gov/" target="_blank"
															class="view"><spring:message code="app.ncicbHome" />
														</a>
													</td>
												</tr>
												<!-- Mandar : 16Jan09 PSPL Info -->
												<tr>
													<td>
														<a
															href="/catissuecore/PrivacyNotice.do?PAGE_TITLE_KEY=app.privacyNotice&FILE_NAME_KEY=app.privacyNotice.file"
															class="view"><spring:message code="app.privacyNotice" />
														</a>
													</td>
												</tr>
												<tr>
													<td>
														<a
															href="/catissuecore/Disclaimer.do?PAGE_TITLE_KEY=app.disclaimer&FILE_NAME_KEY=app.disclaimer.file"
															class="view"><spring:message code="app.disclaimer" />
														</a>
													</td>
												</tr>
													<tr>
														<td>
															<a
																href="/catissuecore/Accessibility.do?PAGE_TITLE_KEY=app.accessibility&FILE_NAME_KEY=app.accessibility.file"
																class="view"><spring:message code="app.accessibility" />
															</a>
														</td>
													</tr>
													<tr>
														<td style="padding-bottom: 16px;">
															<a
																href="/catissuecore/RedirectToHelp.do" class="view"><spring:message code="app.help" />
															</a>
														</td>
													</tr>
											</table>
											</td>
										</tr>
									</table>
									<td width="5"
										background="images/uIEnhancementImages/shadow_right.gif"
										style="background-repeat: repeat-y"></td>
									</td>
								</tr>
								<tr>
									<td class="norepeatbkgnImg">
									</td>
									<!--<td class="norepeatbkgnImg">
										<img src="images/uIEnhancementImages/shadow_corner.gif"
											alt="Shadow Corner" width="2" height="2" />
									</td>-->
								</tr>
							</table>
							</td>
							<td width="0%" rowspan="3" valign="top">
								<img
									src="images/uIEnhancementImages/sep_left.gif" width="8" height="458"
								/>
							</td>
							<td width="49%" rowspan="3" align="center" valign="top">
								<img
									src="images/uIEnhancementImages/concept_image_s.jpg"
									alt="caTissue Suite" width="450" height="470"
								/>
							</td>
							<td width="0%" rowspan="3" valign="top">
								<img
									src="images/uIEnhancementImages/sep_right.gif" width="8" height="458"
								/>
							</td>
							<td width="28%" align="center" valign="top"><br />
							<table width="95%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td class="td_boxborder">
									<table width="100%" border="0" cellpadding="0" cellspacing="0">
										<tr class="wh_ar_b">
											<td width="20" colspan="3" align="left">
											<table border="0" cellpadding="0" cellspacing="0">
												<tr>
													<td nowrap="nowrap" class="td_table_head">
														<span
															class="wh_ar_b"><spring:message code="app.loginMessage" />
														</span>
													</td>
													<td>
														<img
														src="images/uIEnhancementImages/table_title_corner.gif"
														alt="Title" width="31" height="24"
														/>
													</td>
												</tr>
											</table>
											</td>
										</tr>
										<tr>
										<td colspan="3" align="left" class="showhide1">
											<form:form method="post" id="fm1" commandName="${commandName}" htmlEscape="true" class="whitetable_bg">

													<form:errors path="*" class="errors" id="status" element="div"/>
													<table width="98%" border="0" cellpadding="4" cellspacing="0">
														<tr>
															<td class="black_ar">
																<spring:message code="app.UserID" />
																<c:if test="${not empty sessionScope.openIdLocalId}">
																<strong>${sessionScope.openIdLocalId}</strong>
																<input type="hidden" id="username" name="username" value="${sessionScope.openIdLocalId}" />
																</c:if>
															</td>
															<td>
																<c:if test="${empty sessionScope.openIdLocalId}">
																<spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
																<form:input class="black_ar" id="username" size="20" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="false" htmlEscape="true"/>
																</c:if>
															</td>
														</tr>
														<tr>
															<td class="black_ar">
																<spring:message code="screen.welcome.label.password" />
															</td>
															<td>
																<spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
															<form:password class="black_ar" id="password" size="20" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
															</td>
														</tr>
														<tr>
														</tr>
														<tr>
															<td class="black_ar" colspan="3">
																<input type="hidden" name="lt" value="${flowExecutionKey}" />
															<input type="hidden" name="_eventId" value="submit"/>
															</td>
														</tr>

														<tr>
															<td>&nbsp;</td>
															<td align="left" valign="middle">
															<table border="0" cellspacing="0" cellpadding="0">
																<tr>
																	<td>
																	<input name="Submit" type="submit" tabindex="3"
													class="blue_ar_b" value="<spring:message code="screen.welcome.button.login"/>" />
																	<a href="#" class="blue"><span class="wh_ar_b"></span></a></td>
																	<td width="6px" align="center"><img src="images/uIEnhancementImages/or_dot.gif"
																		alt="Divider line" width="1" height="15" hspace="5" /></td>
																	<td><a
																		href="/catissuecore/SignUp.do?operation=add&pageOf=pageOfSignUp" tabindex="4"
																		class="view"><spring:message code="app.signup" /></a></td>
																</tr>
															</table>
															</td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
														</tr>
													</table>
												</form:form>
											</td>
										</tr>
									</table>
									</td>
									<td width="5"
										background="images/uIEnhancementImages/shadow_right.gif">
									</td>
								</tr>
								<tr>
									<td class="norepeatbkgnImg">
									</td>
									<!--<td class="norepeatbkgnImg">
										<img src="images/uIEnhancementImages/shadow_corner.gif"
											alt="Shadow Corner" width="2" height="2" />
									</td>-->
								</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td align="center" valign="bottom">&nbsp</td>
							<td rowspan="2" align="left" valign="bottom">
							<table width="96%" border="0" cellspacing="1" cellpadding="5">
								<tr>
									<td class="black_ar"><spring:message code="app.adobe.required" /></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td class="blue_ar_b"><spring:message code="app.certified.browsers" /></td>
								</tr>
								<tr>
									<td class="black_ar">
										<img src="images/uIEnhancementImages/logo_ie.gif"
											alt="Internet Explorer 6.0"
											width="15" height="15" hspace="3"
											vspace="3" align="absmiddle"/>
										<spring:message code="app.certified.ie"/>
										<br />
										<img src="images/uIEnhancementImages/logo_firefox.gif"
											alt="Mozilla Firefox-2.0.0.3"
											width="15" height="15" hspace="3"
											vspace="3" align="absmiddle"/>
										<spring:message code="app.certified.mozilla"/>
										<br />
										<img src="images/uIEnhancementImages/logo_safari.gif"
											alt="Mac Safari 2.0.3"
											width="15" height="15" hspace="3"
											vspace="3" align="absmiddle"/>
										<spring:message code="app.certified.mac"/>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td align="center" valign="bottom">
							<table width="95%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td align="center"
										background="images/uIEnhancementImages/box_bg.gif"
										style="background-repeat: no-repeat; background-position: center;">
									<table width="100%" border="0" cellspacing="0" cellpadding="4">
										<tr>

											<td width="50%" height="72" align="center">
											<p><a href="http://www.cancer.gov/"><img
												src="images/uIEnhancementImages/logo1.gif"
												alt="National Cancer Institute Logo" width="57" height="50"
												border="0" /></a><br />
											</p>
											</td>
											<td width="50%" align="center"><a href="http://www.nih.gov/"><img
												src="images/uIEnhancementImages/logo2.gif"
												alt="National Institues of Health" width="56" height="50"
												border="0" /></a></td>
										</tr>
										<tr>
											<td align="center"><a href="http://www.dhhs.gov/"><img
												src="images/uIEnhancementImages/logo3.gif"
												alt="Department of Health &amp; Human Services" width="54"
												height="50" border="0" /></a></td>
											<td align="center"><a href="http://www.firstgov.gov/"><img
												src="images/uIEnhancementImages/logo4.gif"
												alt="First Government Logo" width="92" height="50" border="0" /></a></td>
										</tr>
									</table>
									</td>
								</tr>
							</table>
							<br>
							</td>
						<tr height="1">
							<td colspan="5" bgcolor="#bcbcbc">
							</td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
	<script>
	document.forms[0].username.focus();
	</script>
    </body>
</html>