<%-- 
    Document   : listaTorcedores
    Created on : 15/01/2017, 19:31:12
    Author     : Mr Robot
--%>

<%-- 
    Document   : index
    Created on : 21/12/2016, 10:44:18
    Author     : Mr Robot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>testando banco de dados</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css"/>  
        <link rel="stylesheet" href="estilo.css">
        <script type="text/javascript" src="bootstrap\js\bootstrap.js"></script>  
        <script type="text/javascript" src="bootstrap\js\funcoes.js"></script>  
        <script type="text/javascript" src="bootstrap\js\jquery.js"></script> 

        <style>
            
            #celula {
                width: 20px;
                height: 10px;    
                    }
            table {
                border-spacing: 0;
                border-collapse: collapse;
                }
        </style>
    </head>
    <body>
        <header>
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
                  
                              
                 
        </header>
         
         

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <main class="principal-table">
        
                <div class="container">
                    <h1> Tabela de Jogos </h1>
            
           
                        <table border = 1 class="table table-condensed" Style="margin:20px;" >
                            <tr> <th> Nome </th> <th> Estado</th> <th> Pais</th> <th> Opções  </th>  </tr>
                <%
                    String[]   nome = new String[100];
                    String[]   pais = new String[100];
                    String []  estado = new String[100];
                       String []  codigo = new String[100];
                 
                 
                    
                    
                    
                     
                    Connection conn = null;
                    Statement st= null;
                    ResultSet rs = null;
                    try{
                        Class.forName("org.postgresql.Driver").newInstance();
                        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
                        st = conn.createStatement();
                        rs = st.executeQuery("SELECT  id_time, nome_time, estado, pais FROM timer;");
                        
                        for (int i= 0; rs.next(); i++){
                       // while (rs.next()){
                            
                       // out.println(rs.getString("cod_produto")+" - ");
                         codigo[i] = rs.getString("id_time");
                         nome[i] = rs.getString("nome_time");
                         //out.println(rs.getString("desc_produto")+" - ");
                           
                           estado[i] = rs.getString("estado");
                      
                          //out.println(rs.getString("qtd_produto")+" - ");
                             
                             pais[i]= rs.getString("pais");
                          
                           //out.println(rs.getString("val_produto")+" - ");
                           
                             
                              
                        
                     
                           %>

                    <tr class="<%=nome%>"> <td> <%=nome[i]%> </td> <td > <%=estado[i] %> </td> <td > <%=pais[i] %> </td>  <td > <a href="editarTorcedor.jsp?codigo=<%=codigo[i]%>" class="btn btn-primary" >Editar</a> <a href="verificaexcluirtime.jsp?codigo=<%=codigo[i]%>" class="btn btn-danger" >Excluir</a> </td> </tr>
                            
                    <% 
                }
                
                
            
            }catch ( SQLException ex){
            out.println("nao foi possivel connectar com o banco");
            out.println("<br>" + ex.getMessage());
            
            }finally {
                if (rs != null) rs.close();
                if (st != null ) st.close();
                if (conn != null) conn.close();
            
            }
        %>

                </table>
        <table  style="margin-left: 400px;"> 
            <tr> <td><a class="btn btn-primary" href="inserirtime.jsp">Inserir novo Time </a> </td> <td> <a class="btn btn-primary" href="paineladmin.jsp">Voltar Para o Painel </a></td>
            
            
        </table>
            </div>  
    </main>
    </body>
</html>
