<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a"%>
<mp:Master title="Update Emp">
	<jsp:attribute name="head"></jsp:attribute>
	<jsp:attribute name="content">
	<form action="updatedEmp">
		<table class="table table-sm table-dark">
		<tr>
				<td>Employee No:</td>
				<td><input type="hidden" name="empno" value="${employee.empno}"><a:out value="${employee.empno}"></a:out></td>
			</tr>
			<tr>
				<td>Employee Name:</td>
				<td><input type="text" name="ename" value="${employee.ename}"></td>
			</tr>
			<tr>
				<td>Job:</td>
				<td><input type="text" name="job" value="${employee.job}"></td>
			</tr>
			<tr>
				<td>Mgr:</td>
				<td><input type="text" name="mgr" value="${employee.mgr}"></td>
			</tr>
			<tr>
				<td>Hire Date:</td>
				<td><input type="date" name="hiredate" value="${employee.hiredate}"></td>
			</tr>
			<tr>
				<td>Salary:</td>
				<td><input type="text" name="sal" value="${employee.sal}"></td>
			</tr>
			<tr>
				<td>Commission:</td>
				<td><input type="text" name="comm" value="${employee.comm}"></td>
			</tr>
			<tr>
				<td>Department:</td>
				<td>
					<select name="deptno" ">
						<a:forEach var="d" items="${dlist}">
							<a:choose>
								<a:when test="${d.deptno==employee.deptno }">
									<option value="${d.deptno}" selected>${d.dname}</option>
								</a:when>
								<a:otherwise>
									<option value="${d.deptno}">${d.dname}</option>
								</a:otherwise>
							</a:choose>
							
						</a:forEach>
					</select>
				</td>
			</tr>
			<tr align="center"><td colspan="2"><input type="submit" value="Update"></td></tr>
		</table>
		</form>
		<a:out value="${msg}"></a:out>
		</jsp:attribute>
</mp:Master>
