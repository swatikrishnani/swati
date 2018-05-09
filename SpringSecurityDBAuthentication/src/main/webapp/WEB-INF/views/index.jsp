<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>

	<c:when test="${role == 'ROLE_DEVELOPER'}">
		<jsp:include page="developerChecklist.jsp" />

	</c:when>
	<c:when test="${role == 'ROLE_SCRUMMASTER'}">
		<jsp:include page="scrumMasterChecklist.jsp" />
	</c:when>
	<c:when test="${role == 'ROLE_BA'}">
		<jsp:include page="businessAnalystChecklist.jsp" />
	</c:when>
	<c:when test="${role == 'ROLE_TESTER'}">
		<jsp:include page="login.jsp" />
		<jsp:include page="dropdown.jsp" />
	</c:when>
	<c:when test="${role == 'ROLE_TESTER_FAT'}">
		<jsp:include page="TesterFATChecklist.jsp" />
	</c:when>
	<c:when test="${role == 'ROLE_TESTER_INTEGRATION'}">
		<jsp:include page="TesterIntegration.jsp" />
	</c:when>
	<c:when test="${role == 'ROLE_TESTER_CI'}">
		<jsp:include page="TesterCIChecklist.jsp" />
	</c:when>
</c:choose>


