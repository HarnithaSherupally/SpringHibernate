<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="head" fragment="true" %>
<%@ attribute name="content" fragment="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/menubar.css">
</head>
<body>
<%-- <c:set var="context" value="/src/main/webapp/WEB-INF/images/tw.png"/>
<c:out value="${context}"></c:out> --%>

<div style="position:absolute;left:0px;top:0px;width:100%;height:10%">
	<img src="<%=request.getContextPath()%>/resources/images/1.jpg" style="width:100%;height:100%;">
</div>
<div style="position:absolute;left:0px;top:11%;width:100%;height:10%;">
	<ul>
	  <li><a class="active" href="#home">Home</a></li>
	  <li><a href="GetEmpBasedOnDept">GetEmpBasedOnDept</a></li>
	  <li><a href="retrieve">Retrieve</a></li>
	   <li><a href="insertEmp">InsertEmp</a></li>
	   <li><a href="insertDept">InsertDept</a></li>
	    <li><a href="updateEmp">UpdateEmp</a></li>
	</ul>
</div>
<%-- <img src="<c:url value='/images/tw.png' />"/> --%>
<jsp:invoke fragment="head"></jsp:invoke>

<div style="position:absolute;left:5%;right:5%;top:23%;width:90%;height:10%;">
	<jsp:invoke fragment="content"></jsp:invoke>
</div>
</body>
</html>