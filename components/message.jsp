<%-- 
    Document   : message
    Created on : 07-Feb-2024, 10:11:33?pm
    Author     : adity
--%>

<%

    String message=(String)session.getAttribute("message");
    
    if(message!=null)
    {
        //print
        //out.println(message);
 %>
     
 
 <div class="alert alert-success alert-dismissible fade show" role="alert">
     <span><%= message  %></span> 
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
        
        
        
        
 <%
        
        session.removeAttribute("message");
    }

%>
