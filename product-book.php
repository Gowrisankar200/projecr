<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>ONLINE VEGETABLE STORE AUTOMATION</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="icon" href="favicon.png" type="image/png">
	<!-- Include Bootstrap CSS -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<!-- Include Font Awesome CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<!-- Include Font Awesome CSS -->
	<link href='https://fonts.googleapis.com/css?family=Oswald:400,700|Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
	<!-- Include Medirev CSS -->
	<link href='css/style.css' rel='stylesheet' type='text/css'>
	<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
	<link rel="stylesheet" type="text/css" href="css/settings.css" media="screen" />
</head>
<body>
	<header class="header">
		<div class="container">
			<div class="container-fluid">
				<div class="header-top">
					<div class="col-md-3 col-sm-4 hidden-xs logo">
						<a href=""><img src="img/logo.png" alt="" /></a>
					</div>
				</div>
			</div>
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				  <a href="" class="navbar-header"><img src="img/logo.png" alt="" /></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navigation">
				  <ul class="nav navbar-nav">
					<li><a href="buyer-dashboard.php">Home</a></li>
					<li class="active"><a href="product-list-buyer.php">Product List</a></li>
					<li><a href="seller-list.php">Seller List</a></li>
					<li><a href="order-history.php">Order History</a></li>
				  </ul>
				  <ul class="nav navbar-nav navbar-right">
					<li class="get-a-quote"><a href="logout.php">Logout</a></li>
				  </ul>
				</div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
		</div>
	</header>
	
	<section class="blog">
		<div class="container">
			
			<div class="blog-posts">
            
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="single-post">
                    
                    <?php 
						ob_start();
session_start(); 
include('connect.php');
error_reporting(E_ERROR | E_PARSE);

						$pname = $_REQUEST['pname'];
		$pqw = $_REQUEST['pqw'];
		$rate = $_REQUEST['rate'];
		$company = $_REQUEST['company'];
		$mobile = $_REQUEST['mobile'];
		$address = $_REQUEST['address'];
		$path = $_REQUEST['path'];	
		$qty = $_REQUEST['qty'];	
		$susername = $_REQUEST['susername'];	
		$total = $rate*$qty;
		?>
        
						<img src="<?php echo $path ?>" width="359" height="300">
						
						<div class="post-details">
							<p class="title"><b>Product :</b> <?php echo $pname; ?></p>
							<p class="title"><b>Product Stock :</b> <?php echo $pqw; ?></p>
                            <p class="title"><b>Company Name :</b> <?php echo $company; ?></p>
                            <p class="title"><b>Mobile :</b> <?php echo $mobile; ?></p>
                            <p class="title"><b>Address :</b> <?php echo $address; ?></p>
                            <p class="title"><b>Rate :</b> <?php echo $rate; ?></p>
                            <p class="title"><b>Quantity :</b> <?php echo $qty; ?></p>
                            <p class="title"><b>Total :</b> Rs. <?php echo $total; ?></p>
                            <form method="post" action="order.php">
                                <input type="text" name="pname" value="<?php echo $pname; ?>" style="display:none;">
                                <input type="text" name="pqw" value="<?php echo $pqw; ?>" style="display:none">
                                <input type="text" name="rate" value="<?php echo $rate; ?>" style="display:none">
                                <input type="text" name="company" value="<?php echo $company; ?>" style="display:none">
                                <input type="text" name="mobile" value="<?php echo $mobile; ?>" style="display:none">
                                <input type="text" name="address" value="<?php echo $address; ?>" style="display:none">
                                <input type="text" name="path" value="<?php echo $path; ?>" style="display:none">
                                <input type="text" name="qty" value="<?php echo $qty; ?>" style="display:none">
                                <input type="text" name="total" value="<?php echo $total; ?>" style="display:none">
                                <input type="text" name="susername" value="<?php echo $susername; ?>" style="display:none">
                            	<input type="submit" value="Confirm Order" name="btnOrder">
                            </form>
						</div>
					</div>
				</div>
                
			</div>
          
		</div>
	</section>



	<section class="footer">
		<div class="copyright text-center">
			<div class="container">
				<div class="row">
					<p class="copyright">&copy; Copyright All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>   
    <script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
	<!-- Waypoint -->
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<!-- Include Medirev JavaScript -->
	<script src="js/script.js"></script>
</body>
</html>