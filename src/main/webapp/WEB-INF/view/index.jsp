<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Cloud Reader</title>
		<link rel="stylesheet" href="/resources/style.css" type="text/css">
		<script src="/resources/jquery-1.9.1.js"></script>
		<script src="/resources/jquery.hotkeys.js"></script>
		<script src="/resources/cloudreader.js"></script>
		<script>
			$(document).ready(function () {
				initCloudReaderHotkeys();
			});
		</script>
	</head>
	<body>


<c:if test="${empty feedItems}">
No items to display.
</c:if>
<c:forEach items="${feedItems}" var="item">
<div id="${item.guid}" class="item">
	<div class="feedTitle">${item.feed.title}</div>
	${item.feed.link}<br>
	<div class="title">${item.title}</div>
	${item.link}<br>
	<div class="description">${item.description}</div>
</div>
</c:forEach>


	</body>
</html>
