<%@ page import="java.sql.*" %>
<%!Statement st=null;
Connection cn=null;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
st=cn.createStatement();
%>