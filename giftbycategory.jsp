<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel ="stylesheet" type ="text/css" href="bootstrap.min.css">
        <script src="jquery-3.3.1.min"></script>
        <script type = text/javascript src="bootstrap.min.js"></script>
        
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        
        
    </head>
    <body>
         <!-- Start Nagigation -->
  <nav class="navbar navbar-expand-sm navbar-dark bg-danger pl-5 fixed-top">
    <a href="index.jsp" class="navbar-brand">Online Bakery Shop</a>
    <span class="navbar-text">Cheap And Best</span>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#myMenu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="myMenu">
      <ul class="navbar-nav pl-5 custom-nav">
        <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="login.jsp" class="nav-link">Login</a></li>
        <li class="nav-item"><a href="#Team" class="nav-link">Team</a></li>
        <li class="nav-item"><a href="#Contact" class="nav-link">Contact</a></li>
      </ul>
    </div>
  </nav> <!-- End Navigation -->
        
        
        
        <%
        if(request.getParameter("category").toString().equals("b")){
       
        
            try
    {
        Connection con;
    Statement stmt;
    String sql="select * from gift where category='breads'";
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/bakeryjava","root","");
   stmt= con.createStatement();
   ResultSet rs = stmt.executeQuery(sql);
   while(rs.next())
   {
       //name = rs.getString("image");
       //email = rs.getString("name");
       //contact = rs.getString("price");
       //contact = rs.getString("description");
       %>
        <!-- Left-aligned media object -->
  <div class="media">
    <div class="media-left">
      <img src = "mygift.jsp?id=<%=rs.getString("id")%>" class="media-object" style="width:100px ; height : 105px">
    </div>
    <div class="media-body">
      <h4 class="media-heading" style = "color : red ; font-family : 'Monotype Corsiva'"><%= rs.getString("name")%></h4>
      <p>Price : <%= rs.getString("price") %> INR</p>
      <p><%= rs.getString("description")%></p>
      <p><a href = 'logingift.jsp?giftid=<%= rs.getString("id")%>'>BOOK NOW </a></p>
      
    </div>
  </div>
  <hr>
       
    <%   
   }
   
    }
    catch(Exception e)
    {
        
    }
            
            
            
            
       
       
    }
        
         if(request.getParameter("category").toString().equals("c")){
       
        
       
              try
    {
        Connection con;
    Statement stmt;
    String sql="select * from gift where category='cake'";
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/bakeryjava","root","");
   stmt= con.createStatement();
   ResultSet rs = stmt.executeQuery(sql);
   while(rs.next())
   {
       //name = rs.getString("image");
       //email = rs.getString("name");
       //contact = rs.getString("price");
       //contact = rs.getString("description");
       %>
        <!-- Left-aligned media object -->
  <div class="media">
    <div class="media-left">
      <img src = "mygift.jsp?id=<%=rs.getString("id")%>" class="media-object" style="width:100px ; height : 105px">
    </div>
    <div class="media-body">
      <h4 class="media-heading" style = "color : red ; font-family : 'Monotype Corsiva'"><%= rs.getString("name")%></h4>
      <p>Price : <%= rs.getString("price") %> INR</p>
      <p><%= rs.getString("description")%></p>
      <p><a href = 'logingift.jsp?giftid=<%= rs.getString("id")%>'>BOOK NOW </a></p>
      
    </div>
  </div>
  <hr>
       
    <%   
   }
   
    }
    catch(Exception e)
    {
        
    }
            
            
             
             
             
        
    }
        
         if(request.getParameter("category").toString().equals("p")){
       
        
        try
    {
        Connection con;
    Statement stmt;
    String sql="select * from gift where category='pastries'";
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/bakeryjava","root","");
   stmt= con.createStatement();
   ResultSet rs = stmt.executeQuery(sql);
   while(rs.next())
   {
       //name = rs.getString("image");
       //email = rs.getString("name");
       //contact = rs.getString("price");
       //contact = rs.getString("description");
       %>
        <!-- Left-aligned media object -->
  <div class="media">
    <div class="media-left">
      <img src = "mygift.jsp?id=<%=rs.getString("id")%>" class="media-object" style="width:100px ; height : 105px">
    </div>
    <div class="media-body">
      <h4 class="media-heading" style = "color : red ; font-family : 'Monotype Corsiva'"><%= rs.getString("name")%></h4>
      <p>Price : <%= rs.getString("price") %> INR</p>
      <p><%= rs.getString("description")%></p>
      <p><a href = 'logingift.jsp?giftid=<%= rs.getString("id")%>'>BOOK NOW </a></p>
      
    </div>
  </div>
  <hr>
       
    <%   
   }
   
    }
    catch(Exception e)
    {
        
    }
            
            
        
             
             
             
             
             
    }
         
       
         
         
         
         if(request.getParameter("category").toString().equals("coo")){
       
        
        try
    {
        Connection con;
    Statement stmt;
    String sql="select * from gift where category='cookies'";
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/bakeryjava","root","");
   stmt= con.createStatement();
   ResultSet rs = stmt.executeQuery(sql);
   while(rs.next())
   {
       //name = rs.getString("image");
       //email = rs.getString("name");
       //contact = rs.getString("price");
       //contact = rs.getString("description");
       %>
        <!-- Left-aligned media object -->
  <div class="media">
    <div class="media-left">
      <img src = "mygift.jsp?id=<%=rs.getString("id")%>" class="media-object" style="width:100px ; height : 105px">
    </div>
    <div class="media-body">
      <h4 class="media-heading" style = "color : red ; font-family : 'Monotype Corsiva'"><%= rs.getString("name")%></h4>
      <p>Price : <%= rs.getString("price") %> INR</p>
      <p><%= rs.getString("description")%></p>
      <p><a href = 'logingift.jsp?giftid=<%= rs.getString("id")%>'>BOOK NOW </a></p>
      
    </div>
  </div>
  <hr>
       
    <%   
   }
   
    }
    catch(Exception e)
    {
        
    }
            
            
        
                
    }
         
         
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      %>  
        
    </body>
</html>


