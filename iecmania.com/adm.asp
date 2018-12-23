<%@ language="vbscript" %>
  
  <html>
<head>
<title>administrator...</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="keywords" content="Keywords here">
<meta name="description" content="Description here">

<meta name="distribution" content="global"> 
<meta name="rating" content="general">
<meta name="content-language" content="english">

<link href="http://localhost/style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="black" text=white style="margin:0;">
<table width=775 border=0 align="center" cellpadding=0 cellspacing=0>
	<tr>
		<td height="17" background="http://localhost/images/topbg.gif">&nbsp;	
		</td>
	</tr>

      <tr>
       <marquee>
        
       
       
        
       
       </marquee>
        
       
       
        
       
        <img src="http://localhost/images/ieclogo.jpg" height"50" width="50">
          &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;

          &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
 &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
<img src="http://localhost/images/ieclogo.jpg" height"50" width="50">        

 &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;

          &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
 &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
         &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp;
<img src="http://localhost/images/ieclogo.jpg" height"50" width="50">        
      </tr>
         
</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
<center>
<font size="8" color="red">RESTRICTED AREA</FONT>
 
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
 <%
  Dim str
 str=Request.form("password")
 


 
 If (str= "pulz softwares ltd" ) Then
  bol=True
 End If
 If (bol=True)  Then
  Response.Write  "<A HREF ='iecadm.html' >"
  Response.Write "....click... "
 Response.Write "</A>"
Else
 Response.Write "unauthorized access"
End If
%>
</body>
</html>

  
