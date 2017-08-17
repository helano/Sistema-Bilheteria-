<%-- 
    Document   : inserirtime
    Created on : 16/01/2017, 19:24:28
    Author     : Mr Robot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
              <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        
        <link rel="stylesheet" href="estilo.css">
        
        
        
    </head>
    <body>
        <main class="principal-form">
 
		                 <div class="container">

                                        
                                     
                                     <form class="well form-horizontal" action="controle/inserirestadio.jsp" method="post"  id="contact_form">
                                                        
      
                                      <fieldset>

                                      <legend>Cadastro Estádio</legend>

                                             <div class="form-group">
                                        <label class="col-md-4 control-label">Nome</label>  
                                          <div class="col-md-4 inputGroupContainer">
                                          <div class="input-group">
                                              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="nome" placeholder="E-Mail Address" class="form-control"  type="text">
                                          </div>
                                        </div>
                                      </div>
                                       <div class="form-group">
                                        <label class="col-md-4 control-label">Capacidade</label>  
                                          <div class="col-md-4 inputGroupContainer">
                                          <div class="input-group">
                                              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="capacidade" placeholder="82300" class="form-control"  type="text">
                                          </div>
                                        </div>
                                      </div>
                                       
                                       
                                      


                       
                                  
                                   
                                      <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

                                     
                                      <div class="form-group">
                                        <label class="col-md-4 control-label"></label>
                                        <div class="col-md-4">
                                          <button type="submit" class="btn btn-primary" >Inserir <span class="glyphicon glyphicon-send"></span></button>
                                        </div>
                                      </div>

                                      </fieldset>
                                              
                                      </form>
                                      </div>

			
		</main>
    </body>
</html>
