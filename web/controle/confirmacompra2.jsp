<%-- 
    Document   : confirmacompra2
    Created on : 19/01/2017, 01:17:05
    Author     : Mr Robot
--%>


  <%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
            String senha = request.getParameter("senha");
            String nome = request.getParameter("nome_torcedor");
            
            String codigo_torcedor = request.getParameter("codigo_torcedor");
            String codigo_partida = request.getParameter("codigo_partida");
           
            int id_partida=0;
            String estadio=null;
            String date=null;
            int id_estadio=0;
            int id_time1=0;
            int id_time2=0;
            int id_competicao=0;
            int id_torcedor=0;
           
            
            
  
  Connection con = null;
  Statement st = null;
        ResultSet rs2 = null;
  Statement st2 = null;
          PreparedStatement rs3 = null;
  Statement st3 = null;
  
  
        

try{
  Class.forName("org.postgresql.Driver").newInstance();
con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "postgres");
   String SQL2 = "SELECT * FROM partida WHERE id_partida='"+codigo_partida+"'";
 st2=con.createStatement();
rs2 = st2.executeQuery(SQL2);
        if (rs2.next()){
             id_partida=rs2.getInt(1);
             estadio=rs2.getString(2);
            date=rs2.getString(3);
             id_estadio=rs2.getInt(4);
             id_time1=rs2.getInt(5);
             id_time2=rs2.getInt(6);
             id_competicao=rs2.getInt(7);
             response.sendRedirect("http://localhost:8084/BilheteriaEstadio/controle/salvarcompra.jsp?codigo_torcedor="+codigo_torcedor+"&codigo_partida="+codigo_partida+"&id_partida="+id_partida+"&id_estadio="+id_estadio+"&data="+date+"&id_time1="+id_time1+"&id_time2="+id_time2+"&id_competicao="+id_competicao+"&estadio="+estadio+"&nome_torcedor="+nome+"");
             
        %>
 
        
        <%
             
        }



}catch(SQLException ex){
    
System.out.println("<br>"+ ex.getMessage());
    
  
        } 
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


        <h1>Hello World!</h1>
    </body>
</html>
