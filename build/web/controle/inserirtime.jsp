<%-- 
    Document   : inserirtime
    Created on : 16/01/2017, 19:46:01
    Author     : Mr Robot
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            
                   String nome= request.getParameter("nome");
                   String pais = request.getParameter("pais");
                   String  estado= request.getParameter("estado");
                  
                    
                    
                    
                     

                   Connection con = null;
                    PreparedStatement pst= null;
                    ResultSet rs = null;
                    try{
                        Class.forName("org.postgresql.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
              
              String SQL = "INSERT INTO timer (nome_time, pais, estado) VALUES (?,?,?)"; 
                pst= con.prepareStatement(SQL);
                pst.setString(1, nome);
                pst.setString(2, pais);
                pst.setString(3, estado);
              
                
               pst.execute();
               out.println("<h1> cadastro realizado</h2>");
              response.sendRedirect("http://localhost:8084/BilheteriaEstadio/paineladmin.jsp");
                pst.clearParameters();
                
                
            
                
                
                
            
            }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            out.println("<br> <br>" + ex.getMessage());
            
            }finally {
                if (rs != null) rs.close();
                if (pst != null ) pst.close();
                if (con != null) con.close();
            
            }
        %>
        
    </body>
</html>
