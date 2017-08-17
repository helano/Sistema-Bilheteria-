<%-- 
    Document   : autenticar
    Created on : 15/01/2017, 18:40:46
    Author     : Faan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


        <%
            String senha = request.getParameter("senha");
            String nome ;
            
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
            Double preco;
           
            
            
	
	Connection con = null;
        ResultSet rs = null;
	Statement st = null;
        ResultSet rs2 = null;
	Statement st2 = null;
          PreparedStatement rs3 = null;
	Statement st3 = null;
        





try{
	Class.forName("org.postgresql.Driver").newInstance();
con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "postgres");
 String SQL = "SELECT * FROM torcedor WHERE senha= MD5('"+senha+"') AND id_torcedor='"+codigo_torcedor+"'";
 st=con.createStatement();
rs = st.executeQuery(SQL);

                if(rs.next()){
                    nome=rs.getString(2);
                        response.sendRedirect("http://localhost:8084/BilheteriaEstadio/controle/confirmacompra2.jsp?codigo_torcedor="+codigo_torcedor+"&codigo_partida="+codigo_partida+"&nome_torcedor="+nome+"");
                }else{
                
                

    %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
       <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <script src="../bootstrap/js/bootstrap.js"></script>
        <link rel="stylesheet" href="../estilo.css">
        
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="fundo-padra">
   
        

  <div style=" padding-top:300px" align="center" class="container">
  <div class="alert alert-danger alert-dismissible">
    <a href="http://localhost:8084/BilheteriaEstadio/login.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Erro</strong> Senha incorreta ou usuario nao existe
    <a  class="btn btn-danger" style="text-decoration: none" href="http://localhost:8084/BilheteriaEstadio/login.jsp">Sair</a>
  </div>
  </div>
      
    <%
        }
        
} catch(SQLException ex){
    
System.out.println("<br>"+ ex.getMessage());
		
	
} finally{
	
	if(rs!=null)rs.close();
		if(st!=null)st.close();
		if(con !=null) con.close();
	
}


            %>
     </body>
</html>