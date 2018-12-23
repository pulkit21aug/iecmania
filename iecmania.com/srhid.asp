<%@ language="VbScript"%>

<html>
 <head>
 <title>loginsigncheck..</title>
 
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

<!--#include virtual="/adovbs.inc"-->
<%
 Dim objRS ,strusername, bolfound
 strusername= Request.Form ("rollcall")
 Set objRS = Server.CreateObject("ADODB.Recordset")
 objRS.Open "usertable2",objConn, ,3 ,adCmdTable
 


   bolfound=false
 Do While Not (objRS.EOF OR bolfound)
 If (StrComp(objRS("rollcall"), strusername  )=0 )Then
    Request.Form " authorized login"
  If (StrComp(objRS("firstname"), Request.Form("firstname")  )=0 ) Then

  bolfound=True
 Response.Write " hi alumini you are there to signup....."
 Response.Write " <A HREF='register.html' >"
Response.Write "click"
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


















