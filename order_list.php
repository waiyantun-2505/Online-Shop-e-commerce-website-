<?php
	include 'backend_header.php';
	include 'db_connect.php';
?>

	<div class="container-fluid">
	  <!-- Page Heading -->
		<h1 class="h3 mb-4 text-gray-800">
	  		<i class="fas fa-dolly pr-3"></i> 
	  		Order 
	  	</h1>

		<div class="card shadow mb-4">
			<div class="card-header py-3">
	            <div class="row">
					<div class="col-10">
						<h4 class="m-0 font-weight-bold text-primary"> 
			            	List 
			            </h4>
					</div>

					<div class="col-2">
						<a href="item_new" class="btn btn-outline-primary btn-block float-right"> 
		            		<i class="fa fa-plus pr-2"></i>	Add New 
		            	</a>
					</div>
				</div>
	        </div>
	        <div class="card-body">
				
				

	            <div class="table-responsive">
	            	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr>
								<th> No </th>
								<th> Order Date </th>
								<th> Voucherno </th>
								<th> Total Amount </th>
								<th> Customer Name </th>
								
							</tr>
						</thead>

						<tbody>

							<?php 
								$sql="SELECT orders.*, users.name as uname from orders 
									LEFT JOIN users
									ON orders.user_id = users.id
									ORDER BY orders.orderdate ASC";
					        	$stmt=$pdo->prepare($sql);
					        	$stmt->execute();
					        	$rows= $stmt->fetchAll();

					        	$i=1;
        						foreach ($rows as $orders):

        						$id = $orders['id'];
        						$date= $orders['orderdate'];
        						$uname = $orders['uname'];
        						$voucherno = $orders['voucherno'];
        						$total = $orders['total'];



							?>

							<tr>
								<td> <?= $i; ?> </td>
								<td> <?= $date; ?> </td>
								<td> <?= $voucherno; ?> </td>
								<td> <?= $total; ?> </td>
								<td> <?= $uname; ?> </td>
								
							</tr>

							<?php 
								$i++;
								endforeach; 
							?>

						</tbody>

						

	            	</table>
	            </div>
	        </div>
		</div>

	</div>





<?php
	include 'backend_footer.php';
?>