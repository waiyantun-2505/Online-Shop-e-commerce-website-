<?php
	include 'db_connect.php';

	//january 1
	$jan_first= strtotime('first day of january');
	$jan_last = strtotime('Last day of january');
	$jan_start= date('Y-m-d', $jan_first);
	$jan_end = date('Y-m-d',$jan_last);

	

	$jan_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$jan_start' 
	And '$jan_end'";
	$jan_stmt= $pdo->prepare($jan_sql);
	$jan_stmt->execute();
	$jan_resultdata = $jan_stmt->fetch(PDO::FETCH_ASSOC);

	

	if ($jan_resultdata) {
		$jan_result = $jan_resultdata['total'];
	}else{
		$jan_result = 0;
	}

	//Feb 2
	$feb_first= strtotime('first day of february');
	$feb_last = strtotime('Last day of february');
	$feb_start= date('Y-m-d', $feb_first);
	$feb_end = date('Y-m-d',$feb_last);


	$feb_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$feb_start' 
	And '$feb_end'";
	$feb_stmt= $pdo->prepare($feb_sql);
	$feb_stmt->execute();
	$feb_resultdata = $feb_stmt->fetch(PDO::FETCH_ASSOC);

	
	if ($feb_resultdata) {
		$feb_result = $feb_resultdata['total'];
	}else{
		$feb_result = 0;
	}


	//mar3
	$mar_first= strtotime('first day of march');
	$mar_last = strtotime('Last day of march');
	$mar_start= date('Y-m-d', $jan_first);
	$mar_end = date('Y-m-d',$jan_last);


	$mar_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$mar_start' 
	And '$mar_end'";
	$mar_stmt= $pdo->prepare($mar_sql);
	$mar_stmt->execute();
	$mar_resultdata = $mar_stmt->fetch(PDO::FETCH_ASSOC);

	

	if ($mar_resultdata) {
		$mar_result = $mar_resultdata['total'];
	}else{
		$mar_result = 0;
	}

	//april3
	$april_first= strtotime('first day of april');
	$april_last = strtotime('Last day of april');
	$april_start= date('Y-m-d', $april_first);
	$april_end = date('Y-m-d',$april_last);


	$april_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$april_start' 
	And '$april_end'";
	$april_stmt= $pdo->prepare($april_sql);
	$april_stmt->execute();
	$april_resultdata = $april_stmt->fetch(PDO::FETCH_ASSOC);

	

	if ($april_resultdata) {
		$april_result = $april_resultdata['total'];
	}else{
		$april_result = 0;
	}

	//may 4
	$may_first= strtotime('first day of may');
	$may_last = strtotime('Last day of may');
	$may_start= date('Y-m-d', $may_first);
	$may_end = date('Y-m-d',$may_last);

	

	$may_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$may_start' 
	And '$may_end'";
	$may_stmt= $pdo->prepare($may_sql);
	$may_stmt->execute();
	$may_resultdata = $may_stmt->fetch(PDO::FETCH_ASSOC);

	

	if ($may_resultdata) {
		$may_result = $may_resultdata['total'];
	}else{
		$may_result = 0;
	}

	//june 5
	$june_first= strtotime('first day of june');
	$june_last = strtotime('Last day of june');
	$june_start= date('Y-m-d', $june_first);
	$june_end = date('Y-m-d',$june_last);

	
	$june_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$june_start' 
	And '$june_end'";
	$june_stmt= $pdo->prepare($june_sql);
	$june_stmt->execute();
	$june_resultdata = $june_stmt->fetch(PDO::FETCH_ASSOC);

	

	if ($june_resultdata) {
		$june_result = $june_resultdata['total'];
	}else{
		$june_result = 0;
	}

	//july 6
	$july_first= strtotime('first day of july');
	$july_last = strtotime('Last day of july');
	$july_start= date('Y-m-d', $july_first);
	$july_end = date('Y-m-d',$july_last);

	

	$july_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$july_start' 
	And '$july_end'";
	$july_stmt= $pdo->prepare($july_sql);
	$july_stmt->execute();
	$july_resultdata = $july_stmt->fetch(PDO::FETCH_ASSOC);

	// echo $june_resultdata['total']."<br>";

	if ($july_resultdata) {
		$july_result = $july_resultdata['total'];
	}else{
		$july_result = 0;
	}

	//august 7
	$auguest_first= strtotime('first day of august');
	$auguest_last = strtotime('Last day of august');
	$auguest_start= date('Y-m-d', $auguest_first);
	$auguest_end = date('Y-m-d',$auguest_last);

	

	$auguest_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$auguest_start' 
	And '$auguest_end'";
	$auguest_stmt= $pdo->prepare($auguest_sql);
	$auguest_stmt->execute();
	$august_resultdata = $auguest_stmt->fetch(PDO::FETCH_ASSOC);
	

	if ($august_resultdata) {
		$auguest_result = $august_resultdata['total'];
	}else{
		$auguest_result = 0;
	}

	//september 7
	$sep_first= strtotime('first day of september');
	$sep_last = strtotime('Last day of september');
	$sep_start= date('Y-m-d', $sep_first);
	$sep_end = date('Y-m-d', $sep_last);

	

	$sep_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$sep_start' 
	And '$sep_end'";
	$sep_stmt= $pdo->prepare($sep_sql);
	$sep_stmt->execute();
	$sep_resultdata = $sep_stmt->fetch(PDO::FETCH_ASSOC);
	
	if ($sep_resultdata) {
		$sep_result = $sep_resultdata['total'];
	}else{
		$sep_result = 0;
	}

	//october 8
	$oct_first= strtotime('first day of october');
	$oct_last = strtotime('Last day of october');
	$oct_start= date('Y-m-d', $oct_first);
	$oct_end = date('Y-m-d',$oct_last);

	

	$oct_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$oct_start' 
	And '$oct_end'";
	$oct_stmt= $pdo->prepare($oct_sql);
	$oct_stmt->execute();
	$oct_resultdata = $oct_stmt->fetch(PDO::FETCH_ASSOC);
	
	if ($oct_resultdata) {
		$oct_result = $oct_resultdata['total'];
	}else{
		$oct_result = 0;
	}

	//november 9
	$nov_first= strtotime('first day of november');
	$nov_last = strtotime('Last day of november');
	$nov_start= date('Y-m-d', $nov_first);
	$nov_end = date('Y-m-d',$nov_last);

	

	$nov_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$nov_start' 
	And '$nov_end'";
	$nov_stmt= $pdo->prepare($nov_sql);
	$nov_stmt->execute();
	$nov_resultdata = $nov_stmt->fetch(PDO::FETCH_ASSOC);
	
	if ($nov_resultdata) {
		$nov_result = $nov_resultdata['total'];
	}else{
		$nov_result = 0;
	}

	//December 9
	$dec_first= strtotime('first day of december');
	$dec_last = strtotime('Last day of december');
	$dec_start= date('Y-m-d', $dec_first);
	$dec_end = date('Y-m-d',$dec_last);

	
	$dec_sql = "SELECT COALESCE(SUM(total),0) as total 
	FROM orders
	WHERE orderdate between '$dec_start' 
	And '$dec_end'";
	$dec_stmt= $pdo->prepare($dec_sql);
	$dec_stmt->execute();
	$dec_resultdata = $dec_stmt->fetch(PDO::FETCH_ASSOC);

	if ($dec_resultdata) {
		$dec_result = $dec_resultdata['total'];
	}else{
		$dec_result = 0;
	}

	$total= array($jan_result,$feb_result,$mar_result,$april_result,$may_result,$june_result,$july_result,$auguest_result,$sep_result,$oct_result,$nov_result,$dec_result);
	
	
	echo json_encode($total);


?>