<?php

session_start();
if (isset($_GET['off'])) {
    $_SESSION['login'] = 0;
    @setcookie("user", $cookies, time() - 3600, '/');
    header('Location:/riji.php');
}
?>