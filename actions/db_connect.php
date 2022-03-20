<?php
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $dbname = "be15_cr10_katek_biglibrary";

    $connect = mysqli_connect($hostname, $username, $password, $dbname);

    if (!$connect) {
        die("Connection failed: " . mysqli_connect_error());
    };