<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="nsf" uri="/WEB-INF/tags/nsf.tld"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html class="" lang="es">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="resources/font/flaticon.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/style_header.css">
<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/style_registro.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
</head>

<body class="background-white">


	<header id="navbar" class="site-header" name="top">
		<div id="prebar" class="site-header--preheader">
			<div class="container collapsed--l"></div>

		</div>
		</div>

		<div id="margen" class="container collapsed--l mt36">
			<a href="https://www.fomento.gob.es/"
				class="enaire__logo--ministerio" title="Ministerio de Fomento"
				target="_blank"> <img src="resources/img/MFOM.Gob.Web.svg"
				alt="Ministerio de Fomento">
			</a> <a href="https://www.enaire.es/home" class="enaire__logo"> <img
				src="resources/img/logo_enaire_white.svg" alt="ENAIRE"
				title="ENAIRE">
			</a>

		</div>
	</header>






	<main class="site-container" id="site-container">
	<div id="bannerhome">
		<section class="banner-home interior">
			<div class="banner-home banner__image">
		</section>
	</div>

	<div class="row d-flex justify-content-between">


		<div class="col-lg-7 col-md-11 container_registro">
			<form action="<%=request.getContextPath()%>/altaExterno"
				method="post">
				<div class="row d-flex justify-content-end">
					<div class="col-lg-7 col-md-10">
						<h2>Crear una cuenta</h2>
						<p class="mt36">
							Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
							nonumy eirmod tempor invidunt ut labore et dolore magna.<br>
							<b>Completa todos los campos, por favor.</b>
						</p>




						<div class="form-group d-flex mt36">
							<div class="form-check mr20">
								<label class="customradio"> <input
									class="form-check-input" type="radio" name="tipouser"
									value="DNI" checked="checked"><span class="checkmark"></span>
									<label class="form-check-label"> Particular </label>
								</label>

							</div>
							<div class="form-check">
								<label class="customradio"> <input
									class="form-check-input" type="radio" name="tipouser"
									value="CIF"><span class="checkmark"></span> <label
									class="form-check-label"> Empresa </label>
								</label>
							</div>
						</div>

						<div class="form-group">
							<label id="identificacion"></label> <input type="text"
								class="form-control" id="nif" aria-describedby="NIF"
								maxlength="9" required placeholder="" name="nif"> <small
								class="form-text text-muted"></small>
						</div>


						<div class="form-group">
							<label id="tiponombre">Nombre </label> <input name="nombre"
								type="text" class="form-control" id="nombre" maxlength="50"
								required aria-describedby="nombre" placeholder="*Introduce tu nombre">
						</div>

						<div class="form-group">
							<label id="tiponombre">Apellidos</label> <input name="apellidos"
								type="text" class="form-control" id="apellidos" maxlength="50"
								required aria-describedby="apellidos" placeholder="*Introduce tus apellidos">
						</div>

						<div class="form-group">
							<label id="tiponombre">Teléfono</label> <input name="telefono"
								type="text" class="form-control" id="telefono" maxlength="12"
								required aria-describedby="telefono" placeholder="*Introduce tu teléfono">
						</div>

						<div class="form-group icono">
							<label>Email de contacto</label> <input name="user" type="email"
								class="form-control " id="email" required
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
								placeholder="*Introduce tu email"> <span
								class="icon-placeholder flaticon-e-mail-envelope"></span>
						</div>

						<div class="form-group icono">
							<label>Confirma email de contacto</label> <input type="email"
								class="form-control" id="emailok"
								placeholder="*Introduce tu email" required
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"> <span
								class="icon-placeholder flaticon-e-mail-envelope"></span>
						</div>

						<div class="form-group">
							<label>Contraseña</label> <input type="password"
								class="form-control" id="password" name="password" minlength="6"
								maxlength="9" required placeholder="*Introduce tu contraseña">
						</div>

						<div class="form-group">
							<label>Confirma tu contraseña</label> <input type="password"
								class="form-control" id="password1" name="password1" minlength="6"
								maxlength="9" required
								placeholder="*Vuelve a introducir la contraseña">
						</div>

						<div class="form-group">
							<label>Tipo de usuario externo</label> <select
								class="form-control" id="userselector">
								<option value="normal">Normal</option>
								<option value="art3">Especial FFCCS</option>
								<option value="hexa">Especial AENA</option>
							</select>
						</div>


						<a href="#" data-toggle="modal" data-target="#modal1" id="art3"
							class="tiposespeciales mb15 dnone">Especial Art3</a> <a href="#"
							data-toggle="modal" data-target="#modal2" id="hexa"
							class="tiposespeciales mb15 dnone">Especial HEXA</a>

						<!-- Modal Artículo 3 -->
						<div class="modal fade" id="modal1" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLongTitle" aria-hidden="true">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content ">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">Activación
											como usuarios especiales Art 3.</h5>
										<button type="button" class="close" data-dismiss="modal">
											<img src="resources/img/equis_blue.svg">

										</button>
									</div>
									<div class="modal-body">
										<p>La activación como usuarios especiales Art 3. estárá
											sujeto a la revisión de un Administrador de la aplicación.</p>
										<p>Real Decreto 1036/2017, de 15 de diciembre. Artículo 3.
											Exclusiones parciales.1. Para la realización de operaciones
											aéreas especializadas de formación práctica de pilotos
											remotos, a las organizaciones de producción que reúnan los
											requisitos previstos en el artículo 15.3 y 4, y a las
											organizaciones de formación, no les seráexigible lo dispuesto
											en los artículos 28 y 39.2. A las operaciones de policía
											atribuidas a las Fuerzas y Cuerpos de Seguridad porla Ley
											Orgánica 2/1986, de 13 de marzo, y normativa concordante, a
											las operaciones de aduanas, a las de vigilancia del tránsito
											viario realizadas directamente por la Dirección General de
											Tráfico, y a las operaciones realizadas por el Centro
											Nacionalde Inteligencia, únicamente les será de aplicación lo
											dispuesto en los capítulos I y II, estando en cuanto a la
											prohibición de sobrevuelo de las instalaciones prevista en el
											artículo 32 a las funciones que, en relación con dichas
											instalaciones, correspondan a las Fuerzas y Cuerpos de
											Seguridad, al Servicio de Vigilancia Aduanera, a la Dirección
											General de Tráfico, o al Centro Nacional de Inteligencia.</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-sm btn-primary"
											data-dismiss="modal">Cerrar</button>
									</div>
								</div>
							</div>
						</div>

						<!-- Modal HEXA -->
						<div class="modal fade" id="modal2" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLongTitle" aria-hidden="true">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content ">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLongTitle">Usuarios
											especiales HEXA</h5>
										<button type="button" class="close" data-dismiss="modal">
											<img src="resources/img/equis_blue.svg">
										</button>
									</div>
									<div class="modal-body">
										<p>La activación como usuarios especiales HEXA estárá
											sujeto a la revisión de un Administrador de la aplicación.

											Texto condiciones especiales EXA]</p>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-sm btn-primary"
											data-dismiss="modal">Cerrar</button>
									</div>
								</div>
							</div>
						</div>

						<p class="mt20">* Todos los campos son obligatorios</p>


						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input"
								id="terminos legales">
							<p>
								Acepto los <a href="#">términos y condiciones legales</a>
							</p>
						</div>

						<div class="form-group mt36">
							<p class="bot">
								Ya estoy registrado, <a href="index">Iniciar sesión</a>
							</p>
							<button type="submit" class="btn btn-primary registro der"
								name="enviar" value="Enviar">Crear cuenta</button>
						</div>


					</div>


				</div>
			</form>


		</div>

		<div class="col-lg-3 registo_contato ">
			<div class="row ">
				<div class="col-lg-12 boxcontacto ">
					<h3 class="header-title ">Contacto</h3>
					<p class="mt50">
						<span class="flaticon-e-mail-envelope"></span> <a
							href="mailto:info@eniare.es "> info@enaire.es</a>
					</p>
					<p>
						<span class="flaticon-telephone"></span> +34 955 755 055
					</p>
				</div>
			</div>
		</div>

	</div>

	<a class="button--icon scroll-up " href="#top" id="up"> <img
		src="resources/img/scroll_up.png "></a> </main>


	<script>
		var mybutton = document.getElementById("up");

		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
				mybutton.style.display = "block ";
			} else {
				mybutton.style.display = "none ";
			}
		}
	</script>


	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js "
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n "
		crossorigin="anonymous "></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js "
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo "
		crossorigin="anonymous "></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js "
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6 "
		crossorigin="anonymous "></script>
	<script
		src="https://unpkg.com/bootstrap-show-password@1.2.1/dist/bootstrap-show-password.min.js"></script>
	<script>
		$(function() {
			$('#password').password()
		})

		$(function() {
			$('#password2').password()
		})
	</script>



	<!-- VALIDACIÓN CONTRASEÑAS -->
	<script>
		$(document)
				.ready(
						function() {
							//variables
							var pass1 = $('[name=pass1]');
							var pass2 = $('[name=pass2]');

							var longitud = "La contraseña debe estar formada entre 6-9 carácteres";
							var negacion = "No coinciden las contraseñas";
							var vacio = "La contraseña no puede estar vacía";
							//oculto por defecto el elemento span
							var span = $('<span></span>').insertAfter(pass2);
							span.hide();
							//función que comprueba las dos contraseñas
							function coincidePassword() {
								var valor1 = pass1.val();
								var valor2 = pass2.val();
								//muestro el span
								span.show().removeClass();
								//condiciones dentro de la función
								if (valor1 != valor2) {
									span.text(negacion).addClass(
											'feedback-error');
									//$('#pass2').addClass('is-invalid');	
								}
								if (valor1.length == 0 || valor1 == "") {
									span.text(vacio).addClass('feedback-error');
								}
								if (valor1.length<6 || valor1.length>9) {
									span.text(longitud).addClass(
											'feedback-error');
								}

							}
							//ejecuto la función al soltar la tecla
							pass2.keyup(function() {
								coincidePassword();
							});
						});
	</script>

	<!-- SELECT y USER -->
	<script>
		$(document).ready(
				function() {
					$('#nombre').attr('placeholder',
							'*Introduce tu nombre y apellidos');
					$('#nif').attr('placeholder', '*Introduce tu NIF');
				});

		$('input:radio[name=tipouser]').filter('[value=dni]').prop('checked',
				true);
		$('#identificacion').text('DNI');
		//$('#tiponombre').text('Nombre completo');

		$('input[name=tipouser]').on(
				'click',
				function() {
					checkLabel = $('input:radio[name=tipouser]:checked').val();
					$('#identificacion').text(checkLabel);
					$('#tiponombre').text('Nombre completo');
					$('#nombre').attr('placeholder',
							'*Introduce tu nombre y apellidos');
					$('#nif').attr('placeholder', '*Introduce tu NIF');
					if (checkLabel === 'CIF') {
						$('#tiponombre').text('Empresa');
						$('#nombre').attr('placeholder',
								'*Introduce el nombre de empresa');
						$('#nif').attr('placeholder', '*Introduce el CIF');

					}
				});

		$(function() {
			$('#userselector').change(function() {
				$('.tiposespeciales').hide();
				$('#' + $(this).val()).show();
			});
		});
	</script>

	<!-- /SELECT y USER -->

	<!-- SCRIPTS CAMBIO ESTADO MENU -->
	<script>
		$(window).scroll(function() {
			if ($("#navbar ").offset().top > 56) {
				$("#navbar ").addClass("site-header--colored ");
				$("#prebar ").addClass("site-header--preheader--removed ");
				$("#margen ").addClass("mt0 ");
				$("#sb-search ").addClass("top3 ")
			} else {
				$("#navbar ").removeClass("site-header--colored ");
				$("#prebar ").removeClass("site-header--preheader--removed ");
				$("#margen ").removeClass("mt0 ");
				$("#sb-search ").removeClass("top3 ")
			}
		});
	</script>
</body>

</html>