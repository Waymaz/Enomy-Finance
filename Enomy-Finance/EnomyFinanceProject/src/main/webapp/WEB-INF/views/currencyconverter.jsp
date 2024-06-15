<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html> <html lang="en"> <head> <meta charset="utf-8" /> <meta http-equiv="X-UA-Compatible" content="IE=edge" /> <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" /> <meta name="description" content="" /> <meta name="author" content="" /> <title>Currency | Enomy Finance</title> <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" /> <link href="css/dash.css" rel="stylesheet" /> <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script> <!-- Bootstrap CSS --> <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous"/>
Edit
Download
Copy code
</head>
<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="dashboard">Enomy Finance</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
            </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#!">Settings</a></li>
                    <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                    <li><hr class="dropdown-divider" /></li>
                    <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#signOutModal">Sign out</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Core</div>
                        <a class="nav-link" href="dashboard">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                            Dashboard
                        </a>
                        <div class="sb-sidenav-menu-heading">Interface</div>
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Layouts
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                            </nav>
                        </div>
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                            <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                            Pages
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    Authentication
                                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                </a>
                                <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="login.html">Login</a>
                                        <a class="nav-link" href="register.html">Register</a>
                                        <a class="nav-link" href="password.html">Forgot Password</a>
                                    </nav>
                                </div>
                                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                    Error
                                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                </a>
                                <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                    <nav class="sb-sidenav-menu-nested nav">
                                        <a class="nav-link" href="401.html">401 Page</a>
                                        <a class="nav-link" href="404.html">404 Page</a>
                                        <a class="nav-link" href="500.html">500 Page</a>
                                    </nav>
                                </div>	
                            </nav>
                        </div>
					<div class="sb-sidenav-menu-heading">Services</div>
							<a class="nav-link" href="investment">
							    <div class="sb-nav-link-icon"><i class="fa-solid fa-hand-holding-dollar"></i></div>
							    <span class="nav-link-text">Investment</span>
							</a>
							<a class="nav-link" href="currencyconverter">
							    <div class="sb-nav-link-icon"><i class="fa-solid fa-money-bill-transfer"></i></div>
							    <span class="nav-link-text">Currency Converter</span>
							</a>
						</div>
                	</div>
			    <div class="sb-sidenav-footer">
			        <div class="small">Signed in as:</div>
					<span><c:out value="${signedInUserName}" /></span>
			    </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
		    <main>
		        <div class="container-fluid px-4">
		            <h1 class="mt-4">Currency Converter</h1>
		            <ol class="breadcrumb mb-4">
		                <li class="breadcrumb-item active">Convert currency from around the world</li>
		            </ol>
		            <!-- Main content of the page-->
		            <div class="row">
		                <div class="col-lg-6">
		                    <div class="card">
		                        <div class="card-body">
		                            <h5 class="card-title">Currency Conversion</h5>
		                            <!-- Guide for users -->
		                            <p class="text-muted">Please enter the amount, select the source currency, target currency, and click the "Convert" button.</p>
		                            <!-- Form for currency conversion -->
		                            <form:form action="currencyconverter" method="post">
		                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		                                <div class="mb-3">
		                                    <label for="amount" class="form-label">Amount</label>
		                                    <input type="number" class="form-control" id="amount" name="amount" min="300" max="5000" required />
		                                </div>
		                                <div class="mb-3">
		                                    <label for="sourceCurrency" class="form-label">Source Currency</label>
		                                    <select class="form-select" id="sourceCurrency" name="sourceCurrency" required>		                                        			                                
			                                    <!-- Add options for source currencies -->
			                                    <option value="USD">USD</option>
			                                    <option value="EUR">EUR</option>
			                                    <option value="JPY">JPY</option>
			                                    <option value="BRL">BRL</option>
			                                    <option value="GBP">GBP</option>
			                                    <option value="TRY">TRY</option>
			                                    <!-- Add other source currencies -->
		                                    </select>
		                                </div>
		                                <div class="mb-3">
		                                    <label for="targetCurrency" class="form-label">Target Currency</label>
		                                    <select class="form-select" id="targetCurrency" name="targetCurrency" required>
			                                    <!-- Add options for source currencies -->
			                                    <option value="USD">USD</option>
			                                    <option value="EUR">EUR</option>
			                                    <option value="JPY">JPY</option>
			                                    <option value="BRL">BRL</option>
			                                    <option value="GBP">GBP</option>
			                                    <option value="TRY">TRY</option>
			                                    <!-- Add other source currencies -->
		                                    </select>
		                                </div>
		                                <!-- Convert button initially visible -->
		                                <button type="submit" id="convertButton" class="btn btn-primary">Convert</button>
		                            </form:form>
			                    </div>
			                </div>
			            </div>
			            <!-- Add other content as needed -->
			            <!-- Display conversion result outside the form -->
						    <div class="col-lg-6" id="resultSection" style="display: none;">
						        <div class="card">
						            <div class="card-body">
						                <h5 class="card-title">Conversion Result</h5>
						                <!-- Display conversion result -->
						                <p>Converted Amount: <span id="convertedAmount"></span> <span id="targetCurrencyDisplay"></span></p>
						                <p>Fee: <span id="fee"></span> <span id="targetCurrencyFee"></span></p>
						                <p>Total Balance: <span id="totalBalance"></span> <span id="targetCurrencyBalance"></span></p>
						                <p style="color: green;" id="successMessage"></p>
						                
						          		<!-- Convert Again button -->
						        		<a href="currencyconverter"><button style="display:none" id="convertAgainButton" class="btn btn-primary">Convert Again</button></a>
						            </div>
						        </div>
						    </div>
						</div>   
					<!-- Table displaying initial currency amount and fee -->
					<div class="row mt-4">
					    <div class="col-lg-6">
					        <h5 class="mb-3">Initial Currency Amount and Fee</h5>
					        <table class="table">
					            <thead>
					                <tr>
					                    <th scope="col">Initial Currency Amount</th>
					                    <th scope="col">Fee</th>
					                </tr>
					            </thead>
					            <tbody>
					                <tr>
					                    <td>Up to 500</td>
					                    <td>3.5%</td>
					                </tr>
					                <tr>
					                    <td>Over 500</td>
					                    <td>2.7%</td>
					                </tr>
					                <tr>
					                    <td>Over 1500</td>
					                    <td>2.0%</td>
					                </tr>
					                <tr>
					                    <td>Over 2500</td>
					                    <td>1.5%</td>
					                </tr>
					            </tbody>
					        </table>
					    </div>
					</div>
			    </div>
			</main>
                              
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Enomy Finance 2024</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
   
     <!-- Modal for Sign Out Confirmation -->
	<div class="modal fade" id="signOutModal" tabindex="-1" aria-labelledby="signOutModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="signOutModalLabel">Sign Out Confirmation</h5>
	                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	            </div>
	            <div class="modal-body">
	                <p>Do you really want to sign out?</p>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
	                <a id="signOutButton" class="btn btn-danger" href="<c:url value='/' />">Sign Out</a>
	            </div>
	        </div>
	    </div>
	</div>
		    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/dashboard.js"></script>
    <script src="js/datatablesDash.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="assets/demo/chart-area-demo.js"></script>
    <script src="assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
    
    <script>
        function showConversionResult() {
            // Display the result section
            document.getElementById("resultSection").style.display = "block";

            // Set the values in the result section
            document.getElementById("convertedAmount").innerText = '<%= request.getAttribute("convertedAmount") %>';
            document.getElementById("fee").innerText = '<%= request.getAttribute("fee") %>';
            document.getElementById("totalBalance").innerText = '<%= request.getAttribute("totalBalance") %>';
            document.getElementById("targetCurrencyDisplay").innerText = '<%= request.getAttribute("targetCurrency") %>';
            document.getElementById("targetCurrencyFee").innerText = '<%= request.getAttribute("targetCurrency") %>';
            document.getElementById("targetCurrencyBalance").innerText = '<%= request.getAttribute("targetCurrency") %>';
            document.getElementById("successMessage").innerText = '<%= request.getAttribute("successMessage") %>';

            // Hide the convert button after conversion
            document.getElementById("convertButton").style.display = "none";
            // Show the "Convert Again" button
            document.getElementById("convertAgainButton").style.display = "block";
        }

        function convertAgain() {
            // Hide the result section
            document.getElementById("resultSection").style.display = "none";
            // Show the convert button
            document.getElementById("convertButton").style.display = "block";
            // Hide the "Convert Again" button
            document.getElementById("convertAgainButton").style.display = "none";
        }

        // Check if the conversion result should be displayed
        var showConversionResultVar = '${showConversionResult}';
        if (showConversionResultVar === 'true') {
            showConversionResult();
        }
    </script>
	
</body>
</html>