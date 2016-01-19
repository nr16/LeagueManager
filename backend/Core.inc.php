<?php

//include "php-crud-api/api.php";
//
//class MyCRUD extends MySQL_CRUD_API
//{
//    public function GetDb()
//    {
//        return $this->settings->db;
//    }
//}
//

include "config.inc.php";

/**
 * core short summary.
 *
 * core description.
 *
 * @version 1.0
 * @author Manfred
 */
class MyCore
{
    protected $db = null;

	public function __construct() 
    {
        session_start();

        $db = new mysqli($_ENV["db_server"], $_ENV["db_user"], $_ENV["db_password"], $_ENV["db_catalog"]);
		if (mysqli_connect_errno()) {
			throw new \Exception('Connect failed. '.mysqli_connect_error());
		}
		if (!mysqli_set_charset($db, 'utf8')) {
			throw new \Exception('Error setting charset. '.mysqli_error($db));
		}
		if (!mysqli_query($db,'SET SESSION sql_mode = \'ANSI_QUOTES\';')) {
			throw new \Exception('Error setting ANSI quotes. '.mysqli_error($db));
		}
        
        $this->db = $db;
    }

    public function Login($username, $password) {
	    $passHash = hash(PASSWORD_HASH_ALGO, $password);

	    $query = sprintf("select * from `" . $_ENV["table_prefix"] . "users` where username='%s' and password='%s'",
                 $this->db->escape_string($username), $this->db->escape_string($passHash));


	    $queryResult = $this->db->query($query);

        $resultArr = $queryResult->fetch_all(MYSQLI_ASSOC);
        //echo json_encode($resultArr);

	    $result = array("result" => false, "message" => "Benutzer Passwort Kombination ist falsch.");

	    if (count($resultArr) == 1) {
		    $_SESSION["user_id"] = $resultArr[0]["id"];
		    $result["result"] = true;
		    $result["message"] = "ok";
		    $result["user"] = $this->GetSelf();
	    }

        $queryResult->close();
	    return $result;
    }

    public function Logout() {
    	unset($_SESSION["user_id"]);
    }
    
    public function GetSelf() {
	    $result = null;
	    if (isset($_SESSION["user_id"])) {
		    
            $queryResult = $this->db->query("select * from `" . $_ENV["table_prefix"]
				    . "users` where id = " . ((int) $_SESSION["user_id"]));
		    $users = $queryResult->fetch_all(MYSQLI_ASSOC);

		    if (count($users) > 0) {
			    $result = $users[0];
			    $result["password"] = PASSWORD_DUMMY;
			    $result["confirmPassword"] = PASSWORD_DUMMY;
		    }
	    }
	    return $result;
    }

}

?>