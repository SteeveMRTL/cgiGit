<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>SportFIT</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="SportFIT template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
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
								<li class="active"><a href="accueil.jsp">Accueil</a></li>
								<li><a href="pInscription.jsp">Inscription</a></li>
								<li><a href="pSelectionPanier.jsp">Commander</a></li>
								<li><a href="pAuthentification.jsp">Connexion</a></li>
								<li><a href="about.jsp">� propos</a></li>
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
							non connect�
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

	<!-- Home -->

	<div class="home">
		<div class="background_image" style="background-image:url(images/index.jpg)"></div>
		<div class="overlay"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center">
							<div class="home_title">Le sport facile</div>
							<div class="home_subtitle">Crossfit, Football, Escrime, Fitness & plus</div>
							<div class="button home_button ml-auto mr-auto"><a href="pInscription.jsp">S'inscrire</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Boxes -->

	<div class="boxes">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="boxes_container d-flex flex-lg-row flex-column align-items-start justify-content-start">
						
						<!-- Box -->
						<div class="box">
							<div class="box_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_1.png" alt=""></div>
							<div class="box_title">Crossfit</div>
							<div class="box_text">
								<p>un esprit sain dans un corps sain ! Le crossfit vous permet d'assainir tout votre corps en une seule activit�.</p>
							</div>
							<div class="box_link_container">
								<a href="#"><div class="box_link d-flex flex-column align-items-center justify-content-center trans_200"><div>+</div></div></a>
							</div>
						</div>

						<!-- Box -->
						<div class="box">
							<div class="box_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_2.png" alt=""></div>
							<div class="box_title">Natation</div>
							<div class="box_text">
								<p>Une excellente mani�re de travailler le cardio, la base de tous les sports, tout en pr�servant vos articulations.</p>
							</div>
							<div class="box_link_container">
								<a href="#"><div class="box_link d-flex flex-column align-items-center justify-content-center trans_200"><div>+</div></div></a>
							</div>
						</div>

						<!-- Box -->
						<div class="box">
							<div class="box_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_3.png" alt=""></div>
							<div class="box_title">Conseil alimentation</div>
							<div class="box_text">
								<p>Une bonne acitivit� physique br�le beaucoup de calories. Nos conseillers vous aideront � couvrir vos besoins. </p>
							</div>
							<div class="box_link_container">
								<a href="#"><div class="box_link d-flex flex-column align-items-center justify-content-center trans_200"><div>+</div></div></a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- About -->

	<div class="about">
		<div class="container about_container">
			<div class="row">
				<div class="col-lg-6">
					<div class="about_content">
						<div class="section_title_container">
							<div class="section_subtitle">bienvenue sur sportfit</div>
							<div class="section_title">D�couvrez <span>Sportfit</span></div>
						</div>
						<div class="text_highlight">SportFIT abaisse les barri�res entre vous et le sport.</div>
						<div class="about_text">
								<p>� une heure o� chacun se pr�occupe de sa sant�, faire du sport est l'une des meilleures d�cisions que vous puissiez prendre.<br>
								Pourtant il est parfois difficile de s'inscrire � plus d'une activit� sportive, ce qui nous fait repousser � demain nos inscriptions. Sportfit propose une plateforme centralis�e de gestion de vos abonnements sportifs, ainsi qu'un suivi personnalis�. <br>
								Choisir vos sports devient aussi facile que de commander des burgers dans un fast food.</p>
						</div>
						<div class="button about_button"><a href="pInscription.jsp">S'inscrire</a></div>
					</div>
				</div>
			</div>
		</div>
		<div class="about_background">
			<div class="container fill_height">
				<div class="row fill_height">
					<div class="col-lg-6 offset-lg-6 fill_height">
						<div class="about_image"><img src="images/a1.png" alt=""></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Testimonials -->

	<div class="testimonials">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/testimonials.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section_title_container">
						<div class="section_subtitle">bienvenue sur sportfit</div>
						<div class="section_title">T�moignages</div>
					</div>

					<!-- Testimonial -->
					<div class="test test_1 d-flex flex-row align-items-start justify-content-start">
						<div><div class="test_image"><img src="images/test_1.jpg" alt=""></div></div>
						<div class="test_content">
							<div class="test_name"><a href="#">Diane Smith</a></div>
							<div class="test_title">cliente</div>
							<div class="test_text">
								<p>Gr�ce � sportFIT je prends plus soin de mon corps sans me prendre la t�te. Seul b�mol : le beau gosse de Martinique qui nous entra�nait n'est pas c�libataire.</p>
							</div>
							<div class="rating rating_4 test_rating"><i></i><i></i><i></i><i></i><i></i></div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					
					<!-- Testimonial -->
					<div class="test d-flex flex-row align-items-start justify-content-start">
						<div><div class="test_image"><img src="images/test_2.jpg" alt=""></div></div>
						<div class="test_content">
							<div class="test_name"><a href="#">Artemis Smith</a></div>
							<div class="test_title">client</div>
							<div class="test_text">
								<p>SportFIT a chang� ma vie. J'h�sitais � me mettre au sport, gr�ce � la facilti� d'utilisation de SportFIT je m'y suis enfin mis. J'ai trouv� une femme gr�ce � mon regain d'assurance et mon corps beaucoup plus sain.</p>
							</div>
							<div class="rating rating_4 test_rating"><i></i><i></i><i></i><i></i><i></i></div>
						</div>
					</div>

					<!-- Testimonial -->
					<div class="test d-flex flex-row align-items-start justify-content-start">
						<div><div class="test_image"><img src="images/test_3.jpg" alt=""></div></div>
						<div class="test_content">
							<div class="test_name"><a href="#">Diana Smith</a></div>
							<div class="test_title">cliente</div>
							<div class="test_text">
								<p>�a faisait des ann�es que j'avais d�cid� de m'inscrire au judo et au crossfit, mais la difficult� de g�rer les deux inscriptions m'arr�tait avant m�me d'entrer dans la salle. SportFIT m'a permis de m'y mettre et j'adore �a.</p>
							</div>
							<div class="rating rating_4 test_rating"><i></i><i></i><i></i><i></i><i></i></div>
						</div>
					</div>

				</div>
			</div>
			<div class="row test_button_row">
				<div class="col text-center">
					<div class="button test_button"><a href="pInscription.jsp">S'inscrire</a></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Gallery -->

	<div class="gallery">
		
		<!-- Gallery Slider -->
		<div class="gallery_slider_container">
			<div class="owl-carousel owl-theme gallery_slider">
				
				<!-- Slide -->
				<div class="owl-item"><img src="images/gallery_3.jpg" alt=""></div>

				<!-- Slide -->
				<div class="owl-item"><img src="images/gallery_4.jpg" alt=""></div>

				<!-- Slide -->
				<div class="owl-item"><img src="images/gallery_5.jpg" alt=""></div>

				<!-- Slide -->
				<div class="owl-item"><img src="images/gallery_1.jpg" alt=""></div>

				<!-- Slide -->
				<div class="owl-item"><img src="images/gallery_2.jpg" alt=""></div>

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
									<li><a href="about.jsp">� propos</a></li>
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
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>