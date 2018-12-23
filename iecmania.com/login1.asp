<%@ language="VbScript"%>

<html>
 <head>
 <title>login1..</title>
 
</head>
<body bgcolor="black" text="orange">



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
<img src="images/ieclogo.jpg" height"50" width="50">   </marqee>     
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

</body>
</html>
 
<%
 Dim objConn
 Set objConn=Server.CreateObject("ADODB.Connection")
 objConn.ConnectionString = "DSN=iecmania.dsn"
 objConn.open
 %>
<%
 Dim objRS ,strusername, bolfound
 strusername= Request.Form ("userid")
 Set objRS = Server.CreateObject("ADODB.Recordset")
 objRS.Open "usertable",objConn, ,3 ,adCmdTable
 


   bolfound=false
 Do While Not (objRS.EOF OR bolfound)
 If (StrComp(objRS("userid"),strusername )=0 )Then
    Request.Form " authorized login"
  If (StrComp(objRS("password"), Request.Form("password") ,vbBinaryCompare )=0 ) Then

  bolfound=True
 Response.Write "<font size=4> hi alumini you are there to update.....</font>"
 Response.Write " <A HREF='update.html' >"
Response.Write "<font size=5 color=white> click</font>"
 Response.Write "</A>"
Else
  bolfound =False
 End If
Else
  ObjRS.Movenext
End If
Loop


 If Not bolfound  Then
    Response.Write " invalid login or password ..unathorized access" 
 End If

%>
  <%
  objRS.Close
 Set objRS =Nothing
objConn.Close
Set objConn= Nothing
%> 













