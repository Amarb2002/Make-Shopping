<title>Validating...</title>
<%@page import="java.sql.*"%>
<%@page import="log.loginDB"%>
<jsp:useBean id="s" class="log.loginDB"/>
<jsp:getProperty name="s" property="conn"/>
<%

    String chk=request.getParameter("valid");
    if(chk!=null)
    {
        String psw=request.getParameter("ps");
        String email=request.getParameter("eid");
        String mobil=request.getParameter("mob");
           
                ResultSet rs1=s.stm.executeQuery("select * from log where  email='"+email+"'");
                if(rs1.next())
                {
                    ResultSet rs2=s.stm.executeQuery("select * from log where  email='"+email+"' and mobile='"+mobil+"'");
                    if(rs2.next())
                    {
                        ResultSet rs=s.stm.executeQuery("select * from log where  email='"+email+"' and mobile='"+mobil+"' and name='"+psw+"'");
                        if(rs.next())
                        {
                             response.sendRedirect("./code/code/dashbord.jsp");
                        }else{
                            out.println("<script>alert('Invalid OR Wrong  Name ');document.location='login.jsp';</script>");
                        }
                    }
                    else
                    {
                        out.println("<script>alert('Invalid OR Wrong  Mobile Number');document.location='login.jsp';</script>");
                    }    
                }   
                else
                {
                    out.println("<script>alert('Invalid OR Wrong Email ID');document.location='login.jsp';</script>");
                }    
    }
    else
    {
        out.println("<script>history.back();</script>");
    }
%>