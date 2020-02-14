<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Connexion</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="SportFIT template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/contact.css">
<link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_content d-flex flex-row align-items-center justify-content-start trans_400">
						<a href="#">
							<div class="logo d-flex flex-row align-items-center justify-content-start"><img src="images/dot.png" alt=""><div>Sport<span>fit</span></div></div>
						</a>
						<nav class="main_nav">
							<ul class="d-flex flex-row align-items-center justify-content-start">
								<li><a href="accueil.jsp">Accueil</a></li>
								<li><a href="pInscription.jsp">Inscription</a></li>
								<li><a href="pSelectionPanier.jsp">Commander</a></li>
								<li class="active"><a href="pAuthentification.jsp">Connexion</a></li>
								<li><a href="about.jsp">À propos</a></li>
							</ul>
						</nav>
						<c:choose>
							<c:when test="${client!=null}">
								<div class="phone d-flex flex-row align-items-center justify-content-start ml-auto">
									<a href = "SDeconnexion"><c:out value="${client.prenom}"/> <c:out value="${client.nom}"/></a>
								</div>
							</c:when>
							<c:otherwise>
							<div class="phone d-flex flex-row align-items-center justify-content-start ml-auto">
							non connecté
							</div></c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Hamburger -->
	
	<div class="hamburger_bar trans_400 d-flex flex-row align-items-center justify-content-start">
		<div class="hamburger">
			<div class="menu_toggle d-flex flex-row align-items-center justify-content-start">
				<span>menu</span>
				<div class="hamburger_container">
					<div class="menu_hamburger">
						<div class="line_1 hamburger_lines" style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
						<div class="line_2 hamburger_lines" style="visibility: inherit; opacity: 1;"></div>
						<div class="line_3 hamburger_lines" style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Menu -->

	<div class="menu trans_800">
		<div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="about.html">About us</a></li>
				<li><a href="services.html">Classes & Services</a></li>
				<li><a href="blog.html">Blog</a></li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
		</div>
		<div class="menu_phone d-flex flex-row align-items-center justify-content-start">
			<i class="fa fa-phone" aria-hidden="true"></i>
				<span>652-345 3222 11</span>
		</div>
	</div>

	<!-- Home -->

	<div class="home">
		<div class="background_image" style="background-image:url(images/contact.jpg)"></div>
		<div class="overlay"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="home_title">Connexion</div>
							<div class="home_subtitle">Crossfit, Football, Escrime, Fitness & plus</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact -->

	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Content -->
				<div class="col-lg-4">
					<div class="contact_content">
						<div class="contact_logo">
							<div class="logo d-flex flex-row align-items-center justify-content-start"><img src="images/dot.png" alt=""><div>Sport<span>fit</span></div></div>
						</div>
						<div class="contact_text">
							<p>SportFIT abaisse les barrières entre vous et le sport</p>
						</div>
						<div class="contact_list">
							<ul>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>A:</div></div>
									<div>1481 Creekside Lane Avila Beach, CA 931</div>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>P:</div></div>
									<div>+53 345 7953 32453</div>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start">
									<div><div>M:</div></div>
									<div>yourmail@gmail.com</div>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<!-- Contact Form -->
				<div class="col-lg-8 contact_col">
					<div class="contact_title">Connexion</div>
					<div class="contact_form_container">
						<form action="Sauthentification" method="post" id="contact_form" class="contact_form">
							<div class="row">
								<div class="col-lg-6">
									<div class="input_item"><input type="number" class="contact_input trans_200" placeholder="Identifiant client" required="required" name="id"></div>
								</div>
								<div class="col-lg-6">
									<div class="input_item"><input type="text" class="contact_input trans_200" placeholder="Mot de passe" required="required" name="mdp"></div>
								</div>
							</div>
							<button class="contact_button button" type="submit">Valider<span></span></button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2">
					<div class="footer_container">
						<div class="footer_content">
							<div class="footer_logo">
								<a href="#">
									<div class="logo d-flex flex-row align-items-center justify-content-center"><img src="images/dot.png" alt=""><div>Sport<span>fit</span></div></div>
								</a>
							</div>
							<nav class="footer_nav">
								<ul class="d-flex flex-sm-row flex-column align-items-sm-start align-items-center justify-content-center">
									<li class="active"><a href="accueil.jsp">Accueil</a></li>
									<li><a href="pInscription.jsp">Inscription</a></li>
									<li><a href="pSelectionPanier.jsp">Commander</a></li>
									<li><a href="pAuthentification.jsp">Connexion</a></li>
									<li><a href="about.jsp">À propos</a></li>
								</ul>
							</nav>
							<div class="copyright d-flex flex-row align-items-start justify-content-sm-end justify-content-center"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
						</div>
						<div class="footer_image text-center"><img src="images/footer.png" alt=""></div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap-4.1.2/popper.js"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/contact.js"></script>
</body>
</html>