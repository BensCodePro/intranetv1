<?php

function query(string $query, array $data = [])
{
    try {
        // Establish a connection once and store it in a static variable
        static $con;
        if (!$con) {
            $con = new PDO("mysql:host=" . DBHOST . ";dbname=" . DBNAME, DBUSER, DBPASS);
            $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }

        // Prepare the query with named parameters
        $stmt = $con->prepare($query);
        $stmt->execute($data);

        // Fetch results
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Return an empty array if no results
        return $result ?: [];
    } catch (PDOException $e) {
        // Handle connection or query errors
        error_log($e->getMessage());
        return false;


    }

    function redirect($page)
{

	header('Location: '.ROOT. '/' . $page);
	die;
}



    function str_to_url($url)
{

   $url = str_replace("'", "", $url);
   $url = preg_replace('~[^\\pL0-9_]+~u', '-', $url);
   $url = trim($url, "-");
   $url = iconv("utf-8", "us-ascii//TRANSLIT", $url);
   $url = strtolower($url);
   $url = preg_replace('[^-a-z0-9_]', '', $url);
   
   return $url;
}

 function get_pagination_vars($page)
{

	/* set pagination vars */
	$page_number = $_GET['page'] ?? 1;
	$page_number = empty($page_number) ? 1 : (int)$page_number;
	$page_number = $page_number < 1 ? 1 : $page_number;

	$current_link = $_GET['url'] ?? 'home';
	$current_link = ROOT . "/" . $current_link;
	$query_string = "";

	foreach ($_GET as $key => $value)
	{
		if($key != 'url')
			$query_string .= "&".$key."=".$value;
	}

	if(!strstr($query_string, "page="))
	{
		$query_string .= "&page=".$page_number;
	}

	$query_string = trim($query_string,"&");
	$current_link .= "?".$query_string;

	$current_link = preg_replace("/page=.*/", "page=".$page_number, $current_link);
	$next_link = preg_replace("/page=.*/", "page=".($page_number+1), $current_link);
	$first_link = preg_replace("/page=.*/", "page=1", $current_link);
	$prev_page_number = $page_number < 2 ? 1 : $page_number - 1;
	$prev_link = preg_replace("/page=.*/", "page=".$prev_page_number, $current_link);

	$result = [
		'current_link'	=>$current_link,
		'next_link'		=>$next_link,
		'prev_link'		=>$prev_link,
		'first_link'	=>$first_link,
		'page_number'	=>$page_number,
	];

	return $result;
}
}