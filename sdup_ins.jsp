<title>your page is loding ...</title>
<%@page import="java.sql.*"%>
<%@page import="log.loginDB"%>
<jsp:useBean id="s" class="log.loginDB"/>
<jsp:getProperty name="s" property="conn"/>
<%@page import="java.sql.*"%>
<%@page import="log.loginDB"%>
<jsp:useBean id="s1" class="log.loginDB"/>
<jsp:getProperty name="s1" property="conn"/>
<%
    
            String a=request.getParameter("ps");
            String b=request.getParameter("eid");
            String c=request.getParameter("mob");
        

            ResultSet rs=s.stm.executeQuery("select * from log where email='"+b+"'");
            if(!rs.next())
            {
                    ResultSet rs1=s1.stm.executeQuery("select * from log where mobile='"+c+"'");
                    if(!rs1.next())
                    {
                            int z1=s1.stm.executeUpdate("insert into log values(null,'"+a+"','"+b+"','"+c+"')");
                            out.println("<script> alert('You have Registred Successfully'); document.location='../iranna/login.jsp';</script>");
                    }
                    else
                    {
                        out.println("<script>alert('Mobile No. Already Used..!');history.back();</script>");
                    }
            }
            else
            {
                out.println("<script>alert('Email Already Used..!');history.back();</script>");
            }
    
    
%>