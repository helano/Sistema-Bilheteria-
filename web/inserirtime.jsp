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

                                        
                                     
                                     <form class="well form-horizontal" action="controle/inserirtime.jsp" method="post"  id="contact_form">
                                                        
      
                                      <fieldset>

                                      <legend>Cadastro Time</legend>

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
                                          <label class="col-md-4 control-label">País</label>
                                            <div class="col-md-4 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <select name="pais" class="form-control selectpicker" >
                                              <option value=" " >Selecionar País</option>
                                              <option>Brasil</option>
                                              
                                           
                                            </select>
                                          </div>
                                        </div>
                                        </div>
                                  <div class="form-group"> 
                                          <label class="col-md-4 control-label">Estado</label>
                                            <div class="col-md-4 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                                  <select name="estado" class="form-control selectpicker">
                                                         <option value="AC">Acre</option>
                                                         <option value="AL">Alagoas</option>
                                                         <option value="AP">Amapá</option>
                                                         <option value="AM">Amazonas</option>
                                                         <option value="BA">Bahia</option>
                                                         <option value="CE">Ceará</option>
                                                         <option value="DF">Distrito Federal</option>
                                                         <option value="ES">Espírito Santo</option>
                                                         <option value="GO">Goiás</option>
                                                         <option value="MA">Maranhão</option>
                                                         <option value="MT">Mato Grosso</option>
                                                         <option value="MS">Mato Grosso do Sul</option>
                                                         <option value="MG">Minas Gerais</option>
                                                         <option value="PA">Pará</option>
                                                         <option value="PB">Paraíba</option>
                                                         <option value="PR">Paraná</option>
                                                         <option value="PE">Pernambuco</option>
                                                         <option value="PI">Piauí</option>
                                                         <option value="RJ">Rio de Janeiro</option>
                                                         <option value="RN">Rio Grande do Norte</option>
                                                         <option value="RS">Rio Grande do Sul</option>
                                                         <option value="RO">Rondônia</option>
                                                         <option value="RR">Roraima</option>
                                                         <option value="SC">Santa Catarina</option>
                                                         <option value="SP">São Paulo</option>
                                                         <option value="SE">Sergipe</option>
                                                         <option value="TO">Tocantins</option>
                                                 </select>
                                          </div>
                                        </div>
                                        </div>
                                   
                                      <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

                                     
                                      <div class="form-group">
                                        <label class="col-md-4 control-label"></label>
                                        <div class="col-md-4">
                                          <button type="submit" class="btn btn-primary" >Send <span class="glyphicon glyphicon-send"></span></button>
                                        </div>
                                      </div>

                                      </fieldset>
                                              
                                      </form>
                                      </div>

			
		</main>
    </body>
</html>
