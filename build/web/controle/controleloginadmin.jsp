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
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../estilo.css">
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <script src="../bootstrap/js/bootstrap.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="fundo-padra">
   
        
        <%
            String tipo = request.getParameter("tipo");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String codigo = request.getParameter("codigo");
            String nome = request.getParameter("nome");
            
            
	
	Connection con = null;
        ResultSet rs = null;
        
	
Statement st = null;

try{
	Class.forName("org.postgresql.Driver").newInstance();
con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "postgres");
 String SQL = "SELECT * FROM admin WHERE email = '"+email+"' AND senha= '"+senha+"'";
 st=con.createStatement();
rs = st.executeQuery(SQL);

if(rs.next()){
    
  response.sendRedirect("http://localhost:8084/BilheteriaEstadio/paineladmin.jsp?codigo="+codigo+"&senha="+codigo+"");  
 
}else{
    %>
  <div style=" padding-top:300px" align="center" class="container">
  <div class="alert alert-danger alert-dismissible">
    <a href="http://localhost:8084/BilheteriaEstadio/loginadmin.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Erro</strong> Senha incorreta ou usuario nao existe
    <a  class="btn btn-danger" style="text-decoration: none" href="http://localhost:8084/BilheteriaEstadio/loginadmin.jsp">Sair</a>
  </div>
  </div>
    <%

};



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