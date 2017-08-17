<%-- 
    Document   : excluirTorcedor.jsp
    Created on : 15/01/2017, 21:39:37
    Author     : Mr Robot
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String codigo = request.getParameter("codigo");
            Connection con = null;
            Statement st= null;
          
            PreparedStatement pst = null;
            try{
                Class.forName("org.postgresql.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
              
              String SQL = "DELETE FROM timer WHERE id_time='"+codigo+"'"; 
               pst = con.prepareStatement(SQL);
                pst.executeUpdate();
                
                
                response.sendRedirect("http://localhost:8084/BilheteriaEstadio/listatimes.jsp");
            
            
            }catch(SQLException e){
                out.print("não foi possivel excluir");
                out.print("erro"+ e.getMessage());
                 
                
            }
            finally{
                if (pst != null) pst.close();
                if (con != null) con.close();
            }
        
            %>
    </body>
</html>
