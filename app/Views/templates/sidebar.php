<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav sidebar sidebar-dark accordion hero" id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<!--i class="fas fa-laugh-wink"></!--i-->
				</div>
				SimpleThink-Apps
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item <?= isset($mSelectHome) ? $mSelectHome : '' ?>">
				<a class="side-bar nav-link " href="<?= base_url('home/index') ?>">
					<i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Dashboard</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">
				Transaction
			</div>


			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item <?= isset($mSelectTS) ? $mSelectTS : '' ?>">
				<a class="side-bar nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTS"
					aria-expanded="true" aria-controls="collapseTS">
					<i class="fas fa-fw fa-cog"></i>
					<span>Time Sheet Database</span>
				</a>
				<div id="collapseTS" class="collapse <?= isset($mSubTS) ? $mSubTS : '' ?>" aria-labelledby="headingTS" data-parent="#accordionSidebar">
					<div class="bg-transparent py-2 mt-2 mb-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Time Sheets:</h6>
						<a class="collapse-item <?= isset($mSelectTS) ? $mSelectTS : '' ?>" href="<?= base_url('home/timesheet') ?>">Time Sheet Entry</a>
						<a class="collapse-item" href="TS-border.html">Borders</a>
						<a class="collapse-item" href="TS-animation.html">Animations</a>
						<a class="collapse-item" href="TS-other.html">Other</a>
					</div>
				</div>
			</li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item">
				<a class="side-bar nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
					aria-expanded="true" aria-controls="collapseUtilities">
					<i class="fas fa-fw fa-wrench"></i>
					<span>Utilities</span>
				</a>
				<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-transparent py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="utilities-color.html">Colors</a>
						<a class="collapse-item" href="utilities-border.html">Borders</a>
						<a class="collapse-item" href="utilities-animation.html">Animations</a>
						<a class="collapse-item" href="utilities-other.html">Other</a>
					</div>
				</div>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">
				Master Database
			</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item">
				<a class="side-bar nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
					aria-controls="collapsePages">
					<i class="fas fa-fw fa-folder"></i>
					<span>Pages</span>
				</a>
				<div id="collapsePages" class="collapse" aria-labelledby="headingPages"
					data-parent="#accordionSidebar">
					<div class="bg-transparent py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="login.html">Login</a>
						<a class="collapse-item" href="register.html">Register</a>
						<a class="collapse-item" href="forgot-password.html">Forgot Password</a>
						<div class="collapse-divider"></div>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a>
						<a class="collapse-item" href="blank.html">Blank Page</a>
					</div>
				</div>
			</li>

			<!-- Nav Item - Charts -->
			<li class="nav-item">
				<a class="side-bar nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i>
					<span>Charts</span></a>
			</li>

			<!-- Nav Item - Tables -->
			<li class="nav-item">
				<a class="side-bar nav-link" href="tables.html">
					<i class="fas fa-fw fa-table"></i>
					<span>Tables</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->