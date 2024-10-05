<!DOCTYPE html>
<html>
<head>
	<title>Submit a Complaint</title>
    <link rel="stylesheet" href="style.css">
    <style>
    .marquee {
        width: 100%;
        overflow: hidden;
        white-space: nowrap;
        animation: marquee 25s linear infinite;
    }
    .marquee span {
        display: inline-block;
        padding-left: 100%;
        text-indent: 0;
        animation: marquee 25s linear infinite;
    }
    @keyframes marquee {
        0% {
            transform: translateX(0%);
        }
        100% {
            transform: translateX(-100%);
        }
    }
</style>
</head>
<body>
<div class="marquee">
    <span>&copy; The Catholic University of East Africa, Complaint Management System.</span>
</div>
	<header>
		<h1>Complaint Management System</h1>
	</header>
	<nav>
		<ul>
			<li><a href="AdminLogin.php">Admin Login</a></li>
            <li><a href="StudentRegistration.php">Register Student</a></li>	
            <li><a href="StudentLogin.php">Student Login</a></li>      
			<li><a href="Complaint.php">Submit a Complaint</a></li>			
		</ul>
	</nav>
	<section>
		<h1>Add a Complaint</h1>

        <form>
            <label>Admission Number:</label>
            <input type="number" name="admission_number" required><br><br>

			<label for="current_semester">Current Semester:</label>
			<select id="current_semester" required>

                <option value="product">January - April</option>
                <option value="product">May - August</option>
                <option value="product">September - December</option>
                </select><br><br>		
		</form><br>

		<form>
			<label for="complaint_type">Complaint Type:</label>
			<select id="complaint_type" required>
                <option value="product">Results/ Missing Marks</option>
                <option value="service">University Policies/Services</option>
                <option value="service">ODEL Platform/ Student Portal Issues</option>
                <option value="product">University Products</option>				               
                <option value="product">Staff</option>
                <option value="product">Non-Academic Staff</option>
				<option value="service">Finance/Fees</option>
               	<option value="service">Graduation Clearance</option>
                <option value="product">Semester Registration</option>
                <option value="product">Adding Units/Dropping Units</option>
                <option value="product">Library</option>
				<option value="product">Complaint from the Public</option>
                <option value="product">Other Reason; Specify in Description</option>

			</select><br><br>
			<label for="complaint_desc">Complaint Description:</label><br>
			<textarea id="complaint_desc" rows="5" cols="50" required></textarea><br><br>
			<input type="submit" value="Submit">
		</form>
	</section>
	<footer style="position: fixed; bottom: 0; width: 100%;">
    <p>&copy; The Catholic University of East Africa</p>
  </footer>
</body>
</html>
