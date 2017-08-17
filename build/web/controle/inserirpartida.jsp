<%-- 
    Document   : inserirtime
    Created on : 16/01/2017, 19:46:01
    Author     : Mr Robot
--%>


<%@page import="java.util.Date"%>
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
                   
                    String codigo_competicao= request.getParameter("codigo_competicao");
                   String codigo_time1 = request.getParameter("codigo_time1");
                   String codigo_time2 = request.getParameter("codigo_time2");
                   String data = request.getParameter("data");
                   java.sql.Date dtValue = java.sql.Date.valueOf(data);
                   
                  String codigo_estadio = request.getParameter("codigo_estadio");
                  String nome_estadio = null;
                  String preco = request.getParameter("valor_ingresso");
                  
                    
                    
                    
                     

                   Connection con = null;
                    PreparedStatement pst= null;
                    ResultSet rs = null;
                      try{
                        Class.forName("org.postgresql.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
              
              String SQL = "SELECT nome_est FROM estadio WHERE id_estadio='"+codigo_estadio+"'"; 
                pst= con.prepareStatement(SQL);
               // pst.setString(1, codigo_competicao);
                                    
                
               rs = pst.executeQuery();
               if (rs.next()){
               nome_estadio = rs.getString("nome_est");
               }              
                
            
                
                
                
            
            }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            ex.printStackTrace();
            
            }
                    
                    
                    try{
                        Class.forName("org.postgresql.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
              
              String SQL = "INSERT INTO partida (id_competicao, id_time, id_time2, id_estadio, estadio, data, preco) VALUES ("+codigo_competicao+","+codigo_time1+","+codigo_time2+","+codigo_estadio+",'"+nome_estadio+"','"+data+"',"+preco+")"; 
                pst= con.prepareStatement(SQL);
               // pst.setString(1, codigo_competicao);
             
                
              
                
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
