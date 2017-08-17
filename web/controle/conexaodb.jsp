<%-- 
    Document   : conexaodb
    Created on : 15/01/2017, 01:44:33
    Author     : Mr Robot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                 Connection con = null;
                    PreparedStatement pst= null;
                    ResultSet rs = null;
                    try{
                        Class.forName("org.postgresql.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
              
              String SQL = "SELECT id_torcedor FROM torcedor WHERE email=? AND senha=?"; 
                pst= con.prepareStatement(SQL);
                pst.setString(1, email);
                pst.setString(2, senha);
                
                
               rs= pst.executeQuery();
               codigo = rs.getString("cod");
               
                pst.clearParameters();
                
                response.sendRedirect("http://localhost:8084/BilheteriaEstadio/paineltorcedor.jsp"); 
                
                
                
            
            }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            out.println("<br>" + ex.getMessage());
            
            }
                    
    </body>
</html>
