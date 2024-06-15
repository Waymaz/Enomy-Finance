<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Investment | Enomy Finance</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/dash.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Bootstrap CSS -->
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous"/>
    	<style>
		.card {
		    border: none;
		    cursor: pointer;
		    border-radius: 15px; /* Add rounded corners */
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
		    transition: transform 0.3s ease-in-out;
		}
		
		.card:hover {
		    transform: scale(1.03); /* Add a slight scale effect on hover */
		}
		
		.card-title {
		    font-size: 1.25rem;
		    font-weight: bold;
		    margin-bottom: 0.5rem;
		    color: #333; /* Change text color to a dark shade */
		}
		
		.card-text {
		    font-size: 0.875rem;
		    color: #555; /* Change text color to a slightly lighter shade */
		}
		
		#investmentForm {
		    margin-top: 20px;
		    padding: 20px;
		    background-color: #f8f9fa;
		    border: 1px solid #dee2e6;
		    border-radius: 5px;
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		}
    </style>
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
				        <h1 class="mt-4">Investments</h1>
				        <ol class="breadcrumb mb-4">
				            <li class="breadcrumb-item active">See investments plans and more</li>
				        </ol>
				        <!-- Investment Cards -->
				        <div class="row">
				            <div class="col-lg-4 mb-4">
				                <div class="card bg-gradient-purple h-100">
				                    <div class="card-body">
				                        <h5 class="card-title text-dark">Basic Savings Plan</h5>
				                        <p class="card-text text-dark">Maximum investment per year: £20,000<br>Minimum monthly investment: £50<br>Predicted returns per year: 1.2% to 2.4%</p>
				                    </div>
				                </div>
				            </div>
				            <div class="col-lg-4 mb-4">
				                <div class="card bg-gradient-purple h-100">
				                    <div class="card-body">
				                        <h5 class="card-title text-dark">Savings Plan Plus</h5>
				                        <p class="card-text text-dark">Maximum investment per year: £30,000<br>Minimum monthly investment: £50<br>Minimum initial investment lump sum: £300<br>Predicted returns per year: 3% to 5.5%</p>
				                    </div>
				                </div>
				            </div>
				            <div class="col-lg-4 mb-4">
				                <div class="card bg-gradient-purple h-100">
				                    <div class="card-body">
				                        <h5 class="card-title text-dark">Managed Stock Investments</h5>
				                        <p class="card-text text-dark">Maximum investment per year: Unlimited<br>Minimum monthly investment: £150<br>Minimum initial investment lump sum: £1000<br>Predicted returns per year: 4% to 23%</p>
				                    </div>
				                </div>
				            </div>
				        </div>
				
				        <!-- Investment Form -->
						<form id="investmentForm">
						    <div class="mb-3">
						        <label for="initialInvestment" class="form-label">Initial Lump Sum to be Invested (£)</label>
						        <input type="number" class="form-control" id="initialInvestment" name="initialInvestment" required>
						    </div>
						
						    <div class="mb-3">
						        <label for="monthlyInvestment" class="form-label">Monthly Amount to be Invested (£)</label>
						        <input type="number" class="form-control" id="monthlyInvestment" name="monthlyInvestment" required>
						    </div>
						
						    <div class="mb-3">
						        <label for="investmentType" class="form-label">Type of Investment</label>
						        <select class="form-select" id="investmentType" name="investmentType" required>
						            <option value="basic">Basic Savings Plan</option>
						            <option value="savings">Savings Plan Plus</option>
						            <option value="stock">Managed Stock Investments</option>
						        </select>
						    </div>
						
						    <button type="button" class="btn btn-primary" onclick="calculateInvestment()">Calculate</button>
						</form>
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
		    function calculateInvestment() {
		        // Fetch values from form fields
		        const initialInvestment = parseFloat(document.getElementById('initialInvestment').value) || 0;
		        const monthlyInvestment = parseFloat(document.getElementById('monthlyInvestment').value) || 0;
		        const investmentType = document.getElementById('investmentType').value;
		
		        // Perform calculations (you can customize this part based on your investment logic)
		        const oneYearReturn = calculateReturn(initialInvestment, monthlyInvestment, 12, investmentType);
		        const fiveYearReturn = calculateReturn(initialInvestment, monthlyInvestment, 60, investmentType);
		        const tenYearReturn = calculateReturn(initialInvestment, monthlyInvestment, 120, investmentType);
		
		        // Display or process the calculated values as needed
		        console.log('1 Year Return:', oneYearReturn);
		        console.log('5 Year Return:', fiveYearReturn);
		        console.log('10 Year Return:', tenYearReturn);
		    }
		
		    function calculateReturn(initialInvestment, monthlyInvestment, months, investmentType) {
		        // Your investment calculation logic goes here
		        // This is a placeholder, replace it with your actual calculation
		        return (initialInvestment + (monthlyInvestment * months / 2)) * 1.05; // Sample calculation
		    }
		</script>
    </body>
</html>