<%@ LANGUAGE="VbScript"%>
<% Response.buffer = true %>

<html>
<head>
<title>notice</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="keywords" content="Keywords here">
<meta name="description" content="Description here">

<meta name="distribution" content="global"> 
<meta name="rating" content="general">
<meta name="content-language" content="english">

<link href="style.css" rel="stylesheet" type="text/css">
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
 <center>  
  <font size=7 color="ORANGE">
  <i>
  LATEST NEWS OF IEC COLLEGE OF ENGG & TECHNOLOGY
</I>
</FONT>
</center> 
<%
 Dim objOpenFile,objFSO,strPath
strPath=Server.MapPath("iec.txt")
Set objFSO=Server.CreateObject("Scripting.FileSystemObject")
Set objFile=_
                 objFSO.GetFile(strPath)
  
Set objOpenFile= objFile.OpenAsTextStream(1)
Response.Write "<PRE>"
 Response.Write"<FONT COLOR=aqua size=3>"
Response.Write "update of news done on"
Response.Write "<br>"
Response.Write objFile.DateLastModified
Response.Write "<br>"
Response.Write "&nbsp;"
Response.Write "&nbsp;"
Response.Write "</font>"

Do While Not objOpenFile.AtEndOfStream
Dim strText
  strText=objOpenFile.ReadAll
  Response.Write"<FONT COLOR=WHITE size=4>"
  Response.Write "<br>"
Response.Write "<br>"
  Response.Write "<br>"
 Response.Write (strText)
  Response.write" </font >"

Loop
objOpenFile.Close
Set objOpenFile =Nothing
Set objFSO= Nothing

%>
</body>
</html>











