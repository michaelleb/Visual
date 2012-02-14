<%-- 
    Document   : ajaxView
    Created on : Feb 14, 2012, 11:36:42 AM
    Author     : Misha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
        <script type="text/javascript" src="../jquery_171min.js"></script>
        
        <script type="text/javascript">  
            
            function getData(){
                $('body').append('no ajax');
          
                $.getJSON("http://localhost:8080/Visual/jsonServlet", function(myData) { 
                    var elementId = $.text(myData.destId);

                    $(elementId).html(myData.message);
                    }); 
            };
            
      </script>
        
        
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <a href="#" onclick="getData();" > get Data </a>
    </body>
</html>
