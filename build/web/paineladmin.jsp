<%-- 
    Document   : paineladmin
    Created on : 13/01/2017, 12:09:55
    Author     : Mr Robot
--%>

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
               <%     
                   String email = request.getParameter("email");
                   String senha = request.getParameter("senha");
                  String codigo =request.getParameter("codigo");
                  String nome=request.getParameter("nome");
                
                    if ( (codigo==null) && (senha ==null)){
                         response.sendRedirect("http://localhost:8084/BilheteriaEstadio/loginadmin.jsp");
                    
                    }
                    
                    

           
                %>
               
        
        
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
        <main class="principal-torcedor">
            <h1>Bem-vindo, <%=nome%></h1>
            <table>
                <th> Inserir Partida</th> <th>Inserir Estádio</th> <th> Torcedores</th> 
                <tr>
                    <td><article class="form-partidas"> 
                                           
                                            <a href="formpartidas.jsp" ></a>
							
                    </td>
                   
                                       
                                         
                                          <td>
                                              <article class="form-estadio"> 
                                           
                                            <a href="inserirestadio.jsp"></a>
                                              </article>
                                              
							
                    </td>
                                             <td>
                                             <article class="ver-torcedores"> 

							<a href="listaTorcedores.jsp"> </a>

					</article>
                                        </td>
                                            
					
                              
                                        
                </tr>
                
					

					

					
					
</table>
            
            
            
                 <table>
                <th>Inserir Time</th> <th> Listar Times</th> <th> Listar Estadios</th>
                <tr>
                  
                    <td><article class="ver-partidas"> 
                                            

							<a href="inserirtime.jsp"> </a>

					</article>
                    </td>
                    <td><article class="ver-partidas"> 
                                            

							<a href="listatimes.jsp"> </a>

					</article>
                    </td>
                    <td><article class="ver-partidas"> 
                                            

							<a href="listaestadio.jsp"> </a>

					</article>
                    </td>
                                     
					
                              
                                        
                </tr>
                
					

					

					
					
</table>



			</main>
    </body>
</html>
