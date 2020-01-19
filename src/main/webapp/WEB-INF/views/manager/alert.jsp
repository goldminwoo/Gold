<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<script type="text/javascript">
		var message = '${msg}';
		var returnUrl = '${url}';
		alert(message);
		document.location.href = returnUrl;
	</script>
</html>