<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    	<meta name="description" content="">
    	<meta name="author" content="">
		<title>Messaggi - Nefrapp</title>
       	 	
       	 <%@include file="./includes/cssLinks.jsp"%>
       	 <link href="./css/custom-rules.css" rel=stylesheet>
   		<link rel="stylesheet" type="text/css" href="./css/bootstrap-datepicker.css" >  		
	</head>
	
	<body id="page-top">	
		<!-- Page Wrapper -->
	    <div id="wrapper">
			<%@include file="../includes/sidebar.jsp" %>		
	
	        <!-- Content Wrapper -->
	        <div id="content-wrapper" class="d-flex flex-column">
	
	            <!-- Main Content -->
	            <div id="content">
					<%@include file="../includes/header.jsp" %>
	
	
	                <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <c:set var="messaggio" value='${requestScope["messaggio"]}'/>
          <h1 class="h3 mb-2 text-gray-800">Messaggi ricevuti: </h1>
          
          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            
            <div class="card-body">
              <div class="table-responsive" id="tablecont">
                <table class="table" id="dataTable" width="100%" cellspacing="0">
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
                  	
                  	
                  	
                  	<!-- Inizio iterazione dei risultati ottenuti dalla servlet) -->

             		<c:forEach items="${messaggio}" var="item">
             		<tr>
             		<c:set var="cognome" value="${requestScope[item.codiceFiscaleMittente]}" />
                    <c:if test="${not item.visualizzato}"><tr class = "clickable-row riga-messaggio" style="font-weight: bolder" data-href='./messaggio?operazione=visualizzaMessaggio&cognome=${cognome}&idMessaggio=${item.idMessaggio}'></c:if>
                    <c:if test="${item.visualizzato}"><tr class = "clickable-row riga-messaggio" data-href='./messaggio?operazione=visualizzaMessaggio&cognome=${cognome}&idMessaggio=${item.idMessaggio}'></c:if>
                      <c:if test="${isPaziente}">
                      	<td width = "300px">Dott. ${cognome}</td>
                      </c:if>
						<c:if test="${isMedico}">
                      	<td width = "300px">${cognome}</td>
                      </c:if>
                      <td>${item.oggetto}</td>
                      <td>${item.dataFormattata}</td>
                      <td>${item.oraFormattata}</td>
                    </tr>	</c:forEach>
                  </tbody>
                 </table>
  			</div>
            </div>
          </div>

        </div>
	                <!-- /.container-fluid -->
	
	            </div>
	            <!-- End of Main Content -->
				<%@include file="../includes/footer.jsp" %>	
	        </div>
	        <!-- End of Content Wrapper -->
	
	    </div>
	    <!-- End of Page Wrapper -->
	
	    <!-- Scroll to Top Button-->
	    <a class="scroll-to-top rounded" href="#page-top">
	        <i class="fas fa-angle-up"></i>
	    </a>
	   	
	</body>
	<%@include file="./includes/scripts.jsp"%>
	<script type="text/javascript" src="./js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="./js/messaggi.js"></script>
	
</html>
