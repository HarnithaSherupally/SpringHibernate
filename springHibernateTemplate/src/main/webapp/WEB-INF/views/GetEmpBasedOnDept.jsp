<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib tagdir="/WEB-INF/tags" prefix="mp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="a" %>
<mp:Master title="Get Employee Details Based On Dept">
	<jsp:attribute name="head"></jsp:attribute>
	<jsp:attribute name="content">
		<form action="GettingEmpBasedOnDept">
			<table  class="table table-sm table-dark">
			<tr> <td>DEPTARTMENT: </td>
			<td>
				<select name="department">
				<option value="-1">Select</option>
				<a:forEach var="dept" items="${dlist}">
					<option value="${dept.deptno}">${dept.dname}</option>
				</a:forEach>
				</select>
			</td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit"></td>
			</tr>
			</table>
		</form>
	</jsp:attribute>
</mp:Master>