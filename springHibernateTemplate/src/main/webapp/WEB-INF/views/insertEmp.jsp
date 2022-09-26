<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="a" %>
<mp:Master title="Employee Details">
	<jsp:attribute name="head"></jsp:attribute>
	<jsp:attribute name="content">
	<form action="insertingEmp">
		<table class="table table-sm table-dark">
			<tr>
				<td>Employee No:</td>
				<td><input type="text" name="empno"></td>
			</tr>
			<tr>
				<td>Employee Name:</td>
				<td><input type="text" name="ename"></td>
			</tr>
			<tr>
				<td>Job:</td>
				<td><input type="text" name="job"></td>
			</tr>
			<tr>
				<td>Mgr:</td>
				<td><input type="text" name="mgr"></td>
			</tr>
			<tr>
				<td>Hire Date:</td>
				<td><input type="date" name="hiredate"></td>
			</tr>
			<tr>
				<td>Salary:</td>
				<td><input type="text" name="sal"></td>
			</tr>
			<tr>
				<td>Commissiono:</td>
				<td><input type="text" name="comm"></td>
			</tr>
			<tr>
				<td>Department:</td>
				<td>
					<select name="deptno">
						<option value="-1">---SELECT---</option>
						<a:forEach var="d" items="${dlist}">
							<option value="${d.deptno}">${d.dname}</option>
						</a:forEach>
					</select>
				</td>
			</tr>
			<tr align="center"><td colspan="2"><input type="submit" value="Insert"></td></tr>
	</table>	
	</form>
		<a:out value="${msg}"></a:out>
	</jsp:attribute>
</mp:Master>