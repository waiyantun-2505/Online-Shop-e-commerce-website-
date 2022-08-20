$(document).ready(function() 
{
	getSubcategoryId();
	cartnoti();
	showtable();

	console.log("session User" + sessionuser);

	function getSubcategoryId()
	{
		var subcategoryid=$('#subcategoryid').val();

		getItem(subcategoryid);

		$('.listgroup_'+subcategoryid).toggleClass('active');
	}

	$('.list-group #subcategoryList').click(function(){
		var id = $(this).data('id');

		getItem(id);

		$('.list-group-item.active').removeClass('active');
		$('.listgroup_'+id).toggleClass('active');

	});

		

	function getItem(subcategoryid)
	{
		if (subcategoryid) 
		{
			$.ajax({ 
				type: "GET",                                     
      			url: 'getItem?id='+subcategoryid,
      			success: function(response)
      			{                    
		            // $("#responsecontainer").html(response); 
		            // console.log(response);
			        var html ='';

					var itemObjArray = JSON.parse(response); 

					console.log(itemObjArray);

					if(itemObjArray.length > 0)
					{
			            $.each(itemObjArray,function (i,v) 
						{
							html += `<div class="col-lg-4 col-md-4 col-sm-6 portfolio-item">
										<div class="card h-100">
										<a href="#">
						                	<img class="card-img-top" src="${v.photo}" alt="" style="height: 200px;object-fit:cover;">
						                </a>
									
										<div class="card-body">
					                		<h6 class="card-title">
					                    		<a href="#" class="secondary"> ${v.codeno} </a>
					                  		</h6>`;

					        if(v.discount)
					        {
					        	html += `<p class="font-weight-lighter d-inline"> <del>  ${v.price} Ks </del>  </p>
					                	<h4 class="text-danger d-inline">  ${v.discount} Ks </h4>`;

					        }
					         
					        else
					        {
					        	html += `<h4 class="text-danger"> ${v.price} Ks </h4>`;
					        }

					        if (sessionuser)
					        {  
					        html+= `</div>

									<div class="card-footer bg-transparent">`;

			                html+=`<a href="javascript:void(0)" class="btn btn-secondary btn-block addtocart" data-id="${v.id}" data-name="${v.name}" data-codeno="${v.codeno}" data-photo="${v.photo}" data-price="${v.price}" data-discount="${v.discount}" style="background-color: #673AB7; border-color: #673AB7"> 
			                    			<i class="fas fa-shopping-cart pr-3"></i> Add To Cart 
			                  	</a>`;
			                 }
			                 else
			                 {
			                 	html+=`<a type="button" href="login" class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="Please sign in first to order!!!">
								  Add to Cart 
								</a>`;
			                 }
			               	html+=`</div> </div> </div>`; 


						});
			        }

			        else
			        {
			        	html += `<h3> There is no item in our database.</h3>`;
			        }

					//console.log(html);

					$('#itemDiv').html(html);

		        } 
      		});  
		}

	}



	$('.addtocart').on('click',function(){
		var id=$(this).data('id');
		var name=$(this).data('name');
		var codeno=$(this).data('codeno');
		var photo=$(this).data('photo');
		var price=$(this).data('price');
		var discount=$(this).data('discount');


		console.log(id);
		console.log(name);
		console.log(codeno);
		console.log(photo);
		console.log(price);
		console.log(discount);

		storeData(id, codeno, name, photo, price,discount);
	});



	$('#itemDiv').on('click','.addtocart',function(){
		var id=$(this).data('id');
		var name=$(this).data('name');
		var codeno=$(this).data('codeno');
		var photo=$(this).data('photo');
		var price=$(this).data('price');
		var discount=$(this).data('discount');


		console.log(id);
		console.log(name);
		console.log(codeno);
		console.log(photo);
		console.log(price);
		console.log(discount);

		storeData(id, codeno, name, photo, price,discount);
	});

	function storeData(id,codeno,name,photo,price,discount)
	{
		var mylist={id:id, codeno:codeno, name:name, photo:photo, price:price, discount:discount, qty:1};
		
		var cart=localStorage.getItem('cart');
		if (!cart)
		{
			var cart='{"mycart" :[]}';
		}

		cart=JSON.parse(cart);

		var mycart= cart.mycart;
		length=mycart.length;


		// increase id when id will same

		for (var i = 0; i<length; i++) {
			
			if(id==mycart[i].id)

				{
					var exit=1;
					mycart[i].qty +=1;
				}
		}

		if(!exit)
		{
			cart.mycart.push(mylist);
		}

		cart=JSON.stringify(cart);
		localStorage.setItem('cart',cart)

		cartnoti();

		// console.log(mylist);
	}


	function cartnoti()
	{
		var cart=localStorage.getItem('cart');

		if (cart) 
		{
			var cartobj=JSON.parse(cart);
			var noti=cartobj.mycart.length;
		}
		$('.cartnoti').html(noti);
	}


	function showtable()
	{
		var localstorageitem=localStorage.getItem('cart');
		if (localstorageitem) {
			var localstorageitem=JSON.parse(localstorageitem);
			var mycart=localstorageitem.mycart;
			var mytable='';var mytfoot=''; var total=0;

			$.each(mycart, function(i,v)
			{
				if (v)
				{
					var id=v.id;
					var codeno=v.codeno;
					var name=v.name;
					var photo=v.photo;
					var price=v.price;
					var discount=v.discount;
					// console.log(discount);
					var qty=v.qty;

					if (discount >0) 
					{
						var unit=discount;
					}
					else
					{
						var unit=price;
					}

					var subtotal=unit*qty;


					mytable+=`<tr>
					<td><button class="btn btn-outline-danger delete" data-id="${i}">
					<i class="fas fa-times"></i>
					</button></td>

					<td>
						<img src="${photo}" class="img-fluid" style="width:50px; height:50px;">
					</td>


					<td>
						<p>${name}</p>
						<p>${codeno}</p>

					</td>

					<td>
						<button class="btn btn outline-secondary plus" data-id="${i}" data-codeno="${codeno}" data-name="${name}" data-photo="${photo}" data-price="${price}" data-discount="${discount}" data-qty="${qty}">
							<i class="fas fa-plus"></i>
						</button>
						</td>
						<td>
						<p>${qty}</p>
						</td>
						<td>
						<button class="btn btn outline-secondary minus" data-id="${i}" data-codeno="${codeno}" data-name="${name}" data-photo="${photo}" data-price="${price}" data-discount="${discount}" data-qty="${qty}">
							<i class="fas fa-minus"></i>
						</button>
					</td>

					<td>
					`;

					if (discount>0) {
						mytable +=`<p class="font-weight-lighter">
							<del>${price}</del></p>
							<h4 class="text-danger">${discount}<h4>
							`;
					}else{
						mytable +=`<h4 class="text-danger">
							${price} Ks
						</h4>
						`;
					}



					mytable+=`</td>



					<td>
					<p>${subtotal}</p>

					 </td>

					</tr>`
				}

				total+=subtotal++;

				// $('#shoppingcart_table').html(mytable);
			});
				mytfoot=`<tr>

					<td colspan="8">
					<h3 class="text-right"> Total : ${total}</h3>
					</td>
					</tr>
					<tr>
						<td colspan="5">
							<textarea class="form-control" id="notes"></textarea>
						</td>
						<td colspan="3">
							<button class="btn btn-secondary btn-block chechoutbtn" data-total=${total} style="background-color:red;">Check Out</button>
						</td>
					</tr>`
		$('.shoppingcart_div').show();
		$('.noneshoppingcart_div').hide();
		$('#shoppingcart_table').html(mytable);
		$('#shoppingcart_tfoot').html(mytfoot);
		}
		else
		{
		$('.shoppingcart_div').hide();
		$('.noneshoppingcart_div').show();
		}


		
	}

	$('#shoppingcart_tfoot').on('click','.chechoutbtn', function(){
		var note= $('#notes').val();
		var total= $(this).data('total');

		var cart= localStorage.getItem('cart');
		var cartobj=JSON.parse(cart);

		var cartarr=cartobj.mycart;


		$.post('storeorder.php', {
			cart: cartarr,
			note:note,
			total:total
		},function(response){
			localStorage.clear();
			location.href="ordersuccess.php";

			})
		// console.log(total);
		// console.log(note);
		})

	$('#shoppingcart_table').on('click','.plus',function(event) {
		
		var id = $(this).data('id');
		var codeno= $(this).data('codeno');
		var name = $(this).data('name');
		var photo = $(this).data('photo')
		var qty = $(this).data('qty');
		var price = $(this).data('price');
		var discount=$(this).data('discount');

		// console.log(id);
		// console.log(codeno);
		// console.log(name);
		// console.log(photo);
		// console.log(qty);
		// console.log(discount);

		
		
		// // console.log(qty)
		var itemstring = localStorage.getItem('cart');

		// console.log(itemstring);
		
		if (itemstring) {

			var itemArray = JSON.parse(itemstring);
			// console.log(itemArray);
			itemArray.mycart[id].name = name;
			itemArray.mycart[id].codeno = codeno;
			itemArray.mycart[id].photo = photo;
			itemArray.mycart[id].discount = discount;
			itemArray.mycart[id].qty = qty + 1; 
			itemArray.mycart[id].price = price;

			

			var CartData = JSON.stringify(itemArray);
			localStorage.setItem('cart', CartData);
			showtable();
			cartnoti();
			
		}

	});

	$('#shoppingcart_table').on('click','.minus',function(event) {
		
		var id = $(this).data('id');
		var codeno= $(this).data('codeno');
		var name = $(this).data('name');
		var photo = $(this).data('photo')
		var qty = $(this).data('qty');
		var price = $(this).data('price');
		var discount=$(this).data('discount');

		// console.log(id);
		// console.log(codeno);
		// console.log(name);
		// console.log(photo);
		// console.log(qty);
		// console.log(discount);

		
		
		// // console.log(qty)
		var itemstring = localStorage.getItem('cart');

		// console.log(itemstring);
		
		if (itemstring) {

			var itemArray = JSON.parse(itemstring);
			// console.log(itemArray);
			itemArray.mycart[id].name = name;
			itemArray.mycart[id].codeno = codeno;
			itemArray.mycart[id].photo = photo;
			itemArray.mycart[id].discount = discount;
			itemArray.mycart[id].qty = qty - 1; 
			itemArray.mycart[id].price = price;

			if (itemArray.mycart[id].qty <=	 0) {
						itemArray.mycart.splice(id,1);
				}

			var CartData = JSON.stringify(itemArray);
			localStorage.setItem('cart', CartData);
			showtable();
			cartnoti();
			}

	});


	$('#shoppingcart_table').on('click','.delete',function(){

		var id = $(this).data('id');
		var ans ="Are You sure to delete this item!!?";

		if (ans) {
			var itemstring = localStorage.getItem('cart');
			var itemArray = JSON.parse(itemstring);
			itemArray.mycart.splice(id,1);
			var CartData = JSON.stringify(itemArray);
			localStorage.setItem('cart', CartData);
			showtable();
			cartnoti();
		}

	})





});