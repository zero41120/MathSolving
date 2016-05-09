<!DOCTYPE html>
<html>

<?php 
	for ($f = $s = 999; $f > 0;$f--){
		for(;$s > 0;$s--){
			if (f($f , $s)) {
				echo $f*$s . " = " . $f . " * " . $s;
				$f = $s = 0;
			}
		}
	}
	
	function f($f , $s){
		for ($i = 0; $i < strlen($f*$s+""); $i++) {
			if (substr($f*$s+"", $i,1) != substr($f*$s+"", strlen($f*$s+"") - 1 - $i,1)) {
				return false;
			}
		}
		return true;
	}
?>
</html>