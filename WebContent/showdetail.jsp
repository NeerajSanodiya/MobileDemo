<%@page import="dto.MobileDTO"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Shop Around</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--[if lte IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.jcarousel.pack.js" type="text/javascript"></script>
<script src="js/jquery-func.js" type="text/javascript"></script>
</head>
<body>
	<!-- Shell -->
	<div class="shell">
		<!-- Header -->
		<div id="header">
			<h1 id="logo">
				<a href="#">shoparound</a>
			</h1>
			<!-- Cart -->
			<div id="cart">
				<a href="#" class="cart-link">Your Shopping Cart</a>
				<div class="cl">&nbsp;</div>
				<span>Articles: <strong>4&nbsp;</strong></span> &nbsp;<span>-
					Cost: <strong>$250.99</strong>
				</span>
			</div>
			<!-- End Cart -->
			<!-- Navigation -->
			<div id="navigation">
				<ul>
					<li><a href="#" class="active">Home</a></li>
					<li><a href="#">Support</a></li>
					<li><a href="#">My Account</a></li>
					<li><a href="#">The Store</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div>
			<!-- End Navigation -->
		</div>
		<!-- End Header -->
		<!-- Main -->
		<div id="main">
			<div class="cl">&nbsp;</div>
			<!-- Content -->
			<div id="content">
				<!-- Content Slider -->
				<div id="slider" class="box">
					<div id="slider-holder">
						<ul>
							<li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
							<li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
							<li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
							<li><a href="#"><img src="css/images/slide1.jpg" alt="" /></a></li>
						</ul>
					</div>
					<div id="slider-nav">
						<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a>
						<a href="#">4</a>
					</div>
				</div>
				<!-- End Content Slider -->
				<!-- Products -->
				<jsp:useBean id="mobileController"
					class="controller.MobileController"></jsp:useBean>
				<%
					List<MobileDTO> mList = mobileController.getMobile(request,
							response);
				%><div class="products">

					<table>
						<%
							int count = 0;
							for (MobileDTO mobileDTO : mList) {
						%>
						<%
							if (count % 3 == 0) {
						%><tr>
							<%
								}
							%>
							<td>
								<div class="cl">&nbsp;</div>
								<ul>
									<li><a
										href="buyproduct.jsp?image_path=<%=mobileDTO.getImage_path()%>&o_s=<%=mobileDTO.getOs()%>&company_name=<%=mobileDTO.getCompany_Name()%>&model_number=<%=mobileDTO.getModel_Number()%>&price=<%=mobileDTO.getPrice()%>">
										
										<img src="<%=mobileDTO.getImage_path()%>" height="200" width="100"
											style="width: 231px; height: 373px;" name="image_path" /></a>
										<div class="product-info">
											<h3>Mobile</h3>
											<div class="product-desc">
												<h4>
													<input type="hidden" name="o_s"
														value="<%=mobileDTO.getOs()%>" /><%=mobileDTO.getOs()%>��
												</h4>
												<p>
													<input type="hidden" name="company_name"
														value="<%=mobileDTO.getCompany_Name()%>" /><%=mobileDTO.getCompany_Name()%><br />
													<input type="hidden" name="model_number"
														value="<%=mobileDTO.getModel_Number()%>" /><%=mobileDTO.getModel_Number()%></p>
												<input type="hidden" name="price"
													value="<%=mobileDTO.getPrice()%>" /> <strong class="price">$<%=mobileDTO.getPrice()%></strong>
											</div>
										</div></li>
								</ul>
								<div class="cl">&nbsp;</div>
							</td>
							<%
								if (count % 3 == 0) {
							%>


							<%
								}
									count++;
								}
							%>
						
					</table>
				</div>
				<!-- End Products -->
			</div>
			<!-- End Content -->
			<!-- Sidebar -->
			<div id="sidebar">
				<!-- Search -->
				<div class="box search">
					<h2>
						Search by <span></span>
					</h2>
					<div class="box-content">
						<form action="#" method="post">
							<label>Keyword</label> <input type="text" class="field" /> <label>Category</label>
							<select class="field">
								<option value="">-- Select Category --</option>
							</select>
							<div class="inline-field">
								<label>Price</label> <select class="field small-field">
									<option value="">$10</option>
								</select> <label>to:</label> <select class="field small-field">
									<option value="">$50</option>
								</select>
							</div>
							<input type="submit" class="search-submit" value="Search" />
							<p>
								<a href="#" class="bul">Advanced search</a><br /> <a href="#"
									class="bul">Contact Customer Support</a>
							</p>
						</form>
					</div>
				</div>
				<!-- End Search -->
				<!-- Categories -->
				<div class="box categories">
					<h2>
						Categories <span></span>
					</h2>
					<div class="box-content">
						<ul>
							<li><a href="#">Category 1</a></li>
							<li><a href="#">Category 2</a></li>
							<li><a href="#">Category 3</a></li>
							<li><a href="#">Category 4</a></li>
							<li><a href="#">Category 5</a></li>
							<li><a href="#">Category 6</a></li>
							<li><a href="#">Category 7</a></li>
							<li><a href="#">Category 8</a></li>
							<li><a href="#">Category 9</a></li>
							<li><a href="#">Category 10</a></li>
							<li><a href="#">Category 11</a></li>
							<li><a href="#">Category 12</a></li>
							<li class="last"><a href="#">Category 13</a></li>
						</ul>
					</div>
				</div>
				<!-- End Categories -->
			</div>
			<!-- End Sidebar -->
			<div class="cl">&nbsp;</div>
		</div>
		<!-- End Main -->
		<!-- Side Full -->
		<div class="side-full">
			<!-- More Products -->
			<div class="more-products">
				<div class="more-products-holder">
					<ul>
						<li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small7.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small1.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small2.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small3.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small4.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small5.jpg" alt="" /></a></li>
						<li><a href="#"><img src="css/images/small6.jpg" alt="" /></a></li>
						<li class="last"><a href="#"><img
								src="css/images/small7.jpg" alt="" /></a></li>
					</ul>
				</div>
				<div class="more-nav">
					<a href="#" class="prev">previous</a> <a href="#" class="next">next</a>
				</div>
			</div>
			<!-- End More Products -->
			<!-- Text Cols -->
			<div class="cols">
				<div class="cl">&nbsp;</div>
				<div class="col">
					<h3 class="ico ico1">Donec imperdiet</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
					<p class="more">
						<a href="#" class="bul">Lorem ipsum</a>
					</p>
				</div>
				<div class="col">
					<h3 class="ico ico2">Donec imperdiet</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
					<p class="more">
						<a href="#" class="bul">Lorem ipsum</a>
					</p>
				</div>
				<div class="col">
					<h3 class="ico ico3">Donec imperdiet</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
					<p class="more">
						<a href="#" class="bul">Lorem ipsum</a>
					</p>
				</div>
				<div class="col col-last">
					<h3 class="ico ico4">Donec imperdiet</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Donec imperdiet, metus ac cursus auctor, arcu felis ornare dui.</p>
					<p class="more">
						<a href="#" class="bul">Lorem ipsum</a>
					</p>
				</div>
				<div class="cl">&nbsp;</div>
			</div>
			<!-- End Text Cols -->
		</div>
		<!-- End Side Full -->
		<!-- Footer -->
		<div id="footer">
			<p class="left">
				<a href="#">Home</a> <span>|</span> <a href="#">Support</a> <span>|</span>
				<a href="#">My Account</a> <span>|</span> <a href="#">The Store</a>
				<span>|</span> <a href="#">Contact</a>
			</p>
			<p class="right">
				&copy; 2010 Shop Around. Design by <a
					href="http://chocotemplates.com">Chocotemplates.com</a>
			</p>
		</div>
		<!-- End Footer -->
	</div>
	<!-- End Shell -->
	<!--<div>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>-->
</body>
</html>
