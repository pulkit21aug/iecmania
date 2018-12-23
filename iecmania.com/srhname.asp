<%@ language="vbscript" %>
<html>
<body>
<body style="margin:0" BGCOLOR="black">
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
<TR> 
     <TD> 

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

<a href="alumini.html"><font size=4 color = orange> back</a>

<%
  Dim objConn
 Set objConn= Server.CreateObject("ADODB.Connection")
 objConn.ConnectionString ="DSN=iecmania.dsn"
 objCOnn.Open
%>
<% 
Dim objRS
Set objRS = Server.CreateObject("ADODB.Recordset")
objRS.Open "usertable", objConn, ,3 ,2
%>
<%
  Dim strusername ,bol 
 strusername= Request.Form("firstname")
Do Until objRS.EOF OR bolfound
  IF(StrComp(objRS("firstname"), strusername) =0) THEN

%> 
 
<table border=1>
 <tr>
 <td><b>NAME</B></td>
  <td><b>BATCH</B></TD>
  <td>BRANCH</b></td>
<TD><B>EMAIL</B></TD>
  <TD>|<B>COMPANY</b></td>
  <td><b>contactno</b></td>

</tr>

 <tr>
  <td><%=objRS("firstname") %>&nbsp;<%=objRS("lastname") %></td>
  <td><%=objRS("batch") %></td>
  <td><%=objRS("branch")%></td> 
 <td><%=objRS("email") %></td>
  <td><%=objRS("company") %></TD>
  <td><%=objRS("contactno") %></td>
</tr>   
<%
 bol = TRUE 
 End If 
  objRS.Movenext
   
 Loop
%>

<%
  If Not bol Then
  
  objRS.Close
  Set objRS = Nothing
  objConn.Close
  Set objConn = Nothing
   
  Response.Write "<font color = white size= 4 > sorry no match found</font>"
  
  Response.End
  End If
 %> 

 <%
 objRS.Close
  Set objRS= Nothing
  objConn.Close
  Set objConn= Nothing
%>
</body>
</html>












































































