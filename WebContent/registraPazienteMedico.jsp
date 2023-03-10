<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Registrazione Paziente - Nefrapp</title>

<%@include file="./includes/cssLinks.jsp"%>

<!-- Script per la registrazione -->

<link rel="stylesheet" type="text/css"
	href="./css/bootstrap-datepicker.css">
<!--  aggiungere i controlli per questo form -->

</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<%@include file="../includes/sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				<%@include file="../includes/header.jsp"%>


				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div class="my-5">
						<div class="card-body p-0 d-flex justify-content-center">
							<!-- Nested Row within Card Body -->
							<div class="row">
								<div class="col-sm-12">
									<div class="card o-hidden border-0 shadow-sm p-5">
										<div class="text-center">
											<h1 class="h4 text-gray-900 mb-4">Registra Paziente</h1>
										</div>
										<form class="user" method="post"
											action="./GestioneRegistrazione?operazione=registraPazienteMedico">
											<input type="hidden" id="notifica"
												value="${requestScope.notifica }">
											<div class="form-group row col-lg-12">
												Codice Fiscale: <input type="text"
													class="form-control form-control-user" name="codiceFiscale"
													id="codiceFiscale" placeholder="Codice fiscale"
													required="required" >
											</div>
											<div class="form-group row">
												<div class="col-sm-6 mb-3 mb-sm-0">
													Nome: <input type="text"
														class="form-control form-control-user" name="nome"
														id="nome" placeholder="Nome" required="required" >
												</div>
												<div class="col-sm-6">
													Cognome: <input type="text"
														class="form-control form-control-user" name="cognome"
														id="cognome" placeholder="Cognome" required="required"
														>
												</div>
											</div>
											<div class="form-group row" id="sesso">
												<div class="col-lg-4 col-mb-12 col-sm-4">Sesso:</div>
												<div class="col-lg-4 col-mb-12 col-sm-12">
													<input type="radio" name="sesso" value="M"
														checked="checked" id="sessoM"> Maschio
												</div>
												<div class="col-lg-4 col-mb-12 col-sm-12">
													<input type="radio" name="sesso" value="F" id="sessoF">
													Femmina
												</div>
												<br>
											</div>
											<div class="form-group row col-lg-12">
												Data di nascita: <input type="text"
													class="form-control form-control-user" id="dataDiNascita"
													name="dataDiNascita" placeholder="DD-MM-YYYY"
													autocomplete="off">
											</div>
											<div class="form-group row col-lg-12">
												Luogo di Nascita: <input type="text"
													class="form-control form-control-user"
													name="luogoDiNascita" id="luogoDiNascita"
													placeholder="Luogo di nascita" required="required" >
											</div>
											<div class="form-group row col-lg-12">
												Residenza: <input type="text"
													class="form-control form-control-user" name="residenza"
													id="residenza" placeholder="Residenza" required="required"
												>
											</div>
											<div class="form-group row col-lg-12">
												Email: <input type="email"
													class="form-control form-control-user" name="email"
													id="email" placeholder="Email" >
											</div>
											<div class="form-group row col-lg-12">
												Password: <input type="password"
													class="form-control form-control-user" name="password"
													id="password" placeholder="Password" required="required"
													>
											</div>
											<div class="form-group row">
												<div class="col-lg-4 col-mb-12 col-sm-4">Paziente gi??
													registrato:</div>
												<div class="col-lg-4 col-mb-12 col-sm-12">
													<input type="radio" name="registrato" value="Si"
														id="isRegistrato"> Si
												</div>
												<div class="col-lg-4 col-mb-12 col-sm-12">
													<input type="radio" name="registrato" value="No"
														checked="checked" id="notRegistrato"> No
												</div>
												<br>
											</div>

											<div class="col-sm-5 sm-12"
												style="margin-left: auto; margin-right: auto; display: block; margin-top: 22%; margin-bottom: 0%">
												<button class="btn btn-primary btn-user btn-block"
													id="registrazioneButton">Registra Paziente</button>
											</div>
										</form>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- End of Main Content -->
		<%@include file="../includes/footer.jsp"%>
	</div>


	<!-- End of Content Wrapper -->

	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">??</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
</body>
<%@include file="./includes/scripts.jsp"%>
<script src="js/ParameterControl.js"></script>
<script src="js/registrazione.js"></script>


<script type="text/javascript" src="./js/bootstrap-datepicker.js"></script>
<script src="./js/dataPicker.js"></script>

</html>