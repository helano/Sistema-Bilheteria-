<%-- 
    Document   : editarTorcedor
    Created on : 15/01/2017, 20:05:33
    Author     : Mr Robot
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


    


<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        
        <link rel="stylesheet" href="estilo.css">
        
        
    </head>
    <body>
        <div class="menu navbar-fixed-top">
        <ul class="nav nav-pills">
            <li> <img alt="brand" src="img/logo.png"></li>
          <li role="presentation"><a href="login.jsp">Entrar</a></li>
          <li role="presentation"><a href="formtorcedor.jsp">Cadastro</a></li>
          <li role="presentation"><a href="ingressosEpartidas.jsp">Ingressos & Partidas</a></li>
          <li role="presentation"><a href="#">Sobre</a></li>
        </ul>
      </div> 
       <main class="principal-form">
           
           
           <%  
           String codigo = request.getParameter("codigo");
           String nome = new String ();
            String cpf = new String ();
             String email = new String ();
              String telefone = new String ();
              
              
           
                 
                 
                    
                    
                    
                     
                    Connection conn = null;
                    Statement st= null;
                    ResultSet rs = null;
                    try{
                        Class.forName("org.postgresql.Driver").newInstance();
                        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
                        st = conn.createStatement();
                        rs = st.executeQuery("SELECT   nome_torc, cpf, email, telefone, senha FROM torcedor WHERE id_torcedor='"+codigo+"'");
                       
                        
                        for (int i= 0; rs.next(); i++){
                       // while (rs.next()){
                            
                       // out.println(rs.getString("cod_produto")+" - ");
                         
                         nome = rs.getString("nome_torc");
                         //out.println(rs.getString("desc_produto")+" - ");
                           
                           cpf = rs.getString("cpf");
                      
                          //out.println(rs.getString("qtd_produto")+" - ");
                             
                             email= rs.getString("email");
                             telefone=rs.getString("telefone");
                             
                          
                           //out.println(rs.getString("val_produto")+" - ");
                           
                             
                              
                        }
                     
                           %>

                    
                                                                <div class="container">

                                                                    <form class="well form-horizontal" action="controle/editartorcedor.jsp" method="post"  id="contact_form">
                                      <fieldset>

                                      <!-- Form Name -->
                                      <legend>Editar Informações</legend>

                                      <!-- Text input-->

                                      <div class="form-group">
                                        <label class="col-md-4 control-label">Nome</label>  
                                        <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="nome" placeholder="Nome" class="form-control"  type="text" value="<%=nome%>">
                                          </div>
                                        </div>
                                      </div>
                                      
                                      <div class="form-group">
                                        <label class="col-md-4 control-label">CPf</label>  
                                        <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="cpf" placeholder="cpf" class="form-control"  type="text" value="<%=cpf%>">
                                        <input  name="codigo" Style="display: none;" class="form-control"  type="text" value="<%=codigo%>">
                                          </div>
                                        </div>
                                      </div>

                                      <!-- Text input-->

                                      <!-- Text input-->
                                             <div class="form-group">
                                        <label class="col-md-4 control-label">E-Mail</label>  
                                          <div class="col-md-4 inputGroupContainer">
                                          <div class="input-group">
                                              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="email" placeholder="E-Mail " class="form-control"  type="text" value="<%=email%>">
                                          </div>
                                        </div>
                                      </div>
                                            <div class="form-group">
                                        <label class="col-md-4 control-label">Telefone #</label>  
                                          <div class="col-md-4 inputGroupContainer">
                                          <div class="input-group">
                                              <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                              <input name="telefone" placeholder="(845)555-1212" class="form-control" type="text" value="<%=telefone%>">
                                          </div>
                                        </div>
                                      </div>



                                      <!-- Text input-->

                                      <div class="form-group">
                                        <label class="col-md-4 control-label">Senha</label>  
                                          <div class="col-md-4 inputGroupContainer">
                                          <div class="input-group">
                                              <span class="input-group-addon"><i class="glyphicon glyphicon-eye-close"></i></span>
                                              <input name="senha" placeholder="*****" class="form-control" type="password">
                                          </div>
                                        </div>
                                      </div>

                                     
                                      <!-- Success message -->
                                      <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

                                      <!-- Button -->
                                      <div class="form-group">
                                        <label class="col-md-4 control-label"></label>
                                        <div class="col-md-4">
                                          <button type="submit" class="btn btn-warning" >Send <span class="glyphicon glyphicon-send"></span></button>
                                        </div>
                                      </div>

                                      </fieldset>
                                      </form>
                                      </div>

<!-- /.container -->


					



			</main>
         </body>
          
               
   
</html>

                            
                    <% 
                
                
                
            
            }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            out.println("<br>" + ex.getMessage());
            
            }finally {
                if (rs != null) rs.close();
                if (st != null ) st.close();
                if (conn != null) conn.close();
            
            }
           
           
           %>