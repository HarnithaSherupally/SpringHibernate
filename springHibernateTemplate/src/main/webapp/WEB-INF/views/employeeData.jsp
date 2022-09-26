<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="a" %>
<mp:Master title="Employee Details">
	<jsp:attribute name="head"></jsp:attribute>
	<jsp:attribute name="content">
		<table class="table table-sm table-dark">
	<tr>
		<th>Employee No</th>
		<th>Employee Name</th>
		<th>job</th>
		<th>Mgr</th>
		<th>Hiredate</th>
		<th>Salary</th>
		<th>Commission</th>
		<th>DeptNo</th>
	</tr>
	<a:forEach var="e" items="${list}">
		<tr>
			<td>${e.empno}</td>
			<td>${e.ename }</td>
			<td>${e.job}</td>
			<td>${e.mgr}</td>
			<td>${e.hiredate}</td>
			<td>${e.sal}</td>
			<td>${e.comm}</td>
			<td>${e.deptno}</td>
		</tr>
	</a:forEach>
	</table>
	
	</jsp:attribute>
</mp:Master>