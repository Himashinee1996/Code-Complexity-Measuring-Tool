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
	<h1>Code Complexity due to Inheritance</h1>
	<table id="tab-01"  class="content-table">
	<tr>
	<thead>
		<th>Count</th>
		<th>Class Name</th>
		<th>No of direct inheritances</th>
		<th>No of indirect inheritances</th>
		<th>Total inheritances</th>
		<th>Ci</th>
	</tr>
	</thead>
	<tbody>
		<%
				Inheritan test4 = new Inheritan();
		ArrayList<Inheritance> arrayList4 = test4.inheritance(session.getAttribute("test_code").toString());
		
		for (Inheritance inheritance : arrayList4) {
			int total = inheritance.getDirect()+inheritance.getIndirect();
			
			int Ci=total;
			if(Ci==0){
				Ci=Integer.parseInt(session.getAttribute("Inheritance").toString());
			}else if(Ci==1){
                Ci=Integer.parseInt(session.getAttribute("Inheritance1").toString());
            }else if(Ci==2){
                Ci=Integer.parseInt(session.getAttribute("Inheritance2").toString());
            }else if(Ci==3){
                Ci=Integer.parseInt(session.getAttribute("Inheritance3").toString());
            }else if(Ci>4){
                Ci=Integer.parseInt(session.getAttribute("Inheritance4").toString());
            }
	%>
			<tr>
				<td><%=inheritance.getLineNumber() %></td>
				<td><%=inheritance.getClassName() %></td>
				<td><%=inheritance.getDirect() %></td>
				<td><%=inheritance.getIndirect() %></td>
				<td><%=total %></td>
				<td><%=Ci %></td>
			</tr>
			<% 
		}	
	%>
	</tbody>
	</table>
	</center>
</body>
</html>