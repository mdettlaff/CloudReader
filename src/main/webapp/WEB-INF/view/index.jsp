<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Cloud Reader</title>
		<link rel="stylesheet" href="/resources/style.css" type="text/css">
	</head>
	<body>

Hello!

<c:forEach items="${feedItems}" var="item">
	${item.feedTitle}<br>
	${item.title}<br>
	${item.link}<br>
	${item.description}
	<hr>
</c:forEach>

	</body>
</html>
