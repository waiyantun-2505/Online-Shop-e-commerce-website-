<?php
	include 'db_connect.php';

	$sql = "SELECT count(orderdetails.item_id) as count_itemid,
				   count(items.subcategory_id) as count_itemscid,
					orderdetails.item_id as itemid,
					items.subcategory_id as scid,
					subcategories.name as subcategory
			FROM orderdetails
			INNER JOIN items ON orderdetails.item_id=items.id
			INNER JOIN subcategories ON items.subcategory_id=subcategories.id
			GROUP BY items.subcategory_id 
			ORDER BY count_itemscid DESC
			LIMIT 3";

	$stmt = $pdo->prepare($sql);
	$stmt->execute();
	$rows=$stmt->fetchAll();

	echo json_encode($rows);


?>