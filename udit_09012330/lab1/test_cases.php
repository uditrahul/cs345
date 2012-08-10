<?php
for($k=1;$k <= 100000;$k++)
{
	write_data("student1","09012301","CS344");
	write_data("student2","09012302","CS345");
	write_data("student3","09012303","MA471");
	write_data("student4","09012304","MA472");
	write_data("student5","09012305","MA373");
}
function write_data($name,$roll_no,$course)
{
 	$fs = fopen("register.txt","a");
	fwrite($fs,$name . ", " . $roll_no . ", " . $course ."\n");
	fclose($fs);
}
?>
