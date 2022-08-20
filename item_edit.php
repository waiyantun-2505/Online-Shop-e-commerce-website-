<?php
	include 'db_connect.php';
	include 'backend_header.php';

	$id=$_GET['id'];
  
	$sql = "SELECT * FROM items where id=:id";
	$stmt = $pdo->prepare($sql);
	$stmt->bindParam(':id',$id);
	$stmt->execute();

	$row = $stmt->fetch(PDO::FETCH_ASSOC);
	


?>
 

 <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Edit Item</h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4" id="form">
            <div class="card-header py-3">
              <div class="row">
                  <div class="col-10">
                    <h6 class="m-0 font-weight-bold text-primary">List</h6>
                  </div>
                  <div class="col-2">
                    <a href="item_list" class="btn btn-outline-primary btn-block">
                      <i class="fas fa-backward pr-2"></i>
                      Go back
                    </a>
                  </div>
              </div>
              
            </div>

            <div class="card-body">

             <form action="item_update" method="POST" enctype="multipart/form-data">

             	<!-- ayin page ka id nae photo path ko u bop hidden lote tr -->
             	<input type="hidden" name="id" value="<?= $row['id'] ?>">
              <input type="hidden" name="name" value="<?= $row['name'] ?>">
              <input type="hidden" name="codeno" value="<?= $row['codeno'] ?>">
              <input type="hidden" name="price" value="<?= $row['price'] ?>">
              <input type="hidden" name="discount" value="<?= $row['discount'] ?>">
              <input type="hidden" name="description" value="<?= $row['description'] ?>">
              <input type="hidden" name="brandid" value="<?= $row['brandid'] ?>">
              <input type="hidden" name="sub_categoryid" value="<?= $row['sub_categoryid'] ?>">           
              </div>


              <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="name" value="<?= $row['name']; ?>" placeholder="Name">
                 
                </div>
              </div>


               <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">CodeNo</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="codeno" value="<?= $row['codeno']; ?>" placeholder="CodeNo">
                  
                </div>
              </div>


              <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Price</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="price" value="<?= $row['price']; ?>" placeholder="Price">
                  
                </div>
              </div>


               <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Discount</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="discount" value="<?= $row['discount']; ?>" placeholder="Discount">
                  
                </div>
              </div>


              <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Description</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="description" value="<?= $row['description']; ?>" placeholder="Description">
                  
                </div>
              </div>


              <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Brand_Id</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="brand_id" value="<?= $row['brand_id']; ?>" placeholder="Brand_Id">
                
                </div>
              </div>


              <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">SubCategory_Id</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="description" value="<?= $row['subcategory_id']; ?>" placeholder="subcategory_id">
                  <button class="btn btn-primary mt-3" type="submit">Update</button>
                </div>
              </div>






            </form>

          </div>
          </div>

         



 <?php
      include 'backend_footer.php';
 ?>