<%@page buffer="none" session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<cms:enable-ade />
<!DOCTYPE HTML>
<html>
	<head>
		<title>Helios by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="<cms:link>%(link.weak:/system/modules/extatus_base/resources/css/main.css:18d9c72d-458d-11e7-88d5-005056a55a2a)</cms:link>" />
	</head>
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">
o					<!-- Nav -->
					<cms:include file="%(link.weak:/system/modules/extatus_base/elements/main-nav.jsp"/>
				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2>Hi. You're looking at <strong>Helios</strong>.</h2>
						<p>
							A (free) responsive site template by <a href="http://html5up.net">HTML5 UP</a>.
							Built on <strong>skel</strong> and released under the <a href="http://html5up.net/license">CCA</a> license.
						</p>
					</header>
				</section>

			<!-- Carousel -->
				<section class="carousel">
					<div class="reel">

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic01.jpg:1985bdda-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Pulvinar sagittis congue</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic02.jpg:198c4d92-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Fermentum sagittis proin</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic03.jpg:199b8fe2-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Sed quis rhoncus placerat</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic04.jpg:19826276-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Ultrices urna sit lobortis</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic05.jpg:1998347e-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Varius magnis sollicitudin</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic01.jpg:1985bdda-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Pulvinar sagittis congue</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic02.jpg:198c4d92-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Fermentum sagittis proin</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic03.jpg:199b8fe2-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Sed quis rhoncus placerat</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic04.jpg:19826276-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Ultrices urna sit lobortis</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

						<article>
							<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic05.jpg:1998347e-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
							<header>
								<h3><a href="#">Varius magnis sollicitudin</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
						</article>

					</div>
				</section>

			<!-- Main -->
				<div class="wrapper style2">

					<article id="main" class="container special">
						<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic06.jpg:19717272-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
						<header>
							<h2><a href="#">Sed massa imperdiet magnis</a></h2>
							<p>
								Sociis aenean eu aenean mollis mollis facilisis primis ornare penatibus aenean. Cursus ac enim
								pulvinar curabitur morbi convallis. Lectus malesuada sed fermentum dolore amet.
							</p>
						</header>
						<p>
							Commodo id natoque malesuada sollicitudin elit suscipit. Curae suspendisse mauris posuere accumsan massa
							posuere lacus convallis tellus interdum. Amet nullam fringilla nibh nulla convallis ut venenatis purus
							sit arcu sociis. Nunc fermentum adipiscing tempor cursus nascetur adipiscing adipiscing. Primis aliquam
							mus lacinia lobortis phasellus suscipit. Fermentum lobortis non tristique ante proin sociis accumsan
							lobortis. Auctor etiam porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum
							consequat integer interdum integer purus sapien. Nibh eleifend nulla nascetur pharetra commodo mi augue
							interdum tellus. Ornare cursus augue feugiat sodales velit lorem. Semper elementum ullamcorper lacinia
							natoque aenean scelerisque.
						</p>
						<footer>
							<a href="#" class="button">Continue Reading</a>
						</footer>
					</article>

				</div>

			<!-- Features -->
				<div class="wrapper style1">

					<section id="features" class="container special">
						<header>
							<h2>Morbi ullamcorper et varius leo lacus</h2>
							<p>Ipsum volutpat consectetur orci metus consequat imperdiet duis integer semper magna.</p>
						</header>
						<div class="row">
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic07.jpg:1978293a-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
								<header>
									<h3><a href="#">Gravida aliquam penatibus</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic08.jpg:1939e7ae-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
								<header>
									<h3><a href="#">Sed quis rhoncus placerat</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic09.jpg:197b849e-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
								<header>
									<h3><a href="#">Magna laoreet et aliquam</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
						</div>
					</section>

				</div>

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">

							<!-- Tweets -->
								<section class="4u 12u(mobile)">
									<header>
										<h2 class="icon fa-twitter circled"><span class="label">Tweets</span></h2>
									</header>
									<ul class="divided">
										<li>
											<article class="tweet">
												Amet nullam fringilla nibh nulla convallis tique ante sociis accumsan.
												<span class="timestamp">5 minutes ago</span>
											</article>
										</li>
										<li>
											<article class="tweet">
												Hendrerit rutrum quisque.
												<span class="timestamp">30 minutes ago</span>
											</article>
										</li>
										<li>
											<article class="tweet">
												Curabitur donec nulla massa laoreet nibh. Lorem praesent montes.
												<span class="timestamp">3 hours ago</span>
											</article>
										</li>
										<li>
											<article class="tweet">
												Lacus natoque cras rhoncus curae dignissim ultricies. Convallis orci aliquet.
												<span class="timestamp">5 hours ago</span>
											</article>
										</li>
									</ul>
								</section>

							<!-- Posts -->
								<section class="4u 12u(mobile)">
									<header>
										<h2 class="icon fa-file circled"><span class="label">Posts</span></h2>
									</header>
									<ul class="divided">
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Nisl fermentum integer</a></h3>
												</header>
												<span class="timestamp">3 hours ago</span>
											</article>
										</li>
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Phasellus portitor lorem</a></h3>
												</header>
												<span class="timestamp">6 hours ago</span>
											</article>
										</li>
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Magna tempus consequat</a></h3>
												</header>
												<span class="timestamp">Yesterday</span>
											</article>
										</li>
										<li>
											<article class="post stub">
												<header>
													<h3><a href="#">Feugiat lorem ipsum</a></h3>
												</header>
												<span class="timestamp">2 days ago</span>
											</article>
										</li>
									</ul>
								</section>

							<!-- Photos -->
								<section class="4u 12u(mobile)">
									<header>
										<h2 class="icon fa-camera circled"><span class="label">Photos</span></h2>
									</header>
									<div class="row 25%">
										<div class="6u">
											<a href="#" class="image fit"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic10.jpg:1974cdd6-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
										</div>
										<div class="6u$">
											<a href="#" class="image fit"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic11.jpg:1988cb1e-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
										</div>
										<div class="6u">
											<a href="#" class="image fit"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic12.jpg:199463ea-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
										</div>
										<div class="6u$">
											<a href="#" class="image fit"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic13.jpg:18f4c856-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
										</div>
										<div class="6u">
											<a href="#" class="image fit"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic14.jpg:197e91e2-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
										</div>
										<div class="6u$">
											<a href="#" class="image fit"><img src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/images/pic15.jpg:19906c46-458d-11e7-88d5-005056a55a2a)</cms:link>" alt="" /></a>
										</div>
									</div>
								</section>

						</div>
						<hr />
						<div class="row">
							<div class="12u">

								<!-- Contact -->
									<section class="contact">
										<header>
											<h3>Nisl turpis nascetur interdum?</h3>
										</header>
										<p>Urna nisl non quis interdum mus ornare ridiculus egestas ridiculus lobortis vivamus tempor aliquet.</p>
										<ul class="icons">
											<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
											<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
											<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
											<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
											<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
											<li><a href="#" class="icon fa-linkedin"><span class="label">Linkedin</span></a></li>
										</ul>
									</section>

								<!-- Copyright -->
									<div class="copyright">
										<ul class="menu">
											<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
										</ul>
									</div>

							</div>

						</div>
					</div>
				</div>

		</div>

		<!-- Scripts -->
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/jquery.min.js:189f07fc-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/jquery.dropotron.min.js:18a3e9ff-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/jquery.scrolly.min.js:184d6572-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/jquery.onvisible.min.js:1850c0d5-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/skel.min.js:18549168-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/util.js:18a76c72-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>
			<script src="<cms:link>%(link.weak:/system/modules/extatus_base/resources/js/main.js:189a25f9-458d-11e7-88d5-005056a55a2a)</cms:link>"></script>

	</body>
</html>