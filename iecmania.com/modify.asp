<%@ lANGUAGE="vbScript" %>
<html>
<head>
<title>
modify...
</title>
</head>

 
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

<%
 Dim objConn
 Set objConn =Server.CreateObject("ADODB.Connection")
 objConn.ConnectionString ="DSN=iecmania.dsn"
 objConn.Open
 %>
<%
 Dim objRS ,bolfound,str,pass
  str=Request.Form("userid")
 pass=Request.Form("password")
Set objRS = Server.CreateObject("ADODB.Recordset")
objRS.Open "usertable",objConn,,3 ,adCmdTable


Do While Not objRS.EOF 
If (StrComp(str, objRS("userid") ) = 0)Then 
         Response.Write "<font size=4color=white> authorized login</font> "
 If (StrComp(objRS("password"), pass ) = 0)Then
          Response.Write " <font size=3 color=white>    VALID Entry</font>" 
         objRS("email")=Request.Form("email")
          objRS("contactno")=Request.Form("contactno") 
         objRS("company")=Request.Form("company")
          objRS.Update
                      Response.Write "<font size=4 color=white> changes made</font>"

     Else
       Response.Write "<font size=4 color =orange>invalid password</font>"
     End If
  Else
      Response.Write "<font size=4 color=orange> unauthorized acess</font>"
     End If
  objRS.Movenext
  Loop 
 %>
<%
objRS.Close
Set objRS= Nothing
objConn.Close
Set objRS =Nothing
 
%>
 
</body>
</html>



