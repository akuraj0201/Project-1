
<%@ page import ="java.sql.*" %>
<%	
	int i=0;
		
		String email=request.getParameter("EMAIL");
		String un=request.getParameter("UN");
		String pwd=request.getParameter("PWD");
		
		Connection con=null;
	CallableStatement cst=null;
	Statement st=null;
ResultSet rs=null;
		try
		{
			
	Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection
	("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
st=con.createStatement();
rs=st.executeQuery("select un from tdb");
  while(rs.next())
			{
	  if(un.equals(rs.getString(1)))
			{response.sendRedirect("register2.html");
	  }
			}

/*cst=con.prepareCall("{call tins(?,?,?,?,?)}");
		
			cst.setString(1,un);
			cst.setString(2,pw);
			cst.setString(3,email);

			
		    cst.execute();*/

			int r=st.executeUpdate("insert into tdb values('"+un+"','"+pwd+"','"+email+"')");
		response.sendRedirect("login.html");
		}
		catch (Exception e)
		{
			
			out.print("<h2>"+e+"</h2>");
		}
	
%>
