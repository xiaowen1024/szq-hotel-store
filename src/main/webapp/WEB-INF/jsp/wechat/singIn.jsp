<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title></title>

</head>

<body>
<div id="text">
  ${code}
  <%--code=<%=request.getParameter("code")%>--%>
</div>
</body>
<script src="/static/js/mainJs/jquery.min.js"></script>
<script>
  alert('${code}');
  $(function(){
    window.location.href = 'http://192.168.1.125:8080';
  });

</script>

</html>
