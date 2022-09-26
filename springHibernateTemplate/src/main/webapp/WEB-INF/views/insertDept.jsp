<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="a" %>
<mp:Master title="Employee Details">
	<jsp:attribute name="head"></jsp:attribute>
	<jsp:attribute name="content">
	<form action="insertingDept">
		<table class="table table-sm table-dark">
			<tr>
				<td>Department No:</td>
				<td><input type="text" name="deptno"></td>
			</tr>
			<tr>
				<td>Department Name:</td>
				<td><input type="text" name="dname"></td>
			</tr>
			<tr>
				<td>Location:</td>
				<td><input type="text" name="loc"></td>
			</tr>
			<tr align="center"><td colspan="2"><input type="submit" value="Insert"></td></tr>
	</table>	
	</form>
		<a:out value="${msg}"></a:out>
	</jsp:attribute>
</mp:Master>