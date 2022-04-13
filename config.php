<?php
// MySQL/MariaDB Database Configuration
define("DB_HOST", "localhost");
define("DB_USER", "pastlink");
define("DB_PASS", "********");
define("DB_BASE", "pastlink");
define("DB_PRFX", "pastlink_");

// BizHawk Key
// BIZHAWK should match the key set in the "key" variable in pastlink.lua
// This prevents unauthorized copies of PastLink from connecting to your emulator.
// Treat this like a password, it should be strong, and not given to anybody else. 
define("BIZHAWK", "****************");

// Cooldown for each user, in seconds.
define("COOLDOWN", 10);

// Whether or not to use the points system for issuing commands.
define("POINTS", false)
?>