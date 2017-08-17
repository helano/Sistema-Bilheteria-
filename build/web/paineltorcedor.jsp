<%-- 
    Document   : paineltorcedor
    Created on : 13/01/2017, 12:08:46
    Author     : Mr Robot
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page, </title>
        
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        
        <link rel="stylesheet" href="estilo.css">
        
        
    </head>
    <body>
        <div class="menu navbar-fixed-top">
        <ul class="nav nav-pills">
            <li> <img alt="brand" src="img/logo.png" ></li>
          <li role="presentation"><a href="login.jsp">Entrar</a></li>
        <li role="presentation"><a href="formtorcedor.jsp">Cadastro</a></li>
          <li role="presentation"><a href="ingressosEpartidas.jsp">Ingressos & Partidas</a></li>
          
          <li role="presentation"><a href="login.jsp">Ambiente do Torcedor</a></li>
           <li role="presentation"><a href="loginadmin.jsp">Ambiente do Administrador</a></li>
           <li role="presentation"><a href="#">Sobre</a></li>
        </ul>
      </div>
        <main class="principal-torcedor">
    <%
            
                   String email = request.getParameter("email");
                   String senha = request.getParameter("senha");
                  String codigo =request.getParameter("codigo");
                  String nome=request.getParameter("nome");
                    
                   session.getAttribute( "theName" );
                   
                %>
               
                
    

                <h1>Bem vindo, <%=nome%> </h1>
            <table>
                
                <th> Meus Ingressos</th> <th>Meus dados</th> <th> Comprar Ingressos</th>
                <tr>
                    <td><article class="meus-ingressos"> 
                                           
                                            <a href="partidastorcedor.jsp?codigo=<%=codigo%>" ></a>
							
                    </td>
                    <td><article class="user-icon"> 
                           
                                                

							<a href="editarTorcedor.jsp?codigo=<%=codigo%>&nome=<%=nome%>"> </a>
                                                        

					</article></td>
                                        <td>
                                             <article class="meus-ingressos"> 

							<a href="ingressosEpartidas.jsp?codigo=<%=codigo%>"> </a>

					</article>
                                        </td>
                                            
					
                                       
                </tr>
					

					

					
					
</table>



			</main>
    </body>
</html>

    
                
            
                
                
                
            
            
        
           
    
    