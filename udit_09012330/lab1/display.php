<html><body>
<?php
printf("Sr. No.	\tName	\tRoll No.\t	Course Name  <br/> ") ;
printf("\n");
$fs = fopen("register.txt","r");

while(!feof($fs))
{
 $Data = fgets($fs) ;
 if(strstr($Data, ','))
 {
 list($name,$roll_no,$course) = explode(",",$Data);
 echo "$name	$roll_no	$course <br/> " ;
 }
}
?>
</body></html>
