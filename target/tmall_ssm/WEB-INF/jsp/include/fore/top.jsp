<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>

<nav class="top ">
	<a href="${contextPath}">
		<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon-home redColor"></span>
		Our online shopping mall
	</a>

	<span>Welcome to zexin and qingda's shopping mall</span>

	<c:if test="${!empty user}">
		<a href="loginPage">${user.name}</a>
		<a href="forelogout">logout</a>
	</c:if>

	<c:if test="${empty user}">
		<a href="loginPage">Login</a>
		<a href="registerPage">Register</a>
	</c:if>


	<span class="pull-right">
			<a href="forebought">My order</a>
			<a href="forecart">
			<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon-shopping-cart redColor"></span>
			Shopping cart <strong>${cartTotalItemNumber}</strong> piece</a>
		</span>


</nav>



