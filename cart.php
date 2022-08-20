<?php
	include 'frontend_header.php';
?>

	<div class="container">
		<h1 class="mt-4 mb-3">Your Shopping Cart</h1>

		<div class="row mt-5 shoppingcart_div">
			<a href="categories" class="btn btn-secondary float-right px-3" style="background-color: #673AB7; border-color:#673AB7">
				<i class="fas fa-shopping-cart"></i>
			Continue Shopping</a>

		</div>
		

	</div>


	<div class="row mt-5 ">
		
		<div class="table-responsive shoppingcart_div">
			<table class="table text-center">
				<thead>
					<tr>
						<th colspan="3">Product</th>
						<th colspan="3">Qty</th>
						<th>Price</th>
						<th>Total</th>
					</tr>
				</thead>

				<tbody id="shoppingcart_table">
					
				</tbody>
				<tfoot id="shoppingcart_tfoot">
					
				</tfoot>
				
			</table>
			
		</div>
		
		<div class="row mt-5 noneshoppingcart_div text-center">
			 
			<div class="col-12">
				<h5 class="text-center">There is no item in this cart</h5>
			</div>

			<div class="col-12 mt-5">
				<a href="categories" class="btn btn-primary px-3" style="background-color:#6737B7; border-color:#6737B7;">
					<i class="fas fa-shopping-cart"></i>
					Continue Shopping
				</a>
			</div>


		</div>

	</div>










<?php
	include 'frontend_footer.php';
?>