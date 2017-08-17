<%-- 
    Document   : login
    Created on : 13/01/2017, 12:08:33
    Author     : Mr Robot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        
        <link rel="stylesheet" href="estilo.css">
        
     
 

  
  </head>

  <body>
    
      
      <div class="menu navbar-fixed-top">
        <ul class="nav nav-pills">
            <li> <img alt="brand" src="img/logo.png"></li>
          <li role="presentation"><a href="formtorcedor.jsp">Cadastro</a></li>
          <li role="presentation"><a href="ingressosEpartidas.jsp">Ingressos & Partidas</a></li>
          <li role="presentation"><a href="#">Sobre</a></li>
          <li role="presentation"><a href="login.jsp">Ambiente do Torcedor</a></li>
           <li role="presentation"><a href="loginadmin.jsp">Ambiente do Administrador</a></li>
        </ul>
      </div> 
      
      
   <main class="principal-form">
 
		                 <div class="container">

                                        
                                     
                                     <form class="well form-horizontal" action="controle/controleloginadmin.jsp" method="post"  id="contact_form">
                                                                        <% 
                                       String tipo = request.getParameter("tipo");
                                       %>
      
                                      <fieldset>

                                      <!-- Form Name -->
                                      <legend>Log-in</legend>

                                      <!-- Text input-->

                                     

                                      <!-- Text input-->

                                      <!-- Text input-->
                                             <div class="form-group">
                                        <label class="col-md-4 control-label">E-Mail</label>  
                                          <div class="col-md-4 inputGroupContainer">
                                          <div class="input-group">
                                              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
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

                                      <!-- Text input-->

                       

                                      <!-- Text input-->

                                    

                                      <!-- Text input-->
                                      

                                      <!-- radio checks -->
                                       

                                  

                                      <!-- Success message -->
                                      <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

                                      <!-- Button -->
                                      <div class="form-group">
                                        <label class="col-md-4 control-label"></label>
                                        <div class="col-md-4">
                                          <button type="submit" class="btn btn-primary" >Entrar <span class="glyphicon glyphicon-send"></span></button>
                                        </div>
                                      </div>

                                      </fieldset>
                                              
                                      </form>
                                      </div>

<!-- /.container -->

			
		</main>
    </body>
</html>
