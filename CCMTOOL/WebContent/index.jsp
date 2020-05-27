<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>




<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<meta name="description" content="Name of your web site">
	<meta name="author" content="Marketify">

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<title>CCM Tool</title>

	<!-- STYLES -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/plugins.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/table.css" />
	<!--[if lt IE 9]> <script type="text/javascript" src="js/modernizr.custom.js"></script> <![endif]-->
	<!-- /STYLES -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<style>
	.purple-border textarea {
    border: 1px solid #E3872D;
}
.purple-border .form-control:focus {
    border: 1px solid #E3872D;
    box-shadow: 0 0 0 0.2rem rgba(186, 104, 200, .25);
}

.green-border-focus .form-control:focus {
    border: 1px solid #E3872D;
    box-shadow: 0 0 0 0.2rem rgba(139, 195, 74, .25);
}
</style>

<script>
$(function(){
  var str = '#len'; //increment by 1 up to 1-nelemnts
  $(document).ready(function(){
    var i, stop;
    i = 1;
    stop = 4; //num elements
    setInterval(function(){
      if (i > stop){
        return;
      }
      $('#len'+(i++)).toggleClass('bounce');
    }, 500)
  });
});
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

</head>

<body>

	<!-- WRAPPER ALL -->
	<div class="arlo_tm_wrapper_all">

		<div id="arlo_tm_popup_blog">
			<div class="container">
				<div class="inner_popup scrollable"></div>
			</div>
			<span class="close"><a href="#"></a></span>
		</div>

		<!-- PRELOADER -->
		<div class="arlo_tm_preloader">
			<div class="spinner_wrap">
				<div class="spinner"></div>
			</div>
		</div>
		<!-- /PRELOADER -->

		<!-- MOBILE MENU -->
		
		<!-- /MOBILE MENU -->

		<!-- CONTENT -->
		<div class="arlo_tm_content">

			<!-- LEFTPART -->
			<div class="arlo_tm_leftpart_wrap opened">
				<div class="leftpart_inner">
					<div class="logo_wrap">
						<a href="#"><img src="img/logo/desktop-logo.png" alt="" /></a>
					</div>
					<div class="menu_list_wrap">
						<ul class="anchor_nav">
							<li><a href="#home">Home</a></li>
							<li><a href="#about">About</a></li>
							<li><a href="#services">Services</a></li>
							<li><a href="#portfolio">Portfolio</a></li>
							<li><a href="#news">News</a></li>
							<li><a href="#contact">Contact</a></li>
						</ul>
					</div>
					<div class="leftpart_bottom">
						<div class="social_wrap">
							<ul>
								<li><a href="#"><i class="xcon-facebook"></i></a></li>
								<li><a href="#"><i class="xcon-twitter"></i></a></li>
								<li><a href="#"><i class="xcon-linkedin"></i></a></li>
								<li><a href="#"><i class="xcon-instagram"></i></a></li>
								<li><a href="#"><i class="xcon-behance"></i></a></li>
							</ul>
						</div>
					</div>
					<a class="arlo_tm_resize" href="#"><i class="xcon-angle-left"></i></a>
				</div>
			</div>
			<!-- /LEFTPART -->

			<!-- RIGHTPART -->
			<div class="arlo_tm_rightpart opened">
				<div class="rightpart_inner">
					<div class="arlo_tm_section" id="home">
						<div class="arlo_tm_hero_header_wrap">
							<div class="arlo_tm_universal_box_wrap">
								<div class="bg_wrap">
									<div class="overlay_image hero jarallax" data-speed="0.1"></div>
									<div class="overlay_color hero"></div>
								</div>
								<div class="content hero">
									<div class="inner_content">
										<div class="image_wrap">
											<img src="img/hero/img.png" alt="" />
										</div>
										<div class="name_holder">
											<h3>Code Complexity  <span>Measuring Tool</span></h3>
										</div>
										<div class="text_typing">
											<p>Measuring the <span class="arlo_tm_animation_text_word"></span> in your code</p>
										</div>
									</div>
								</div>
								<div class="arlo_tm_arrow_wrap bounce anchor">
									<a href="#about"><i class="xcon-angle-double-down"></i></a>
								</div>
							</div>
						</div>
					</div>
  <form method="POST"  target="_blank" action="testServlet" >
   
					<!-- ABOUT -->
					<div class="arlo_tm_section relative" id="about">
						<div class="arlo_tm_about_wrapper_all">
							<div class="container">
								<div class="arlo_tm_title_holder">
									<h3>Uplode Your Code</h3>
									<span>measure the complexity </span>
								</div>
								<div class="arlo_tm_about_wrap">
									<div class="author_wrap">
										<div class="leftbox">
											<div class="about_image_wrap parallax" data-relative-input="true">
												<div class="image layer" data-depth="0.1">
													<img src="img/about/550x640.jpg" alt="" />
													<div class="inner" data-img-url="img/about/1.png"></div>
												</div>
												<div class="border layer" data-depth="0.2">
													<img src="img/about/550x640.jpg" alt="" />
													<div class="inner"></div>
												</div>
											</div>

										</div>
										<div class="rightbox">
											<div class="arlo_tm_mini_title_holder">
												<h4 style="margin-right: 40%;">Uplode Your Code and Measuring  <span class="arlo_tm_animation_text_word"></span></h4><br><br>
											</div>

											<div class="buttons_wrap">

												<ul>
													<li>



										
														<div align=center  class="form-group purple-border" >
         												  <p>Upload Your Code:</p>
           								 					<textarea class="form-control" id="exampleFormControlTextarea4" rows="9" cols="80" name="code" required></textarea>
        								 				 </div>
        								 				 
        														  <hr>
															

														
													</li>
													<li class="anchor">
														<br><br><a href="#contact"><span>Select Option</span></a>
														<br><br><br><br><br><br>
													</li>
													
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /ABOUT -->



					<!-- SERVICES -->
					<div class="arlo_tm_section" id="services">
						<div class="arlo_tm_services_wrap">
							<div class="container">
								<div class="arlo_tm_title_holder">
									<h3>Code complexity</h3>
									<span>Meet our amazing services</span>
								</div>
								
							<div class="list_wrap" id="contact">
							<ul class="arlo_tm_portfolio_filter" >


										<li >
								<div  data-filter=".Size">
											
												<div class="inner">
													<div class="icon">
														<img class="svg" src="img/svg/layers.svg" alt="" />
													</div>
													<div class="title_service">
																	<div class="list_wrap" id="contact">
									  	<select id="selectOption" name="selectFactor" onchange="setDiv()" >
          		<option value="">Select</option>
				<option value="size">Size </option>
				<option value="variable">Variable </option>
				<option value="method">Method </option>
				<option value="controlStructure">Control Structure </option>
				<option value="inheritance">Inheritance </option>
				<option value="coupling">Coupling </option>
				<option value="all">All The Factor</option>
			</select>
										</div>
											
													</div>
													
													<div class="text">
														 <br><br><button type="submit" class="btn btn-primary" value="By Control" >Submit</button>
													</div>
												</div>
											</div>
											</li>
											</ul>
							</div>
					
								
								</div>
								
								<div class="hideDiv" style="margin: auto;width:600px" id="sizeFactor" style="margin: auto;width:600px">
		  			<br>
		  				<h5 align="center">Weight Related To The Size Factor</h5>
		  				<center></center>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Program Component</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td>Keyword</td>
			  						<td>
							  			<select class="form-control" name="sizeKeyword">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td>Identifier</td>
			  						<td>
							  			<select class="form-control" name="sizeIdentifier">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>Operator</td>
			  						<td>
							  			<select class="form-control" name="sizeOperator">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>Numerical Value</td>
			  						<td>
							  			<select class="form-control" name="sizeNumerical">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>String Iiteral</td>
			  						<td>
							  			<select class="form-control" name="sizeString">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="hideDiv" style="margin: auto;width:700px" id="variableFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Variable Factor</h5>
		  				<center>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Program Component</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td>Global Variable</td>
			  						<td>
							  			<select class="form-control" name="variableGlobal">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td>Local Variable</td>
			  						<td>
							  			<select class="form-control" name="variableLocal">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>Primitive Data Type Variable</td>
			  						<td>
							  			<select class="form-control" name="variablePrimitive">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>Composite Data Type Variable</td>
			  						<td>
							  			<select class="form-control"  name="variableComposite">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="hideDiv" style="margin: auto;width:700px" id="methodFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Method Factor</h5>
		  				<center>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Program Component</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td>Method with a primitive return type</td>
			  						<td>
							  			<select class="form-control" name="methodPrimitive">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td>Method with a composite return type</td>
			  						<td>
							  			<select class="form-control" name="methodComposite">
							  				<option value="0" >0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>Primitive data type parameter</td>
			  						<td>
							  			<select class="form-control" name="methodPrimitiveData">
							  				<option value="0" >0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>Composite data type parameter</td>
			  						<td>
							  			<select class="form-control" name="methodCompositeData">
							  				<option value="0">0</option>
							  				<option value="1" >1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="hideDiv" style="margin: auto;width:700px" id="structureFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Control Structure Factor</h5>
		  				<center>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Control Structure Type</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td>A conditional control structure such as an 'if' or 'else-if' condition</td>
			  						<td>
							  			<select class="form-control" name="condition">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td>An iterative control structure such as an 'for' , 'while' , or 'do-while' loop</td>
			  						<td>
							  			<select class="form-control" name="loop">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3" selected>3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>The 'switch' statement in a 'switch-case' control structure</td>
			  						<td>
							  			<select class="form-control" name="switchCase">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>Each 'case' statement in a 'switch-case' control structure</td>
			  						<td>
							  			<select class="form-control" name="caseOnly">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="hideDiv" style="margin: auto;width:700px" id="inheritanceFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Inheritance Factor</h5>
		  				<center>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Inherited Pattern</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td>A class with no Inheritance(direct or indirect)</td>
			  						<td>
							  			<select class="form-control" name="Inheritance">
							  				<option value="0" selected>0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td>A class inheriting(direct or indirect) from one user-defined class</td>
			  						<td>
							  			<select class="form-control" name="Inheritance1">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A class inheriting(direct or indirect) from two user-defined classes</td>
			  						<td>
							  			<select class="form-control" name="Inheritance2">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3" >3</option>
							  				<option value="4">4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A class inheriting(direct or indirect) from three user-defined classes</td>
			  						<td>
							  			<select class="form-control" name="Inheritance3">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3" selected>3</option>
							  				<option value="4" >4</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A class inheriting(direct or indirect) from more than three user-defined classes</td>
			  						<td>
							  			<select class="form-control" name="Inheritance4">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4" selected>4</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
		  			<div class="hideDiv" style="margin: auto;width:700px" id="couplingFactor">
		  			<br>
		  				<h5 align="center">Weight Related To The Coupling Factor</h5>
		  				<table class="table">
  							<thead class="thead-light">
			  					<tr>
			  						<th>Coupling Type</th>
			  						<th>Weight</th>
			  					</tr>
			  				</thead>
			  				<tbody>
			  					<tr>
			  						<td>A recursive call</td>
			  						<td>
							  			<select class="form-control" name="recursive">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  				<option value="5">5</option>
							  			</select>
			  						</td>
			  					</tr>
			  					<tr>
			  						<td>A regular method calling another regular method in the same file</td>
			  						<td>
							  			<select class="form-control" name="regularRegular">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A regular method calling another regular method in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3" selected>3</option>
							  				<option value="4">4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A regular method calling a recursive method in the same file</td>
			  						<td>
							  			<select class="form-control" name="regularRecursive">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3" selected>3</option>
							  				<option value="4">4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A regular method calling a recursive method in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4" selected>4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A recursive method calling another recursive method in the same file</td>
			  						<td>
							  			<select class="form-control" name="recursiveRecursive">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4" selected>4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A recursive method calling another recursive method in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  				<option value="5" selected>5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A recursive method calling a regular method in the same file</td>
			  						<td>
							  			<select class="form-control" name="recursiveRegular">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3" selected>3</option>
							  				<option value="4">4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A recursive method calling a regular method in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4" selected>4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A regular method referencing a global variable in the same file</td>
			  						<td>
							  			<select class="form-control" name="regularGlobal">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A regular method referencing a global variable in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A recursive method referencing a global variable in the same file</td>
			  						<td>
							  			<select class="form-control" name="recursiveGlobal">
							  				<option value="0">0</option>
							  				<option value="1" selected>1</option>
							  				<option value="2">2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  					<tr>
			  						<td>A recursive method referencing a global variable in a different file</td>
			  						<td>
							  			<select class="form-control">
							  				<option value="0">0</option>
							  				<option value="1">1</option>
							  				<option value="2" selected>2</option>
							  				<option value="3">3</option>
							  				<option value="4">4</option>
							  				<option value="5">5</option>
							  			</select>
							  		</td>
			  					</tr>
			  				</tbody>
		  				</table>
		  			</div>
          
          
         
					
					


						</div>
					</div>
				</div>
	</form>
				<!-- /SERVICES -->
				
				<!-- PORTFOLIO -->
				<div class="arlo_tm_section relative" id="portfolio">
					<div class="arlo_tm_portfolio_wrapper_all">

						<!-- PORTFOLIO FILTER -->
						
						<!-- /PORTFOLIO FILTER -->

					</div>
				</div>
				<!-- /PORTFOLIO -->
				
				<!-- TESTIMONIALS -->
				<div class="arlo_tm_section" id="testimonials">
					<div class="arlo_tm_testimonials_wrapper_all">
						<div class="arlo_tm_universal_box_wrap">
							<div class="bg_wrap">
								<div class="overlay_image testimonial jarallax" data-speed="0"></div>
								<div class="overlay_color testimonial"></div>
							</div>
							<div class="content testimonial">
								<div class="arlo_tm_testimonial_wrap">
									<div class="container">
										<div class="carousel_wrap">
											<ul class="owl-carousel">
												
												<li class="item">
													<div class="inner">
														<div class="quotebox_wrap">
															<i class="xcon-quote-left"></i>
														</div>
														<div class="definitions_wrap">
															
														</div>
														<div class="name_holder">
															
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /TESTIMONIALS -->
				
				
				

				<!-- CONTACT & FOOTER -->
				<div class="arlo_tm_section" >
					
					<div class="arlo_tm_footer_contact_wrapper_all">
						
						<div class="arlo_tm_footer_wrap">
							<div class="container">
								<p>&copy; Copyright 2020. All Rights are Reserved.</p>
							</div>
						</div>
					</div>
				</div>
				<!-- /CONTACT & FOOTER -->
				
			</div>
		</div>
		<!-- /RIGHTPART -->
		
		<a class="arlo_tm_totop" href="#"></a> 
		
	</div>
</div>
<!-- / WRAPPER ALL -->

<!-- SCRIPTS -->
<script src="js/jquery.js"></script>
<!--[if lt IE 10]> <script type="text/javascript" src="js/ie8.js"></script> <![endif]-->	
<script src="js/plugins.js"></script>
<script src="js/init.js"></script>
<!-- /SCRIPTS -->

</body>

<!-- Mirrored from frenify.com/envato/marketify/html/arlo/1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 21 Feb 2020 05:02:31 GMT -->
</html>

<script>

	function setDiv(){
		var div = document.getElementById('selectOption').value;
		
		if(div=="size"){
			hideAll();
			document.getElementById('sizeFactor').classList.add("displayDiv");
		}else if(div=="variable"){
			hideAll();
			document.getElementById('variableFactor').classList.add("displayDiv");
		}else if(div=="method"){
			hideAll();
			document.getElementById('methodFactor').classList.add("displayDiv");
		}else if(div=="controlStructure"){
			hideAll();
			document.getElementById('structureFactor').classList.add("displayDiv");
		}else if(div=="inheritance"){
			hideAll();
			document.getElementById('inheritanceFactor').classList.add("displayDiv");
		}else if(div=="coupling"){
			hideAll();
			document.getElementById('couplingFactor').classList.add("displayDiv");
		}else if(div=="all"){
			hideAll();
		}else{
			hideAll();
		}
	}
	
	function hideAll(){
		
		document.getElementById('sizeFactor').classList.remove("displayDiv");
		document.getElementById('variableFactor').classList.remove("displayDiv");
		document.getElementById('methodFactor').classList.remove("displayDiv");
		document.getElementById('structureFactor').classList.remove("displayDiv");
		document.getElementById('inheritanceFactor').classList.remove("displayDiv");
		document.getElementById('couplingFactor').classList.remove("displayDiv");
		
		document.getElementById('sizeFactor').classList.add("hideDiv");
		document.getElementById('variableFactor').classList.add("hideDiv");
		document.getElementById('methodFactor').classList.add("hideDiv");
		document.getElementById('structureFactor').classList.add("hideDiv");
		document.getElementById('inheritanceFactor').classList.add("hideDiv");
		document.getElementById('couplingFactor').classList.add("hideDiv");
		
	}
	
	

</script>