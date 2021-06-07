<%-- DO NOT USE ANY OF THE BELOW CODE IN PRODUCTION. THIS IS PURELY FOR DEMONSTRATION PURPOSE AND MAY NOT BE SECURE FOR USE IN REAL-WORLD APPLICATIONS --%> 

<%@ page import="okhttp3.OkHttpClient" %>
<%@ page import="okhttp3.Request" %>

<html>
   <head>
      <title>Sample Application JSP Page</title>
   </head>
   <body bgcolor=white>
      <table border="0">
         <tr>
            <td>
               <h1>Hello AWS DevOps !</h1>
               This is the output of a JSP page that is part of a workshop application.
            </td>
         </tr>
         <tr>
            <td>
               AMI ID : <%= new OkHttpClient().newCall((new Request.Builder()).url("http://169.254.169.254/latest/meta-data/ami-id").build()).execute().body().string() %>
            </td>
         </tr>
         <tr>
            <td>
               EC2 Instance ID : <%= new OkHttpClient().newCall((new Request.Builder()).url("http://169.254.169.254/latest/meta-data/instance-id").build()).execute().body().string() %>
            </td>
         </tr>
      </table>
   </body>
</html>
