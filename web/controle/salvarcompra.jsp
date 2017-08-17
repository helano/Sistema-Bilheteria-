<%-- 
    Document   : salvarcompra
    Created on : 19/01/2017, 01:49:14
    Author     : Mr Robot
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <script src="../bootstrap/js/bootstrap.js"></script>
        <link rel="stylesheet" href="../estilo.css">
    </head>
    <body class="fundo-padra">
<% 
String codigo_torcedor = request.getParameter("codigo_torcedor");
String  id_partida= request.getParameter("codigo_partida");
String nome_torcedor = request.getParameter("nome_torcedor");
    
        String     date=request.getParameter("data");
        String estadio = request.getParameter("estadio");
            String  id_estadio=request.getParameter("id_estadio");
             String id_time1=request.getParameter("id_time1");
             String id_time2=request.getParameter("id_time2");
             String  id_competicao=request.getParameter("id_competicao");
             String sValue = "2009-06-16" ; 
             java.sql.Date dtValue = java.sql.Date.valueOf(sValue);


PreparedStatement st3 = null;
Connection con = null;
ResultSet rs3 = null;

try{  
               Class.forName("org.postgresql.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
              
           
            String SQL3 = "INSERT INTO partida_torcedor VALUES (?,?,?,?,?,?,?,?)";
            st3=con.prepareStatement(SQL3);
            
            st3.setInt(1, Integer.parseInt(id_partida) );
                st3.setString(2, estadio);
                st3.setDate(3, dtValue);  
                st3.setInt(4, Integer.parseInt(id_estadio));
                st3.setInt(5, Integer.parseInt(id_time1));
                st3.setInt(6, Integer.parseInt(id_time2));
                st3.setInt(7, Integer.parseInt(id_competicao));
                st3.setInt(8, Integer.parseInt(codigo_torcedor));
                
                st3.executeUpdate();
                
              %>
  <div style=" padding-top:300px" align="center" class="container">
  <div class="alert alert-success ">
    <a href="http://localhost:8084/BilheteriaEstadio/login.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Parabens</strong> Compra Efetuada Com Sucesso
    <a  class="btn btn-primary" style="text-decoration: none" href="http://localhost:8084/BilheteriaEstadio/paineltorcedor.jsp?codigo=<%=codigo_torcedor%>&nome=<%=nome_torcedor%>">Voltar</a>
  </div>
  </div>
  



        
    </body>
</html>
  <%
            
            
  } catch(SQLException ex){
    
out.println("<br>"+ ex.getMessage());
		
	
        }       



%>