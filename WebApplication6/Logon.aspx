<%@ Page Language="C#"   CodeBehind="Logon.aspx.cs" Inherits="WebApplication6.Logon" %>
<%@ Import Namespace="System.Web.Security" %>

<%--<script runat="server">
  void Logon_Click(object sender, EventArgs e)
  {
    if ((UserEmail.Text == "mm") && 
            (UserPass.Text == "33"))
      {
          FormsAuthentication.RedirectFromLoginPage 
             (UserEmail.Text, Persist.Checked);
      }
      else
      {
          Msg.Text = "Invalid credentials. Please try again.";
      }
  }
</script>--%>
<html>
<head id="Head1" runat="server">
  <title>Login</title>
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="Content/bootstrap.min.css"  type="text/css" runat="server">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="Content/style.css" runat="server">
	
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"  type="text/css" runat="server">
    <link rel="stylesheet" href="fonts/font-slider.css" type="text/css" runat="server">
	
	<!-- jQuery and Modernizr-->
	<script src="Scripts/jquery-2.1.1.js" ></script>
	
	<!-- Core JavaScript Files -->  	 
    <script src="Scripts/bootstrap.min.js" ></script>
</head>
<body>
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
					<div class="phone"><span class="glyphicon glyphicon-earphone"></span>0123-456-789</div>
					<div class="mail"><span class="glyphicon glyphicon-envelope"></span>infor@yoursite.com</div>
					<form class="form-search">  
						<input type="text" class="input-medium search-query">  
						<button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
					</form>
				</div>
				<div id="cart"><a class="btn btn-cart" href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>CART<strong>0</strong></a></div>
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
    
    <div class="row">
        <form id="form1" runat="server">
           <%-- <div id="options" runat="server"  class="col-md-6" style="margin:150px; ">
                <asp:Button ID="loginOption" class="btn btn-4" runat="server" Text="SignIn" name="SignIn" OnClick="loginRedirect" /><br /><br />
                <asp:Button ID="createOption" class="btn btn-4" runat="server" Text="SignUp" name="SignUp" OnClick="createRedirect" />
            </div>--%>
	    <div  id="loginForm" class="col-md-6" runat="server" style="margin-bottom: 30px;">
              

                  <div class="heading"><h2>Login</h2></div>
					
	                <div class="form-group">
                        <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Username :" ></asp:TextBox>  
	                </div>
                        
	                <div class="form-group">
                            <asp:TextBox ID="password" runat="server"  TextMode="Password" class="form-control" placeholder="Password :" ></asp:TextBox>  
	                </div>
             
                     <div> Remember me? <asp:CheckBox ID="Persist" runat="server" /></div>
        
      
                    <asp:Button ID="loginButton" class="btn btn-4" runat="server" Text="Login"  OnClick="Logon_Click" />
	                <p>
                  <asp:Label ID="Msg" ForeColor="red" runat="server" />
                </p>
	   
                    <asp:Label ID="Label1" ForeColor="red" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            ControlToValidate="username"
                            Display="Dynamic" 
                            ErrorMessage="Usernamw cannot be empty." 
                            ForeColor="Red"
                            runat="server" />

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                        ControlToValidate="password"
                        ErrorMessage="Password cannot be empty."
                        ForeColor="Red"
                        runat="server" />
   
    
             
         </div>

        <div  id="createForm" runat="server" class="col-md-6">
				    <div class="heading"><h2>New User ? Create An Account.</h2></div>
					    
						    <div class="form-group">
                                <asp:TextBox ID="newUsername" runat="server" class="form-control" placeholder="Username :"></asp:TextBox> 
							    <%--<input type="text" class="form-control" placeholder="Username :" name="username" id="newUsername" required>--%>
						    </div>
						   <%-- <div class="form-group">
							    <input type="email" class="form-control" placeholder="Last Name :" name="lastname" id="lastname" required>
						    </div>--%>
						    <div class="form-group">
                                 <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email Address :" TextMode="Email"></asp:TextBox> 
						    </div>
						    <div class="form-group">
                                <asp:TextBox ID="phone" runat="server" class="form-control" placeholder="Mobile :" TextMode="Phone"></asp:TextBox> 
						    </div>
						    <div class="form-group">
							    <input name="gender" id="gender" type="radio"> Male <input name="gender" id="gender" type="radio"> Female 
						    </div>
						    <div class="form-group">
                                 <asp:TextBox ID="newPassword" runat="server"  TextMode="Password" class="form-control" placeholder="Password :" ></asp:TextBox>
							    <%--<input type="password" class="form-control" placeholder="Password :" name="password" id="nwePassword" required>--%>
						    </div>
						    <div class="form-group">
                                 <asp:TextBox ID="repassword" runat="server"  TextMode="Password" class="form-control" placeholder="Retype Password :" ></asp:TextBox>
<%--							    <input type="password" class="form-control" placeholder="Retype Password :" name="repassword" id="repassword" required>--%>
						    </div>
						    <div class="form-group">
							    <input name="agree" id="agree" type="checkbox" > I agree to your website.
						    </div>
                            <asp:Button ID="Button2" class="btn btn-4" runat="server" Text="Create"  OnClick="RegisterUser" />
						   
					    
				    </div>
            
     </form>
    </div><br /><br />

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
</html>