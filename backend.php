<?php

include "php-crud-api/api.php";

// uncomment the lines below when running in stand-alone mode:

$isAllowedTableFunction = function($cmd, $db, $tab)
{
    // TODO:
    //if ($tab != 'jos_fussball_spieler')
    //    return false;

    return true;
};

$api = new MySQL_CRUD_API(array(
   'hostname'=>'localhost',
   'username'=>'root',
   'password'=>'manni123',
   'database'=>'hsv',
   'charset'=>'utf8',
   'table_authorizer' => $isAllowedTableFunction
));
$api->executeCommand();

?>