<%--L
   Copyright Washington University in St. Louis
   Copyright SemanticBits
   Copyright Persistent Systems
   Copyright Krishagni

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/catissue_CAS/LICENSE.txt for details.
L--%>

<%@ page session="false" contentType="text/plain" %><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><cas:serviceResponse xmlns:cas='http://www.yale.edu/tp/cas'>
	<cas:proxyFailure code='${code}'>
		${fn:escapeXml(description)}
	</cas:proxyFailure>
</cas:serviceResponse>