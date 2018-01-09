<%@ Page Title="Cookies" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="WebApplication6.Cookies" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<!--Top-->
	<nav id="top">
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
				 <ul> <a  href="#"> Meri Cake</a></ul>
				</div>
				<div class="col-xs-6">
					<ul class="top-link">
						<li><a href="login.aspx"><span class="glyphicon glyphicon-user"></span> My Account</a></li>
						<li><a href="contact.html"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<!--Header-->
	<header >
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div id="logo"><img src="images/logo.png" /></div>
				</div>
				<div class="col-md-6 text-right">
					<div class="phone"><span class="glyphicon glyphicon-earphone"></span>0123-456-789</div>
					<div class="mail"><span class="glyphicon glyphicon-envelope"></span>infor@yoursite.com</div>
					<form class="form-search">  
						<input type="text" class="input-medium search-query">  
						<button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
					</form>
				</div>
				<div id="cart"><a class="btn btn-cart" href="cart.aspx"><span class="glyphicon glyphicon-shopping-cart"></span>CART<strong>0</strong></a></div>
			</div>
		</div>
	</header>
	<!--Navigation-->
   <nav id="menu" class="navbar">
		<div class="container">
			<div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
			  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="Default.aspx">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Products</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="Cakes.aspx">Cakes</a></li>
									<li><a href="Cookies.aspx">Cookies‬‏</a></li>
									<li><a href="Cookies.aspx">Cream Puffs</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li><a href="category.html">My Orders</a></li>
					<li><a href="category.html">Contact Us</a></li>
					<li><a href="category.html">About Us</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////Category Page//////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="Default.aspx">Home</a></li>
						<li><a href="Cookies.aspx">Cookies</a></li>
					</ul>
				</div>
			</div>

			<div class="row">
				<div id="main-content" class="col-md-8">
					<div class="row">
						<div class="products">
							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="product">
										<div class="image">
											<a href="product.html"><img src="images/pic4.jpg" /></a>
                                            
											<ul class="buttons" >
                                                <asp:ImageButton runat="server" id="ImageButton1" onclick="InsertOrder" productId="1" ImageUrl="~/images/cart.png" Width="30px" Height="30px"  style="cursor:pointer;" />
											</ul>
										</div>
										<div class="caption">
											<div class="name"><h3><a href="product.html">Makaroni cookies</a></h3></div>
											<div class="price">$12<span>10$</span></div>
										</div>
									</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="product">
										<div class="image">
											<a href="product.html"><img src="images/home_3.jpg" /></a>
											<ul class="buttons">
											<asp:ImageButton runat="server" id="ImageButton2" onclick="InsertOrder" productId="3" ImageUrl="~/images/cart.png" Width="30px" Height="30px"  style="cursor:pointer;" />

											</ul>
										</div>
										<div class="caption">
											<div class="name"><h3><a href="product.html">Alfajores</a></h3></div>
											<div class="price">$12<span>10$</span></div>
										</div>
									</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="product">
										<div class="image">
											<a href="product.html"><img src="images/pic10.jpeg" /></a>
											<ul class="buttons">
											<asp:ImageButton runat="server" id="ImageButton3" onclick="InsertOrder" productId="2" ImageUrl="~/images/cart.png" Width="30px" Height="30px"  style="cursor:pointer;" />
											</ul>
										</div>
										<div class="caption">
											<div class="name"><h3><a href="product.html">Chocolate</a></h3></div>
											<div class="price">$12<span>10$</span></div>
										</div>
									</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="product">
										<div class="image">
											<a href="product.html"><img src="images/pic5.jpeg" /></a>
											<ul class="buttons">
											<asp:ImageButton runat="server" id="ImageButton4" onclick="InsertOrder" productId="4" ImageUrl="~/images/cart.png" Width="30px" Height="30px"  style="cursor:pointer;" />
											</ul>
										</div>
										<div class="caption">
											<div class="name"><h3><a href="product.html">Vanilla</a></h3></div>
											<div class="price">$12<span>10$</span></div>
										</div>
									</div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="row">
						<div class="products">
							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="product">
										<div class="image">
											<a href="product.html"><img src="images/pic4.jpg" /></a>
											<ul class="buttons">
											<asp:ImageButton runat="server" id="ImageButton5" onclick="InsertOrder" productId="1" ImageUrl="~/images/cart.png" Width="30px" Height="30px"  style="cursor:pointer;" />
											</ul>
										</div>
										<div class="caption">
											<div class="name"><h3><a href="product.html">Makaroni cookies</a></h3></div>
											<div class="price">$12<span>10$</span></div>
										</div>
									</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="product">
										<div class="image">
											<a href="product.html"><img src="images/pic4.jpg" /></a>
											<ul class="buttons">
											<asp:ImageButton runat="server" id="ImageButton6" onclick="InsertOrder" productId="1" ImageUrl="~/images/cart.png" Width="30px" Height="30px"  style="cursor:pointer;" />
											</ul>
										</div>
										<div class="caption">
											<div class="name"><h3><a href="product.html">Makaroni cookies</a></h3></div>
											<div class="price">$12<span>10$</span></div>
										</div>
									</div>
							</div>
							
							<div class="clear"></div>
						</div>
					</div>
					
					
				</div>
				<div id="sidebar" class="col-md-4">
					<div class="widget wid-categories">
						<div class="heading"><h4>CATEGORIES</h4></div>
						<div class="content">
							<ul>
								<li><a href="#">COOKIES</a></li>
								<li><a href="#">CAKES</a></li>
								<li><a href="#">CREAM PUFFS</a></li>
							</ul>
						</div>
					</div>
				
					
					
					
				</div>
			</div>
		</div>
	</div>	
	<footer>
		
		<div class="top-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-right">
						<h4>Subcribe Email</h4>
						<p></p>
					</div>
					<div class="col-md-6">
						<form name="subcribe-email" action="subcribe.php">
							<div class="subcribe-form form-group">
								<input class="form-inline" type="text" name="email" value="1"><button href="#" class="btn btn-4" type="submit">Subcribe</button>
							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
		<div class="container">
			<div class="wrap-footer">
				<div class="row">
					<div class="col-md-3 col-footer footer-1">
						<img src="images/logo.png" />
						<p></p>
					</div>
					<div class="col-md-3 col-footer footer-2">
						<div class="heading"><h4>Customer Services</h4></div>
						<ul>
							<li><a href="#">About Us</a></li>
							<li><a href="#">Delivery Information</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Terms & Conditions</a></li>
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-3">
						<div class="heading"><h4>My Account</h4></div>
						<ul>
							<li><a href="#">My Account</a></li>
							<li><a href="#">Brands</a></li>
							<li><a href="#">Gift Vouchers</a></li>
							<li><a href="#">Specials</a></li>
							<li><a href="#">Site Map</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-4">
						<div class="heading"><h4>Contact Us</h4></div>
						<ul>
							<li><span class="glyphicon glyphicon-home"></span>Israel, Beer-Sheva</li>
							<li><span class="glyphicon glyphicon-earphone"></span>07755925</li>
							<li><span class="glyphicon glyphicon-envelope"></span>mericake@gmail.com</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						Meri Cake - Designed by <a href="https://www.365bootstrap.com" target="_blank">365bootstrap</a>
					</div>
					<div class="col-md-6">
						<div class="pull-right">
							<ul>
								<li><img src="images/visa-curved-32px.png" /></li>
								<li><img src="images/paypal-curved-32px.png" /></li>
								<li><img src="images/discover-curved-32px.png" /></li>
								<li><img src="images/maestro-curved-32px.png" /></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

</asp:Content>