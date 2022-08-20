<?php
	include 'db_connect.php';

	//january
	$jan_first= strtotime('first day of january');
	$jan_last = strtotime('Last day of january');
	$jan_start= date('Y-m-d', $jan_first);
	$jan_end = date('Y-m-d',$jan_last);

	// echo $jan_start."<br>";
	// echo $jan_end."<br>";

	$jan_sql = "SELECT SUM(total) as total 
	FROM orders
	WHERE orderdate between '$jan_start' 
	And '$jan_end'";
	$jan_stmt= $pdo->prepare($jan_sql);
	$jan_stmt->execute();
	$jan_result = $jan_stmt->fetch(PDO::FETCH ASSOC);

	echo $jan_result."<br>";


?>