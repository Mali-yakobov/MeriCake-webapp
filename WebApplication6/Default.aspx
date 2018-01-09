<%@ Page Title="Meri Cake" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication6._Default" %>

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
						<li><a href="Logon.aspx"><span class="glyphicon glyphicon-user"></span> My Account</a></li>
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
					<div class="phone"><span class="glyphicon glyphicon-earphone"></span>07755925</div>
					<div class="mail"><span class="glyphicon glyphicon-envelope"></span>mericake@gmail.com</div>
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
	<!--///////////////////HomePage///////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="home-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Carousel -->
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators hidden-xs">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img src="images/pic9.jpeg" style="width: 1350px; height: 550px;" alt="First slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<img src="images/pic7.jpeg" style="width: 1350px; height: 550px;" alt="Second slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<img src="images/pic5.jpeg" style="width: 1350px; height: 550px;" alt="Third slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
						</div>
						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div><!-- /carousel -->
				</div>
			</div>

			<!-- <div class="row">
				<div class="banner">
					<div class="col-sm-4">
						<img src="images/sub-banner1.jpg" />
					</div>
					<div class="col-sm-4">
						<img src="images/sub-banner2.png" />
					</div>
					<div class="col-sm-4">
						<img src="images/sub-banner3.png" />
					</div>
				</div>
			</div> -->
			
			  <div class="container text-center">
        <h1 id="welcome">Welcome To Meri Cake Shop</h1>

        <input class="btn btn-4" type="button" id="b2" onclick="onClickLogin()" value="JOIN US"><br><br>
        <div class="intro">Welcome To Meri Cake Shop we have many special deserts<br>
            for every occasion and any kind of sweetness.  </div><br>
        <div class="row">
            <img src="images/pic4.jpg" class="img-responsive" style="width:1500px;height:450px;"  alt="Image">
        </div><br>
        <input class="btn btn-4" type="button" onclick="location.href='cake.html';" value="Make Reservation"><br><br>
        <div class="intro">Welcome To Meri Cake Shop we have many special deserts<br>
            for every occasion and any kind of sweetness.  </div><br>
        <div class="row"><br>
            <img src="images/pic1.jpeg" class="img-responsive" style="width:1500px;height:450px;" alt="Image">
            <h1>Our Products</h1>
            <p>
                <input class="btn btn-4" type="button" onclick="location.href='cake.html';" value="CAKES">
                <input class="btn btn-4" type="button" onclick="location.href='Cookies‬‏.html';" value="COOKIES">
                <input class="btn btn-4" type="button" onclick="location.href='Cream_Puffs.html';" value="CREAM PUFFS">
            </p><br>
        <div class="intro">Welcome To Meri Cake Shop we have many special deserts<br>
            for every occasion and any kind of sweetness.  </div><br>
        </div>
        <div class="row"><br>
            <img src="images/pic2.jpg" class="img-responsive" style="width:1500px;height:450px;" alt="Image">
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
	
	<!-- JS -->
	<script>
	$(document).ready(function(){
		$(".nav-tabs a").click(function(){
			$(this).tab('show');
		});
		$('.nav-tabs a').on('shown.bs.tab', function(event){
			var x = $(event.target).text();         // active tab
			var y = $(event.relatedTarget).text();  // previous tab
			$(".act span").text(x);
			$(".prev span").text(y);
		});
	});
	</script>
	

</asp:Content>
