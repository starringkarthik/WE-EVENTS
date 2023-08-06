<%-- 
    Document   : Addimage
    Created on : 6 Apr, 2022, 9:43:06 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AddImage</title>
    </head>
    <body>
        <form action="FileUploadServlet" method="post" enctype="multipart/form-data">
                     Select File to upload:<input type="file" name="file"><br/>
                     Destination:<input type="text" name="destination"><br/>
                     <input type="submit" value="UploadFile" name="s1">
        </form>
    </body>
</html>
