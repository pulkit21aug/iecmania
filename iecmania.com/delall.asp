<%@ language="vbscript"%>


<%
  Dim objConn
  Set objConn = Server.CreateObject("ADODB.Connection")
  objConn.ConnectionString="DSN=iecmania.dsn"
  objConn.Open
 %>
<%
 Dim objRS,bolfound
 Set objRS=server.CreateObject("ADODB.Recordset")
 objRS.Open "usertable",objConn, , 3,adCmdTable
 %> 

<%
Do While Not objRS.EOF
    
    objRS.Delete
   objRS.Update    
 bolfound=TRUE
   objRS.Movenext
Loop


If bolfound Then
Response.Write "RECORDS DELETED"
End If
objRS.Close
Set objRS= Nothing
objConn.Close
Set objConn= Nothing

%>
















