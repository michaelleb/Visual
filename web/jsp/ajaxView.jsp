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
        
        <script type="text/javascript" >  

           
            

            var targetElement;

            function getData(){

                $.getJSON("http://localhost:8080/Visual/jsonServlet", presentData); 
            
            }
            
            function loadData(){
                $.get('http://localhost:8080/Visual/jsp/datajsp.jsp',function(data){
                    
                    $('#pid').append(data);
                    
                });
            }
            
            function presentData(data){
                
                targetElement = data.targetElement;
                $(targetElement).append(data.message);
            }
            
            //testing object referrence:
            function classA(){
                this.setNum = function(num){
                    this.num = num;
                };
                    
            };
            
            function classB (){
                this.ptr = null;
                this.setA = function(a){
                    this.ptr = a;
                }
                this.getA = function(){
                    return this.ptr;
                }
                
            };
            
            var a1 = new classA();
            a1.setNum(5);
            
            var b1 = new classB();
            var b2 = new classB();
            
            b1.ptr = b2.ptr = a1;
            
            b1.getA().num = 8;
            
            document.write("b1 = " + b1.getA().num + " b2 = "+ b2.getA().num);

        </script>
        
        
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <a href="#" onclick="getData();" > get Data </a>
        
        <p id="pid" onclick="loadData();">
            load data
        </p>
    </body>
</html>
