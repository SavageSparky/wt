<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>

<?php

$start = $_POST["start"];
$end = $_POST["end"];

$sum = 0;
for ($i = $start; $i <= $end; $i++) {
    $sum += $i;
}

echo "Sum from " . $start . " to " . $end . " = " . $sum;
?>

</body>
</html> 