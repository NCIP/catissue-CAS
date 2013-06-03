<%--L
   Copyright Washington University in St. Louis
   Copyright SemanticBits
   Copyright Persistent Systems
   Copyright Krishagni

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/catissue_CAS/LICENSE.txt for details.
L--%>

<%@ page language="java"  session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
 <body onload="document.acsForm.submit();">
   <form name="acsForm" action="${originalUrl}" method="post">
     <div style="display: none">
       <c:forEach items="${parameters}" var="entry">
         <textarea rows=10 cols=80 name="${entry.key}"><c:out value="${entry.value}" escapeXml="true" /></textarea>
       </c:forEach>
     </div>
     <noscript>
       <p>You are being redirected to ${originalUrl}. Please click &quot;Continue&quot; to continue your login.</p>
       <p><input type="submit" value="Continue" /></p>
     </noscript>
   </form>
 </body>
</html>