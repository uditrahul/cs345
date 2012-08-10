<html><body>
<?php
$name = $_POST['name'];
$roll_no = $_POST['roll_no'];
$course = $_POST['course'];
$fs = fopen("register.txt","a");

//mutex implementation for allowing concurrent access
while(!flock($fs,LOCK_EX))
{
// process will busy wait under an exclusive lock is acquired
}
 
fwrite($fs,$name . ", " . $roll_no . ", " . $course ."\n");
fclose($fs);

echo "Thank you for registering" ;
echo "<br/> <br/>";

?>
<a href="http://localhost/lab1/form.html">Register for another course</a> 
<br />
<a href="http://localhost/lab1/display.php">List of registered students</a> 
</body></html>
