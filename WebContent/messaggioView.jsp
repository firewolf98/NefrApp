
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Messaggi - Nefrapp</title>
<%@include file="./includes/cssLinks.jsp"%>
<!-- DatePicker -->

<link rel="stylesheet" type="text/css"
	href="./css/bootstrap-datepicker.css">


</head>

<body id="page-top"
	onload="creaDownload('${messaggio.corpoAllegato}', '${messaggio.nomeAllegato}')">
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

					<!-- Page Heading -->
					<c:set var="messaggio" value='${requestScope["messaggio"]}' />
					<h1 class="h3 mb-2 text-gray-800">Messaggio ricevuto:</h1>


					<!-- DataTales Example -->
					<div class="card shadow mb-4">

						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Mittente</th>
											<th>Oggetto</th>
											<th>Data</th>
											<th>Ora</th>

											<!-- Possibile aggiunta di atri campi -->
										</tr>
									</thead>
									<tbody>
										<tr>
											<c:if test="${isPaziente}">
												<td>Dott. ${param['cognome']}</td>
											</c:if>
											<c:if test="${isMedico}">
												<td>${param['cognome']}</td>
											</c:if>
											<td>${messaggio.oggetto}</td>
											<td>${messaggio.dataFormattata}</td>
											<td>${messaggio.oraFormattata}</td>
										</tr>
									</tbody>
								</table>

								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Testo</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td>${messaggio.testo}</td>
										</tr>
									</tbody>
								</table>
								
								<a class="btn btn-primary float-right"
								href="./messaggio?operazione=caricaDestinatariMessaggio&destinatario=${messaggio.codiceFiscaleMittente}"
								role="button">Rispondi</a>
								<br><br><br><br>
								
								<table class="table" id="dataTable"	>
									<thead>
										<tr>
											<th colspan="2">Allegato</th>
										</tr>
									</thead>
									<c:if test="${messaggio.corpoAllegato!=null}">
										<tbody>
											<tr>
												<td style="border-style:hidden"><i class="fas fa-download"></i> &emsp; <a
													id="download" download="" href="">${messaggio.nomeAllegato}</a>
												</td>
												<td style="border-style:hidden"><a data-toggle="collapse" href="#imgcollapse"
													role="button" aria-expanded="false"
													aria-controls="multiCollapseExample1">Anteprima <i
														class="fas fa-arrow-down"></i></a>
													<div class="collapse" id="imgcollapse">
														<img class="img-fluid"
															src="data:image/jpeg;base64, ${messaggio.corpoAllegato}">
													</div></td>
											</tr>
										</tbody>
									</c:if>
								</table>
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

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<script type="text/javascript">
		
	</script>
</body>
<%@include file="./includes/scripts.jsp"%>
<script type="text/javascript" src="./js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="./js/messaggi.js"></script>

<script src="./js/dataPicker.js"></script>

</html>
