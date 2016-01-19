<?php

echo gettype("0" + 0);

$row = ['a' => "0" + 0, 'b' => "2", "c" => 1];
echo json_encode($row);

function testJSON()
{
  $row = ['a' => "3", 'b' => "2", "c" => 1];
  echo json_encode($row);



  $dbh = new PDO('mysql:host=localhost;dbname=hsv', 'root', 'manni123', array(
    PDO::ATTR_EMULATE_PREPARES => false
  ));

  foreach ($dbh->query('SELECT * from jos_categories') as $row) {
    $id=$row['id'];
    echo "\r\n" . json_encode($row);
    //echo gettype($id);
   }
   $dbh = null;
}
?>