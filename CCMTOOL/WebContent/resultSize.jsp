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
	
	<h1>Code Complexity due to Size</h1>
	<table id = "tab-01"class="content-table">
	<tr>
	<thead>
		<th>Line No</th>
		<th>Program Statements</th>
		<th>Nkw</th>
		<th>Nid</th>
		<th>Nop</th>
		<th>Nnv</th>
		<th>Nsl</th>
		<th>Cs</th>
	</tr>
	</thead>
	<tbody>
    
    <%
		Size test = new Size();
		ArrayList<Sizes> arrayList = test.size(session.getAttribute("test_code").toString());
		
		for (Sizes sizes : arrayList) {
			
			int Nkw = sizes.getKeyword()*Integer.parseInt(session.getAttribute("sizeKeyword").toString());
			int Nid = sizes.getIdentifier()*Integer.parseInt(session.getAttribute("sizeIdentifier").toString());
			int Nop = sizes.getOperator()*Integer.parseInt(session.getAttribute("sizeOperator").toString());
			int Nnv = sizes.getNumerical()*Integer.parseInt(session.getAttribute("sizeNumerical").toString());
			int Nsl = sizes.getStringCount()*Integer.parseInt(session.getAttribute("sizeString").toString());
			int total =Nkw+Nid+Nop+Nnv+Nsl;
	%>
			<tr>
				<td scope="row"><%=sizes.getLineNumber() %></td>
				<td><%=sizes.getLine() %></td>
				<td><%=sizes.getKeyword() %></td>
				<td><%=sizes.getIdentifier() %></td>
				<td><%=sizes.getOperator() %></td>
				<td><%=sizes.getNumerical() %></td>
				<td><%=sizes.getStringCount() %></td>
				<td><%=total %></td>
			</tr>
			<% 
		}	
	%>
	</tbody>
	</table>
	
</body>
</html>