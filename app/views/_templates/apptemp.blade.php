<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>@section('titulo')@show</title>
        
	<link href="{{asset('/css/bootstrap.min.css')}}" rel="stylesheet">
	<link href="{{asset('/css/datepicker3.css')}}" rel="stylesheet">
	<link href="{{asset('css/styles.css')}}" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>

	<!--[if lt IE 9]>
	<link href="css/rgba-fallback.css" rel="stylesheet">
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="{{ URL::to( '/home');}}"><span>Campeonato </span>Docente</a>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown">
						<a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
							<i class="glyphicon glyphicon-envelope"></i>  <span class="label label-danger">2</span>
						</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left">
										<img alt="image" class="img-circle" src="http://placehold.it/40/ccc/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">3 mins ago</small>
										<a href="#"><strong>John Doe</strong> commented on <strong>your photo</strong>.</a>
										<br />
										<small class="text-muted">1:24 pm - 25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left">
										<img alt="image" class="img-circle" src="http://placehold.it/40/ccc/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">1 hour ago</small>
										<a href="#">New message from <strong>Jane Doe</strong>.</a>
										<br />
										<small class="text-muted">12:27 pm - 25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
						
							<li>
								<div class="all-button">
									<a href="#">
										<em class="glyphicon glyphicon-inbox"></em> <strong>All Messages</strong>
									</a>
								</div>
							</li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
							<i class="glyphicon glyphicon-bell"></i>  <span class="label label-primary">18</span>
						</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li>
								<a href="#">
									<div>
										<em class="glyphicon glyphicon-envelope"></em> 1 New Message
										<span class="pull-right text-muted small">3 mins ago</span>
									</div>
								</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="#">
									<div>
										<em class="glyphicon glyphicon-heart"></em> 12 New Likes
										<span class="pull-right text-muted small">4 mins ago</span>
									</div>
								</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="#">
									<div>
										<em class="glyphicon glyphicon-user"></em> 5 New Followers
										<span class="pull-right text-muted small">4 mins ago</span>
									</div>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>


	<!-- BEGIN MAIN SIDEBAR -->
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		@include('_templates.sidebar')
	</div>
	<!-- END MAIN SIDEBAR -->


	<!--PARTE DE CONTENIDO-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

		<div class="row">
                    <ol class="breadcrumb">
                        <li><a href="{{ URL::to( '/home');}}"><span class="glyphicon glyphicon-home"></span></a></li>
                        @section('rutanavegacion')@show
                    </ol>
		</div><!--/.row-->
                
                <div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">@section('nombrevista')@show</h1>
			</div>
		</div><!--/.row-->
                
		@section('contenido')@show		
	</div>
	<!-- FIN DE PARTE DE CONTENIDO-->
        
	<script src="{{asset('/js/jquery-1.11.1.min.js')}}"></script>
	<script src="{{asset('/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('/js/chart.min.js')}}"></script>
	<script src="{{asset('/js/chart-data.js')}}"></script>
	<script src="{{asset('/js/easypiechart.js')}}"></script>
	<script src="{{asset('/js/easypiechart-data.js')}}"></script>
	<script src="{{asset('/js/bootstrap-datepicker.js')}}"></script>
	<script src="{{asset('/js/custom.js')}}"></script>
	<script>
	window.onload = function(){ 
		var chart1 = document.getElementById("line-chart").getContext("2d");
		window.myLine = new Chart(chart1).Line(lineChartData, {
			responsive : true,  
			scaleLineColor: "rgba(255,255,255,.2)", 
			scaleGridLineColor: "rgba(255,255,255,.05)", 
			scaleFontColor: "#ffffff"
		});
		var chart2 = document.getElementById("bar-chart").getContext("2d");
		window.myBar = new Chart(chart2).Bar(barChartData, {
			responsive : true,  
			scaleLineColor: "rgba(255,255,255,.2)", 
			scaleGridLineColor: "rgba(255,255,255,.05)", 
			scaleFontColor: "#ffffff"
		});
		var chart5 = document.getElementById("radar-chart").getContext("2d");
		window.myRadarChart = new Chart(chart5).Radar(radarData, {
			responsive : true,
			scaleLineColor: "rgba(255,255,255,.05)",
			angleLineColor : "rgba(255,255,255,.2)"
		});
		
	};
	</script>
</body>

</html>