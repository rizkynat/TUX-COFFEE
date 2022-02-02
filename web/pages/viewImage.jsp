<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>View Image</title>
    </head>
    
    <body>
    
        <b>View | <a href="index.jsp">Upload</a></b><br/><br/>
        
<%
String id = request.getParameter("id");
%>
<img src="http://localhost:8080/tux_coffee/pages/getImage.jsp?id=<%=id%>" width="400px"/>
 
    </body>
</html>
