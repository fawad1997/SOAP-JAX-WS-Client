<%@ page import="ws.DemoImplementationService" %>
<%@ page import="ws.Demo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Client</title>
  </head>
  <body>
  <%
    try {
      DemoImplementationService demoImplementationService = new DemoImplementationService();

      Demo demo =  demoImplementationService.getDemoImplementationPort();
      out.println(demo.helloWorld());
      out.println(demo.hi("Fawad"));
    }catch (Exception e){
      e.printStackTrace();
    }
  %>
  </body>
</html>
