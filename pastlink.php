<?php
/*====================================================================================================================*\
  PastLink - HTTP Server for manipulating ALTTP Randomizer on BizHawk
  by Phillip Shaw (HatchlingByHeart) 2022
\*====================================================================================================================*/

// PastLink is currently in Alpha and NOT READY FOR RELEASE, use only for testing until further notice.

require_once "config.php";
// Read Mode set: Database -> Server -> BizHawk
// This mode should only be accessed by BizHawk
if ($_GET["mode"] == "readDB") {
	// Check the requests are coming from your copy of BizHawk and aren't spoofed.
	// Because BizHawk's HTTP client doesn't report a User Agent to the server, this needs to be done with a key
	// set in both "config.php" and "pastlink.lua". Connection is rejected if these keys do not match.
	if ($_GET["key"] == BIZHAWK) {
		$db = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_BASE);
		$result = $db->query("SELECT * FROM `".DB_PRFX."queue` ORDER BY `time` ASC LIMIT 1;");
		$row = $result->fetch_assoc();
		// Check if reading from database was successful.
		// If it is, send message to BizHawk and remove message from the queue.
		if ($row) {
			$result = $db->query("DELETE FROM `".DB_PRFX."queue` WHERE `id` = '".$row['id']."';");
			echo $row['message'];
		}
		else {
			echo "NULL";
		}
	}
	// Requester is not using the correct key, kill script and return the bad news.
	else {
		die("WRONGKEY");
	}
}
// Write Mode set: Server -> Database
// This mode should only be accessed by the server.
else if ($_GET["mode"] == "writeDB") {
	if (isset($_POST['user']) && $_POST['user'] != "") {
		// Filter usernames to prevent XSS attacks, SQL injection, and other arbitrary script execution.
		$user = mysqli_real_escape_string($db, strip_tags($_POST['user']));
	}
	else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] != "") {
		$user = "Anonymous (".$_SERVER['REMOTE_ADDR'].")";
	}
	else {
		$user = "Anonymous (no address)";
	}
	if ($_POST['message']) {
		$message = $_POST['message'];
	}
	else {
		die("No message was defined, no point submitting. Aborting.");
	}
	$db = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_BASE);
	$result = $db->query("INSERT INTO ".DB_PRFX."queue (id, time, user, ip, message) VALUES (NULL, '".time()."', '".$user."', '".$_SERVER['REMOTE_ADDR']."', '".$_POST['message']."');");
	if ($result) {
		// Request Successful, no further action needed.
		exit(0);
	}
	else {
		// Request Failed, report the failure to the user.
		echo "The request failed for an unknown reason. Please try again later.";
	}
}
//Mode not defined, abort and kill script.
else {
	die("No mode was specified in the request. Try Again.");
}
?>