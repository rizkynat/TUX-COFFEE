<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Upload Image</title>
    </head>
    
    <body>
    
        <b>Upload | <a href="view.jsp">View</a></b><br/><br/>
        
        <form action="http://localhost:8080/tux_coffee/uploadImage" method="post" enctype="multipart/form-data">
            <input type="file" name="image" required="required"/><br/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
