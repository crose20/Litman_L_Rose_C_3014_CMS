<?php require_once('admin/scripts/config.php');
if(isset($_GET['filter'])){
	$tbl = 'tbl_products';
	$tbl_2 = 'tbl_category';
	$tbl_3 = 'tbl_products_category';
	$col = 'product_id';
	$col_2 = 'category_id';
	$col_3 = 'category_name';
	$filter = $_GET['filter'];
	$results = filterResults($tbl,$tbl_2,$tbl_3,$col,$col_2,$col_3,$filter);
}else{
	$results = getAll('tbl_products');
}
?>

<!doctype html>
<html>
<head>
	<link rel="stylesheet" href="css/main.css">
	<meta charset='utf-8'>
	<title>Available Products</title>
</head>
<body>
	<?php include('templates/header.html'); ?>
	<h1><?php echo $row['category_name'];?></h1>
	<div>

<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?><!--connecting each individual row-->

<img src="images/<?php echo $row['product_img'];?>" alt="<?php echo $row['product_name'];?>">

	 <h3><?php echo $row['product_name'];?></h3>

	 <p><?php echo $row['product_brand'];?></p>

	 <a href="details.php?id=<?php echo $row['product_id'];?>">More Details</a>
	 
<?php endwhile;?>
	</div>

	<!--MAKING SURE THE FOOTER IS CONNECTED AT THE BOTTOM OS THE PAGE:-->
<?php include('templates/footer.html');?>
</body>
</html>