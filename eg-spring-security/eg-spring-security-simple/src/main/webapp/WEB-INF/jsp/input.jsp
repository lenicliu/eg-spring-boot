<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Boot Security Simple</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="/webjars/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="/webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Spring Boot Security Simple</h2>
		<div class="row">
			<div class="col-md-12">
				Hi&nbsp;
				<sec:authentication property="principal.username" />
				,&nbsp;
				<a href="logout">Logout</a>
			</div>
			<div class="col-md-12">
				<form id="input-form" method="POST" action="submit">
					<input type="hidden" name="id" value="${message.id}" />
					<div class="form-group">
						<label for="inputMessage">Message</label>
						<input type="text" class="form-control" name="content" value="${message.message}" id="inputMessage" required="required">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
					<a href="/" class="btn btn-default">Back</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>