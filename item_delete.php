<?php
	
	include 'db_connect.php';

	$id = $_GET['id'];
	// echo $id;

	
		

	$item_sql = "SELECT * FROM items where id=:id";
	$stmt	=	$pdo->prepare($item_sql);
	$stmt	->	bindParam(':id',$id);
	$stmt	->	execute();	
	$rows = $stmt->fetch((PDO::FETCH_ASSOC));


	$photo = $rows['photo'];
	unlink($photo);

	$item_delete = "DELETE FROM items where id=:id";
	$item_stmt = $pdo->prepare($item_delete);
	$item_stmt -> bindParam(':id',$id);
	$item_stmt -> execute();


		if($stmt->rowCount()){
 		header("location:item_list");
	 	}
	 	else{
	 		echo "Error!";
	 	}
	






?>