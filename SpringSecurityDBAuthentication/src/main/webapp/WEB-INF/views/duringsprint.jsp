<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%
String names="";
String duringspr=request.getParameter("during");
String nam[]=request.getParameterValues("duringsprint");
String sprint=request.getParameter("sprint");
for(int during=0;during<nam.length;during++){
    names+=nam[during]+",";
    
    
}

        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/checklist", "root", "root");
        Statement st=con.createStatement();
       
        int k=st.executeUpdate("insert into checkpoints(CheckPoint_Description,Checkpoint_Group) values('"+names+"','"+duringspr+"')");
        int j=st.executeUpdate("insert into sprint(Sprint_Name) values('"+sprint+"')");
        
        
        /*
        ResultSet rs=st.executeQuery("select * from checkpoints where CheckPoint_ID='"+6+"'");
        
        out.println("<table border='1'><tr>");
       
        
        while(rs.next()){
            
            String stringexecute= rs.getString("CheckPoint_Description");
            StringTokenizer strToken = new StringTokenizer(stringexecute, ",");
            while (strToken.hasMoreTokens()) {
            	out.println("<tr>");
                out.println("<td>");
            	out.println(strToken.nextElement());
                }
         
        }
        out.println("</table>");
    */
        }
        catch(Exception e){
        System.out.println(e);
        }
        %>