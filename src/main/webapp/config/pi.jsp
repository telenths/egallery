<%@page contentType="text/html;charset=GB2312"%>


<% 
String edit = (String) request.getParameter("edit"); 
String onCheckBox = (String) request.getParameter("On"); 

application.setAttribute("Switch", "on".equals(onCheckBox) ? "1" : "0"); 

String strNum = (String) application.getAttribute("Num"); 
int Num = 0; 
if (strNum != null) 
	Num = Integer.parseInt(strNum) + 1; 
application.setAttribute("Num", String.valueOf(Num)); 
%> 


<br/>
Switch:<%=(String) application.getAttribute("Switch")%>
<br/>
TotalVisit:<%=Num%>

<% if ( edit != null ) { %>
<form action="pi.jsp">
  <input type="hidden" name="On" value=<%="on".equals(onCheckBox)?"off":"on"%> /> 
  <input type="hidden" name="edit" value="a" /> 
  <input type="submit" value=<%="on".equals(onCheckBox)?"On":"Off"%> />
</form>
<%}%>
