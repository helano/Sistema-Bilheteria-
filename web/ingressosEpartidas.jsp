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
                            <tr> <th> Mandante </th> <th> Visitante </th> <th> Competição </th><th>Estádio </th> <th>Data</th>  <th>Preço </th> <th> Opções  </th>  </tr>
                <%
                    String codigo_torcedor= request.getParameter("codigo");
                    String[]   time1= new String[100];
                    int[]     id_time1 = new int[100];
                    String[]   time2 = new String[100];
                    int[] id_time2 = new int[100];
                    String []  competicao = new String[100];
                    String []  estadio = new String[100] ;
                     String [] data = new String[100] ;
                     int[] codigo = new int[100];
                     double []  preco = new double[100] ;
                     
                    
                    
                     
                    Connection conn = null;
                    Statement st= null;
                    ResultSet rs = null;
                      Statement st2= null;
                    ResultSet rs2 = null;
                    try{
                        Class.forName("org.postgresql.Driver").newInstance();
                        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + "postgres" , "postgres", "postgres");
                        st = conn.createStatement();
                        rs = st.executeQuery("SELECT (select nome_comp from competicao  where partida.id_competicao = competicao.id_competicao) as competicao,(select nome_time from timer  where partida.id_time = timer.id_time) as timer,(select nome_time from timer  where partida.id_time2 = timer.id_time) as timer, (select nome_est from estadio where partida.id_estadio = estadio.id_estadio) as estadio,partida.data, partida.preco, partida.id_partida FROM partida;");
                        
                       for (int i=0;rs.next();i++){
                       competicao[i] = rs.getString(1);
                       time1[i] = rs.getString(2);
                       time2[i] = rs.getString(3);
                       estadio[i]=rs.getString("estadio");
                       data[i]=rs.getString(5);
                       preco[i]=rs.getDouble("preco");
                       codigo[i]=rs.getInt("id_partida");
                
                                %>
                            
                            
                               <tr class="<%=time1[i]%>"> <td> <%=time1[i]%> </td> <td > <%=time2[i] %> </td> <td > <%=competicao[i] %> </td> <td > <%=estadio[i] %> </td> <td > <%=data[i] %> </td>  <td > <%=preco[i] %> </td><td > <a href="comprar.jsp?codigo=<%=codigo[i]%>&codigo_torcedor=<%=codigo_torcedor%>" class="btn btn-danger" >comprar ingresso</a> </td> </tr>
                              
                               
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

                                        </table>

            </div>  
    </main>
    </body>
</html>
