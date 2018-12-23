<%@ language="vbscript"%>
<html>
<head>
<title>search..all</title>
</head>
<body style="margin:0" BGCOLOR="black" text="white">
    <table WIDTH="100%" border=0 align="center" cellpadding=0 cellspacing=0>
	<tr>
		<td height="17" background="images/topbg.gif">&nbsp;	
		</td>
	</tr>

      <tr><marquee>
       
 
        <img src="images/ieclogo.jpg" height"50" width="50">
          &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;

          &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
 &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
<img src="images/ieclogo.jpg" height"50" width="50">        

 &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;

          &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
 &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
<img src="images/ieclogo.jpg" height"50" width="50">        
</marquee>
</TR>        

</table>
<table width=775 height="10%"  border=0 align="center" cellpadding=0 cellspacing=0>
	
	<tr>
		<td height="78" background="images/navbg.gif">

  <a href="iecmania.html"><font size="5" color="white" >home</font></a>
      
        &nbsp;&nbsp; <a href="alumini.html"><font size="5" color="white" >alumini</font></a>
       &nbsp;&nbsp;<a href="http://localhost/iecfile.asp"> <font size="5" color="white">notice</font></a>
        &nbsp;&nbsp;<a href="about.html"><font size="5" color="white">about</font></a>      
 &nbsp;&nbsp;<a href="razmataz.html"><font size="5" color="white">razmataz</font></a>      

  </td>
	</tr>
 </table>
 <%
 Dim objConn
 Set objConn=Server.CreateObject("ADODB.Connection")
 objConn.ConnectionString = "DSN=iecmania.dsn"
 objConn.open
 %>
<%
 Dim objRS
 Set objRS = Server.CreateObject("ADODB.Recordset")
 objRS.Open "usertable",objConn, ,3 ,adCmdTable
 %>
<%
  If objRS.EOF THEN
 Response.Write ("sorry no record found")
 End If
 %>
&nbsp;&nbsp;&nbsp;
<table border=1>

 <TR>
 <TD>
    <B>FIRST NAME</B></TD>
     <TD><B>EMAIL</B></TD>
   <TD><B>COMPANY</B></TD>
   <TD><B>CONTACT_NUM</B></TD>
   <TD><B>BATCH</B></TD>
   <TD><B>BRANCH</B></TD>
</TR>

 

<% DO While Not objRS.EOF %> 
 <TR>
 <TD><%=objRS("firstname") %> &nbsp;<%=objRS("lastname") %></TD>
 <TD><%=objRS("email")%></TD>
 <TD><%=objRS("company")%></TD>
 <TD><%=objRS("contactno")%></TD>
 <TD><%=objRS("batch")%></TD>
 <TD><%=objRS("branch")%></Td>
 </TR>
<%
  objRS.Movenext
 Loop
objRS.Close
Set objRS = Nothing
objConn.Close
Set objConn = Nothing
%>

</table>
<table WIDTH="100%" border=0 align="center" cellpadding=0 cellspacing=0>
	<tr>
		<td height="17" background="images/topbg.gif">&nbsp;	
		</td>
	</tr>
</table>

</BODY>
</html>




















