<?php

include "config.inc.php";
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
   'hostname'=>$_ENV["db_server"],
   'username'=>$_ENV["db_user"],
   'password'=>$_ENV["db_password"],
   'database'=>$_ENV["db_catalog"],
   'charset'=>'utf8',
   'table_authorizer' => $isAllowedTableFunction
));
$api->executeCommand();
 
//$_ENV["table_prefix"]
?>