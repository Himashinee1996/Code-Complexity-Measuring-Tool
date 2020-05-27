<%@page import="service.*"%>
<%@page import="model.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Control Result</title>
  <!--Load the AJAX API-->
    
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
	
	<h1>Code Complexity due to All</h1>
	 <div id="chart_div"></div>
	
	<table  id="tab-01"  class="content-table">
	<tr>
	<thead>
		<th>Line no</th>
		<th>Program statements</th>
		<th>Cs</th>
		<th>Cv</th>
		<th>Cm</th>
		<th>Ci</th>
		<th>Ccp</th>
		<th>Ccs</th>
		<th>TCps</th>
	</tr>
	</thead>
	<tbody>
		<%
			Size test = new Size();
			ArrayList<Sizes> arrayList = test.size(session.getAttribute("test_code").toString());
			
			Variable test1 = new Variable();
			ArrayList<Variables> arrayList1 = test1.variable(session.getAttribute("test_code").toString());
			
			Method test2 = new Method();
			ArrayList<Methods> arrayList2 = test2.method(session.getAttribute("test_code").toString());
			
			Coupling test5 = new Coupling();
			ArrayList<Couplings> arrayList5 = test5.coupling(session.getAttribute("test_code").toString());
			
			Control test3 = new Control();
					int condition= 2;
					int loop = 3;
					int switchCase= 2;
					int caseOnly=1;
			ArrayList<Controls> arrayList3 = test3.control(session.getAttribute("test_code").toString(),condition,loop,switchCase,caseOnly);
			
			int totalCs=0;
			int totalCv=0;
			int totalCm=0;
			int totalCcs=0;
			int totalCi=0;
			int totalCcp=0;
			
			Inheritan test4 = new Inheritan();
			ArrayList<Inheritance> arrayList4 = test4.inheritance(session.getAttribute("test_code").toString());
			
			for (int i = 0; i <arrayList4.size();i++) {
				int Ci=arrayList4.get(i).getDirect()+arrayList4.get(i).getIndirect();;
				if(Ci==0){
					Ci=0;
				}else if(Ci==1){
	                Ci=1;
	            }else if(Ci==2){
	                Ci=2;
	            }else if(Ci==3){
	                Ci=3;
	            }else if(Ci>4){
	                Ci=4;
	            }
				totalCi=totalCi+Ci;
			}
			
			for (int i = 0; i <arrayList.size();i++) {
				
				int Cs =arrayList.get(i).getKeyword()+arrayList.get(i).getIdentifier()+arrayList.get(i).getOperator()+arrayList.get(i).getNumerical()+arrayList.get(i).getStringCount();
				totalCs=totalCs+Cs;
				
				int Wvs =(arrayList1.get(i).getGlobal()*2)+arrayList1.get(i).getLocal();
	            
	            int Npdtv = arrayList1.get(i).getGlobal()+arrayList1.get(i).getLocal();
	            
	            int Cv = Wvs*(Npdtv+arrayList1.get(i).getComposite()*2);
				
	            totalCv=totalCv+Cv;
				
				int Wmrt =(arrayList2.get(i).getComposite_method()*2)+arrayList2.get(i).getPrimitive_method();
	            
	            int Cm = Wmrt+(arrayList2.get(i).getPrimitive_parameters()+(arrayList2.get(i).getComposite_parameters()*2));
				
	            totalCm=totalCm+Cm;
	            
	            int Ccs = (arrayList3.get(i).getLine_weight()*arrayList3.get(i).getNo_of_control())+arrayList3.get(i).getCspps();
				
	            totalCcs=totalCcs+Ccs;
	            
				int Nr=arrayList5.get(i).getRecursive()*2;
				
				int Nmcms=arrayList5.get(i).getRegular_regular()*2;
				
				int Nmcrms=arrayList5.get(i).getRegular_recursive()*3;
				
				int Nrmcrms=arrayList5.get(i).getRecursive_recursive()*4;
				
				int Nrmcms=arrayList5.get(i).getRecursive_regular()*3;
				
				int Ccp =Nr+Nmcms+Nmcrms+Nrmcrms+Nrmcms+arrayList5.get(i).getRegular_global()+arrayList5.get(i).getRegular_regular();
	            
				totalCcp=totalCcp+Ccp;
				
				int rowTotal=Cs+Cv+Cm+Ccp+Ccs;
				
		%>
				<tr>
					<td><%=arrayList.get(i).getLineNumber() %></td>
					<td><%=arrayList.get(i).getLine() %></td>
					<td><%=Cs %></td>
					<td><%=Cv %></td>
					<td><%=Cm %></td>
					<td>0</td>
					<td><%=Ccp %></td>
					<td><%=Ccs %></td>
					<td><%=rowTotal %></td>
				</tr>
				<% 
			}	
			int total=totalCs+totalCv+totalCm+totalCi+totalCcp+totalCcs;
		%>
		<tr>
					<td></td>
					<td>Total</td>
					<td><%=totalCs %></td>
					<td><%=totalCv %></td>
					<td><%=totalCm %></td>
					<td><%=totalCi %></td>
					<td><%=totalCcp %></td>
					<td><%=totalCcs %></td>
					<td><%=total %></td>
				</tr>
	</tbody>
	</table>
   <div id="top_x_div" style="width: 700px; height: 500px;"></div>
</body>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['totalCs : <%=totalCs %> ', <%=totalCs %>],
          ['totalCv :<%=totalCv %>', <%=totalCv %>],
          ['totalCm : <%=totalCm %>', <%=totalCm %>],
          ['totalCi : <%=totalCi %>', <%=totalCi %>],
          ['totalCcp :  <%=totalCcp %> ', <%=totalCcp %>],
          ['totalCcs : <%=totalCcs %>', <%=totalCcs %>]
        ]);

        // Set chart options
        var options = {'title':'code complexity percentage',
                       'width':800,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    
     <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
          ['Move', 'Percentage'],
          ['totalCs ', <%=totalCs %>],
          ['totalCv', <%=totalCv %>],
          ['totalCm', <%=totalCm %>],
          ['totalCi', <%=totalCi %>],
          ['totalCcp', <%=totalCcp %>],
          ['totalCcs', <%=totalCcs %>]
        ]);

        var options = {
          width: 800,
          legend: { position: 'none' },
          chart: {
            title: 'Bar chart',
            subtitle: '' },
          axes: {
            x: {
              0: { side: 'top', label: 'White to move'} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        // Convert the Classic options to Material options.
        chart.draw(data, google.charts.Bar.convertOptions(options));
      };
    </script>
</html>