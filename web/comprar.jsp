
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

                                        
                                     
                                     <form class="well form-horizontal" action="controle/confirmarcompra.jsp" method="get"  id="contact_form">
                                                                        
         




  
           
                        <table border = 1 class="table table-condensed" Style="margin-bottom: 50px;" >
                            <tr> <th> Mandante </th> <th> Visitante </th> <th> Competição </th><th>Estádio </th> <th>Data</th>  <th>Preço </th></tr>
               
                                    
                                    <%
                    String codigo_torcedor= request.getParameter("codigo_torcedor");
                    String codigo= request.getParameter("codigo");
                    String nome = request.getParameter("nome");
                    String   time1;
                    int  id_time1;
                    String   time2;
                    int id_time2;
                    String  competicao;
                    String  estadio ;
                     String data;
                
                     double   preco;
                     
                    
                    
                     
                    Connection conn = null;
                    Statement st= null;
                    ResultSet rs = null;
                    
                    try{
                        Class.forName("org.postgresql.Driver").newInstance();
                        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
                        st = conn.createStatement();
                        rs = st.executeQuery("SELECT (select nome_comp from competicao  where partida.id_competicao = competicao.id_competicao) as competicao,(select nome_time from timer  where partida.id_time = timer.id_time) as timer,(select nome_time from timer  where partida.id_time2 = timer.id_time) as timer, (select nome_est from estadio where partida.id_estadio = estadio.id_estadio) as estadio,partida.data, partida.preco FROM partida WHERE id_partida='"+codigo+"';");
                        
                       for (int i=0;rs.next();i++){
                       competicao= rs.getString(1);
                       time1 = rs.getString(2);
                       time2 = rs.getString(3);
                       estadio=rs.getString("estadio");
                       data=rs.getString(5);
                       preco=rs.getDouble("preco");
                
                                %>
                            
                            
                               <tr class="<%=time1%>"> <td> <%=time1%> </td> <td > <%=time2 %> </td> <td > <%=competicao %> </td> <td > <%=estadio%> </td> <td > <%=data %> </td>  <td > <%=preco%> </td> </tr>
                              
                                </table>


                                      
      
                                      <fieldset>

                                      <!-- Form Name -->
                                      <legend>Insira a senha para confirmar a compra</legend>
                                      
                                       <!-- Text input-->

                                     

                                      <!-- Text input-->

                                      
                                             <div class="form-group">
                                        
                                          <div class="col-md-4 inputGroupContainer">
                                          <div class="input-group">
                                             
                                        
                                        <input name="codigo_torcedor"  class="form-control"  type="text" style="display:none;" value="<%=codigo_torcedor%>">
                                        <input name="codigo_partida"  class="form-control"  type="text" style="display:none;" value="<%=codigo%>">
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
                                          <button type="submit" class="btn btn-primary" >confirmar </button>
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
                                }
                       
                        
                      }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            out.println("<br>" + ex.getMessage());
            
            }
              
                            finally {
                if (rs != null) rs.close();
                if (st != null ) st.close();
                if (conn != null) conn.close();
            
                  }           //out.println(rs.getString("val_produto")+" - ")              
                           %>

                                       