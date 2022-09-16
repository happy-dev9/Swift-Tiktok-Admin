<?php
	
	// Turn off error reporting
    //error_reporting(1);
    
    
	//web API path
	$API_path="http://bringthings.com/API/tictic";

	
	//database configration
	$servername = "localhost";
	$database = "bring_tictic";
	$username = "bring_ticticUser";
	$password = "W,kkM,p}+qwL";
    
	// Create connection

	$conn = mysqli_connect($servername, $username, $password, $database);

	// Check connection

	if (!$conn) {

	    die("Connection failed: " . mysqli_connect_error());

	}
    
	
?>