<?php

echo "	<table border='1'>
			<tr>
				<th>Roll No</th><th>Name</th><th>Password</th>
			</tr>
			<tr>
				".display_data()."
			</tr>
		</table>";

function display_data(){
	$file='register.txt';
	$string="";
	
	$handle=fopen($file,"r") or die("Failed to Open File Stream.");
	while(($thedata = fgets($handle))!=NULL){
		$themember=explode(",",$thedata);
		$string.="<tr><td>".$themember[0]."</td><td>".$themember[1]."</td><td>".$themember[2]."</td></tr>";
	}
	fclose($handle);
	return $string;
	
}		
?>
