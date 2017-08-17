<%-- 
    Document   : alterar
    Created on : 11/01/2017, 20:14:29
    Author     : Mr Robot
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <script src="../bootstrap/js/bootstrap.js"></script>
        <link rel="stylesheet" href="../estilo.css">
        <title>JSP Page</title>
    </head>
    <body>
        
         <%
        String codigo = request.getParameter("codigo");
        String nome = request.getParameter("nome");
      String cpf = request.getParameter("cpf");
      String email = request.getParameter("email");
      String telefone = request.getParameter("telefone");
      
      
      
      
        Statement st= null;
        Connection con = null;
            ResultSet rs = null;
            PreparedStatement pst = null;
            try{
                   Class.forName("org.postgresql.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
              
              
              String SQL = "UPDATE  torcedor SET nome_torc='"+nome+"', cpf='"+cpf+"', email='"+email+"' , telefone='"+telefone+"' WHERE id_torcedor='"+codigo+"'"; 
                pst= con.prepareStatement(SQL);
            
                pst.executeUpdate();
               
                pst.clearParameters();
                
            
            
                
                %>
         <div style=" padding-top:300px" align="center" class="container">
  <div class="alert alert-success ">
    <a href="http://localhost:8084/BilheteriaEstadio/login.jsp" class="close" data-dismiss="alert" aria-label="close">&times;</a>
     Dados Alterados com sucesso!
    <a  class="btn btn-primary" style="text-decoration: none" href="http://localhost:8084/BilheteriaEstadio/paineltorcedor.jsp?codigo=<%=codigo%>&nome=<%=nome%>">Voltar</a>
  </div>
  </div>
  



        
    </body>
</html>         
                
                <%
            
            }catch(SQLException e){
                out.print("não foi possivel salvar ");
                out.print("erro"+ e.getMessage());
                 
                
            }
            finally{
                if (pst != null) pst.close();
                if (con != null) con.close();
            }
        
        
        %>
    </body>
</html>
