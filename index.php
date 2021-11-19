<?php
$ip=getenv('MYSQL_SERVICE_HOST');
$pass=getenv('DATABASE_ROOT_PASSWORD');
 $mysqli = new mysqli( $ip , 'root', $pass , 'mydatabase');
 // If an error occurs when establishing the connection
 if ($mysqli->connect_errno) {
 // We can show a message:
 echo "An error occurred when trying to establish a
connection to the database: ";
 // And this is the detail of the error message.
 echo "Error " . "#".$mysqli->connect_errno . "\n";
 exit;
 }
 else {
 // Query to retrieve Orders table data
 $select_query = "SELECT id, name, supplier, category, price,
instock FROM products";
 $result = $mysqli->query($select_query);
 while ($obj = mysqli_fetch_object($result)) {// call to msqli function
 echo "ID: ".$obj->id.", ".
 "Name: ".$obj->name.", ".
 "Supplier: ".$obj->supplier.", ".
 "Category: ".$obj->category.", ".
 "Price: ".$obj->price.", ".
 "In Stock: ".$obj->instock."<br>";
 }
 }
?>
