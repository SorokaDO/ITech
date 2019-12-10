<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form class="form-input">
    <label for="login-input">
        Login:
        <input type="text" id="login-input" name="login">
    </label>
    <br/>
    <label for="pass-input">
        Password:
        <input type="password" id="pass-input" name="password">
    </label>
    <br/>
    <input type="submit" formmethod="post">
</form>

<?php

$file = file("credentials.txt");
$login = $file[0];
$loginParsed = explode(":", $login)[1];

$password = $file[1];
$passwordParsed = explode(":", $password)[1];
$passwordParsed = trim($passwordParsed);
$loginParsed = trim($loginParsed);
$validData;

if(isset($_POST["password"]) && isset($_POST["login"])) {
    
    if($_POST["password"] == $passwordParsed && $_POST["login"] == $loginParsed) {
        $validData = true;
    }
    else {
        $validData = false;
    }

}

if(isset($validData)) {
    if ($validData) {
        echo "<span style=\"color: green\">Success</span>";
    } else {
        echo "<span style=\"color: red\">Fail</span>";
    }
}
?>
</body>
</html>
