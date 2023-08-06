<%-- 
    Document   : pay
    Created on : 7 Apr, 2022, 10:06:02 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <h3>Scan here to pay</h3>
        <img src="scan.png" height="500px" width="500px">
      <script type="text/javascript">
  var myTimer = window.setTimeout(timer, 5000);

  function timer() {
    window.location.href = "checkout.jsp"
  }
</script>

    </body>
</html>
