<%-- 
    Document   : formpartidas
    Created on : 13/01/2017, 12:10:28
    Author     : Mr Robot
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>


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
            <li> <img alt="brand" src="img/logo.png" ></li>
          <li role="presentation"><a href="formtorcedor.jsp">Cadastro</a></li>
          <li role="presentation"><a href="ingressosEpartidas.jsp">Ingressos & Partidas</a></li>
          <li role="presentation"><a href="#">Sobre</a></li>
          <li role="presentation"><a href="login.jsp">Ambiente do Torcedor</a></li>
           <li role="presentation"><a href="loginadmin.jsp">Ambiente do Administrador</a></li>
        </ul>
      </div> 
            <main class="principal-form">
                                                                <div class="container">

                                                                    <form class="well form-horizontal" action="controle/inserirpartida.jsp" method="post"  id="contact_form">
                                      <fieldset>

                                      <!-- Form Name -->
                                      <legend>Inserir Partida</legend>

                                      <!-- Text input-->
  
                                        <div class="form-group"> 
                                          <label class="col-md-4 control-label">Competição</label>
                                            <div class="col-md-4 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-flag"></i></span>
                                            <select name="codigo_competicao" class="form-control selectpicker" >
                                              <option value=" " >Selecionar Competição</option>
                                              <%
                                                    
                    String []  competicao = new String[100];
                    int []  cod_competicao = new int[100];
                    String []  nome_time1 = new String [100];
                    int []  codigo_time1 = new int [100];
                    String []  nome_time2 = new String [100];
                    int []  codigo_time2 = new int [100];
                    String []  nome_estadio = new String [100];
                    int []  codigo_estadio = new int[100];
                    
                    Connection conn = null;
                    Statement st= null;
                    ResultSet rs = null;
                    try{
                        Class.forName("org.postgresql.Driver").newInstance();
                        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
                        st = conn.createStatement();
                        rs = st.executeQuery("SELECT nome_comp, id_competicao FROM competicao");
       
                        for (int i= 0; rs.next(); i++){
         competicao[i] = rs.getString("nome_comp");
                         cod_competicao[i] = Integer.parseInt(rs.getString("id_competicao"));
                }
     
            }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            out.println("<br>" + ex.getMessage());
            
            }
                                                  for (int i=0;competicao[i]!=null;i++){
                                              out.print("<option value="+cod_competicao[i]+">"+competicao[i]+"</option>");
                                                                                            
                                                      }
                                                      %>
                                           
                                            </select>
                                          </div>
                                        </div>
                                        </div>
                                            <div class="form-group"> 
                                          <label class="col-md-4 control-label">Time Mandante</label>
                                            <div class="col-md-4 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <select name="codigo_time1" class="form-control selectpicker" >
                                              <option value=" " >Selecionar Time Mandante</option>
                                              <%
                                                  try{
                                                      
                                                   st = conn.createStatement();
                        rs = st.executeQuery("SELECT nome_time, id_time FROM timer");
       
                        for (int i= 0; rs.next(); i++){
                    nome_time1[i] = rs.getString("nome_time");
                                    codigo_time1[i] = Integer.parseInt(rs.getString("id_time"));
                }
     
            }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            out.println("<br>" + ex.getMessage());
            
            }
                                                  for (int i=0;nome_time1[i]!=null;i++){
                                              out.print("<option value="+codigo_time1[i]+">"+nome_time1[i]+"</option>");
                                                                                            
                                                      }
                                                  
                                              
                                              %>
                                              
                                              
                                              
                                                                                        
                                            </select>
                                          </div>
                                        </div>
                                        </div>
                                         <div class="form-group"> 
                                          <label class="col-md-4 control-label">Time Visitante</label>
                                            <div class="col-md-4 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-certificate"></i></span>
                                            <select name="codigo_time2" class="form-control selectpicker" >
                                              <option value=" " >Selecionar Visitante</option>
                                               <%
                                                  try{
                                                      
                                                   st = conn.createStatement();
                        rs = st.executeQuery("SELECT nome_time, id_time FROM timer");
       
                        for (int i= 0; rs.next(); i++){
                    nome_time2[i] = rs.getString("nome_time");
                                    codigo_time2[i] = Integer.parseInt(rs.getString("id_time"));
                }
     
            }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            out.println("<br>" + ex.getMessage());
            
            }
                                                  for (int i=0;nome_time2[i]!=null;i++){
                                              out.print("<option value="+codigo_time2[i]+">"+nome_time2[i]+"</option>");
                                                                                            
                                                      }
                                                  
                                              
                                              %>
                                            </select>
                                          </div>
                                        </div>
                                        </div>
                                      
                                         <div class="form-group">
                                        <label class="col-md-4 control-label">Data</label>  
                                          <div class="col-md-4 inputGroupContainer">
                                          <div class="input-group">
                                              <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                              <input name="data"   class="form-control" type="date" >
                                          </div>
                                        </div>
                                      </div>

                                        <div class="form-group"> 
                                          <label class="col-md-4 control-label">Estádio</label>
                                            <div class="col-md-4 selectContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-play"></i></span>
                                            <select name="codigo_estadio" class="form-control selectpicker" >
                                              <option value="" >Selecionar Estádio</option>
                                                <%
                                                  try{
                                                      
                                                   st = conn.createStatement();
                        rs = st.executeQuery("SELECT nome_est, id_estadio FROM estadio");
       
                        for (int i= 0; rs.next(); i++){
                    nome_estadio[i] = rs.getString("nome_est");
                                    codigo_estadio[i] = Integer.parseInt(rs.getString("id_estadio"));
                }
     
            }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            out.println("<br>" + ex.getMessage());
            
            }finally {
                if (rs != null) rs.close();
                if (st != null ) st.close();
                if (conn != null) conn.close();
            }
                                                  for (int i=0;nome_estadio[i]!=null;i++){
                                              out.print("<option value='"+codigo_estadio[i]+"'>"+nome_estadio[i]+"</option>");
                                                                                            
                                                      }
                                                  
                                              
                                              %>
                                            </select>
                                          </div>
                                        </div>
                                        </div>

                                      <!-- Text input-->

                                      <!-- Text input-->
                                             <div class="form-group">
                                        <label class="col-md-4 control-label">Valor do Ingresso</label>  
                                          <div class="col-md-4 inputGroupContainer">
                                          <div class="input-group">
                                              <span class="input-group-addon"><i class="glyphicon glyphicon-bitcoin"></i></span>
                                        <input name="valor_ingresso" placeholder="$" class="form-control"  type="text">
                                          </div>
                                        </div>
                                      </div>
                                         

                                

                                      <!-- Success message -->
                                      <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

                                      <!-- Button -->
                                      <div class="form-group">
                                        <label class="col-md-4 control-label"></label>
                                        <div class="col-md-4">
                                          <button type="submit" class="btn btn-warning" >Confirmar<span class="glyphicon glyphicon-send"></span></button>
                                        </div>
                                      </div>

                                      </fieldset>
                                      </form>
                                      </div>
			</main>
    </body>
</html>
