<?php require "add/add_ge.php"; ?>
<?php require "add/add_po.php"; ?>
<?php require "add/add_proc.php"; ?>
<?php require "add.php"; ?>
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
<form action="proc.php">
    <p><b>Cписок компьютеров с заданным типом ЦП:</b></p>
    <select name="proc" id="">
        <?php
        foreach ($choose as $proc) {
            echo "<option value=\"$proc\">$proc</option>";
        }
        ?>
    </select>
    <p><input type="submit" value="Выбрать"></p>
</form>

<form action="po.php">
    <p><b>Список компьютеров с заданным установленным ПО: </b></p>
    <select name="po" id="">
        <?php
        foreach ($po as $type) {
            echo "<option value=\"$type\">$type</option>";
        }
        ?>
    </select>
    <p><input type="submit" value="Выбрать"></p>
</form>

<form action="no.php">
    <p><b>Список компьютеров с истекшим гарантийным сроком:</b></p>
    <p><input type="submit" value="Показать"></p>
</form>


<form action="add.php">
    <p><b>Добавление нового ЦП (ИД, название, частота):</b></p>
    <input type="number" name="id">
    <input type="text" name="name">
    <input type="number" name="freq">
    <p><input type="submit" value="Добавить"></p>
</form>

</body>
</html>