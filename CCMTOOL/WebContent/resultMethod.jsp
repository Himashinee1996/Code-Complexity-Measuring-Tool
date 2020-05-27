<%@page import="service.*"%>
<%@page import="model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Control Result</title>

<style>
#tab-01 {
  border-collapse: collapse;
  width: 100%;
}

#tab-01 td, #tab-01 th {
  border: 1px solid #ddd;
  padding: 8px;
}

#tab-01 tr:nth-child(even){background-color: #f2f2f2;}

#tab-01 tr:hover {background-color: #ddd;}

#tab-01 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #a3a3a3;
  color: white;
}
</style>
</head>
<body>
	<center>
	<h1>Code Complexity due to Methods</h1>
	<table id="tab-01"  class="content-table">
	<tr>
	<thead>
		<th>Line no</th>
		<th>Program statements</th>
		<th>Wmrt</th>
		<th>Npdtp</th>
		<th>Ncdtp</th>
		<th>Cm</th>
	</tr>
	</thead>
	<tbody>
	
	<%
		Method test2 = new Method();
		ArrayList<Methods> arrayList2 = test2.method(session.getAttribute("test_code").toString());
		
		for (Methods methods : arrayList2) {
			
			int Wmrt =(methods.getComposite_method()*Integer.parseInt(session.getAttribute("methodComposite").toString()))+(methods.getPrimitive_method()*Integer.parseInt(session.getAttribute("methodPrimitive").toString()));
		          
          	int Cm = Wmrt+((methods.getPrimitive_parameters()*Integer.parseInt(session.getAttribute("methodPrimitiveData").toString()))+(methods.getComposite_parameters()*Integer.parseInt(session.getAttribute("methodCompositeData").toString())));
			
			
		%>
		<tr>
			<td><%=methods.getLineNumber() %></td>
			<td><%=methods.getLine() %></td>
			<td><%=Wmrt %></td>
			<td><%=methods.getPrimitive_parameters() %></td>
			<td><%=methods.getComposite_parameters() %></td>
			<td><%=Cm %></td>
		</tr>
		<% 
		}	
		%>
	
	</tbody>
	</table>
	</center>
</body>
</html>