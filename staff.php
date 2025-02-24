<!DOCTYPE html>
<html>
<head>
	<title>Staff Page -Complaint Management System</title>
	<link rel="stylesheet" type="text/css" href="staff.css">
</head>
<body>
	<header>
		<div class="logo">
			<img src="logo.png" alt="CUEA Logo">
		</div>
		<div class="logout">
			<button>Logout</button>
		</div>
	</header>
	<main>
		<nav>
			<ul>
				<li><button>Manage Applications</button>
					<ul class="submenu">
						<li><a href="#">Pending Applications</a></li>
						<li><a href="#">Approved Applications</a></li>
						<li><a href="#">Declined Applications</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<section>
			<h2>Pending Applications</h2>
			<table>
				<thead>
					<tr>
						<th>Student Name</th>
						<th>Department</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>John Doe</td>
						<td>Computer Science</td>
						<td>Pending</td>
					</tr>
					<tr>
						<td>Jane Doe</td>
						<td>Accounting</td>
						<td>Pending</td>
					</tr>
				</tbody>
			</table>
		</section>
	</main>
</body>
</html>
