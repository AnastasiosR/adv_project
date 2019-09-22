<?php

session_start();

unset($_SESSION["uid"]);

unset($_SESSION["name"]);

//direct user to home page.
header("location:index.php");

?>