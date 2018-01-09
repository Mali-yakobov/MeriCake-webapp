<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApplication6.cart" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <body>
	<!--Top-->
	<nav id="top">
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<select class="language">
						<option value="English" selected>English</option>
						<option value="France">France</option>
						<option value="Germany">Germany</option>
					</select>
					<select class="currency">
						<option value="USD" selected>USD</option>
						<option value="EUR">EUR</option>
						<option value="DDD">DDD</option>
					</select>
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
				<div id="cart"><a class="btn btn-cart" href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>CART<strong><asp:Label ID="numOfItems" runat="server">0</asp:Label></strong></a></div>
                
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
	<!--///////////////////Cart Page//////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="Default.aspx">Home</a></li>
						<li><a href="cart.aspx">Cart</a></li>
					</ul>
				</div>
			</div>

            <asp:Table ID="myTable" runat="server" Width="55%"> 
            <asp:TableRow BorderStyle="Dashed"  style="background-color:#92E6F3;">
                <asp:TableCell>Product</asp:TableCell>
                <asp:TableCell>Price</asp:TableCell>
                <asp:TableCell>Date</asp:TableCell>
            </asp:TableRow>
        </asp:Table> 

			<!-- <div class="row">
				<div class="product well">
					<div class="col-md-3">
						<div class="image">
							<img src="images/clothing_sp19_1.jpg" />
						</div>
					</div>
					<div class="col-md-9">
						<div class="caption">
							<div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
							<ul class="info">
								<li>Brand: text</li>
								<li>ID: 0122222</li>
							</ul>
							<div class="price">$122<span>$98</span></div>
							<label>Qty: </label> <input class="form-inline quantity" type="text" value="1"><a href="#" class="btn btn-3 ">Update</a>
							<hr>
							<a href="#" class="btn btn-default pull-right">REMOVE</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>	
			</div>
			<div class="row">
				<div class="product well">
					<div class="col-md-3">
						<div class="image">
							<img src="images/clothing_sp12_1.jpg" />
						</div>
					</div>
					<div class="col-md-9">
						<div class="caption">
							<div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
							<ul class="info">
								<li>Brand: text</li>
								<li>ID: 0122222</li>
							</ul>
							<div class="price">$122<span>$98</span></div>
							<label>Qty: </label> <input class="form-inline quantity" type="text" value="1"><a href="#" class="btn btn-3 ">Update</a>
							<hr>
							<a href="#" class="btn btn-default pull-right">REMOVE</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>	
			</div> -->
			<div class="row">
				<div class="col-md-4 col-md-offset-8 ">
					<center><a href="#" class="btn btn-1">Continue To Shopping</a></center>
				</div>
			</div>
			<div class="row">
				<div class="pricedetails">
					<div class="col-md-4 col-md-offset-8">
						<table>
							<h6>Price Details</h6>
							<tr>
								<td>Total</td>
								<td>0</td>
							</tr>
							<tr>
								<td>Discount</td>
								<td>-----</td>
							</tr>
							<tr>
								<td>Delivery Charges</td>
								<td>0</td>
							</tr>
							<tr style="border-top: 1px solid #333">
								<td><h5>TOTAL</h5></td>
								<td><asp:Label ID="Total" runat="server">0</asp:Label></td>
							</tr>
						</table>
						<center><a href="#" class="btn btn-1">Checkout</a></center>
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
</body>


 </asp:Content>   

