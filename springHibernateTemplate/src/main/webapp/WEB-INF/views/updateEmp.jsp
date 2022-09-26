<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="a" %>
<mp:Master title="Employee Details">
	<jsp:attribute name="head"></jsp:attribute>
	<jsp:attribute name="content">
	<form action="updatingEmp">
		<table class="table table-sm table-dark">
			<tr>
				<td>Employee No:</td>
				<td>
					<select name="emp">
						<option value="-1">--SELECT--</option>
						<a:forEach var="e" items="${ elist}">
							<option value="${e.empno}">${e.empno}</option>
						</a:forEach>
					</select>
				</td>
			</tr>	
			<tr align="center"><td colspan="2"><input type="submit" value="UpdateEmp"></td></tr>
		</table>	
	</form>
	</jsp:attribute>
</mp:Master>