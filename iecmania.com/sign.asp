<%@ language="vbscript"%>
<html>
<head>
<title>register...
</title>
</head>

<body style="margin:0" BGCOLOR="black" TEXT="WHITE">
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
<img src="images/ieclogo.jpg" height"50" width="50">  </marquee>      
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
  Set objConn = Server.CreateObject("ADODB.Connection")
  objConn.ConnectionString="DSN=iecmania.dsn"
  objConn.Open
  %>



 


 <% 
    Dim objRS
  Set objRS=Server.Createobject("ADODB.Recordset")
  objRS.Open "usertable", objConn,,3,2
  
  Do While NOT objRS.EOF 
    If( StrComp(objRS("userid") , Request.Form("userid") )= 0 )Then
      bolAlreadyexists = TRUE
      Response.Write "userid already exists , go back and register again"
    End If
  
     objRS.Movenext
Loop
%>
 <%
 If Not bolAlreadyexists Then
 objRS.Addnew
 objRs("userid")=Request.Form("userid")
 objRS("password")=Request.Form("password")
 objRS("firstname")=Request.Form("firstname")
objRS("lastname")=Request.Form("lastname")
objRS("batch")=Request.Form("batch")
objRS("branch")=Request.Form("branch")
objRS("email")=Request.Form("email")
objRS("contactno")=Request.Form("contactno")
objRS("company")=Request.Form("company")
objRS.Update
Response.Write"<font color=orange size=4>thank u for registering</font>"
End If
%>
<%
objRS.Close
Set objRS=Nothing
objConn.Close
Set objConn=Nothing
  %>
  <a href="alumini.html"><font color=white size=4> back</font></a>
  
</body>
</html>










































































