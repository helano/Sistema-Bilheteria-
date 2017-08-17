<%-- 
    Document   : verificar
    Created on : 11/01/2017, 20:50:30
    Author     : Mr Robot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>  
         <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    </head>
    <body>
       
        <h1 class="h1 has-warning">deseja excluir o Torcedor? </h1>
        <%
            String cod= request.getParameter("cod");
        
            %>
            <div style=" width: 200px; height: 200px" >
            <table class="table table-hover">
                <tr>
                    <td><a href="excluirTorcedor.jsp?cod=<%=cod%>" class="btn btn-danger ">Confirmar</td> <td><a href="index.jsp" class="btn btn-primary"> cancelar</a> </td>
                </tr>
                
                
            </table>
                </div>
            
            </body>
</html>
