<?php

$roll_no=$_REQUEST['roll_no'];
$name=$_REQUEST['name'];
$password=$_REQUEST['password'];


$register=$roll_no.",".$name.",".$password."\n";


$log=fopen("register.txt","a") or die("Failed to open the stream");


while(!flock($log,LOCK_EX)){

}


fwrite($log,$register);
fclose($log);

echo "Successfully Registered !<br/>";
echo "  <a href='/assgn1/index.php'>Register New Entry</a><br/>
		<a href='/assgn1/display.php'>View All Registrations</a>";

?>
