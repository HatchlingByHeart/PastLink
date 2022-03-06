<img src="https://raw.githubusercontent.com/HatchlingByHeart/PastLink/main/public/images/pl_logo_small.png" alt="PastLink Logo">

**PastLink is in heavy development and is not ready for use yet. Key components are yet to be developed!**

PastLink is a web-based alternative to Crowd Control for manipulating an A Link to the Past Randomizer game. Useful as a Streamer vs Chat tool.

# Why PastLink?

PastLink was born from my desire for a free and open source alternative to a "Streamer vs Chat" tool known as Crowd Control for Zelda A Link to the Past Randomizer runs.
Crowd Control is popular and quite robust, but has some drawbacks:

- Crowd Control is paid software, and closed source, making it not very accessible for a lot of people. PastLink is **free** and **open source**, and always will be.
- Crowd Control requires a Windows PC. As of the time of writing this, there are no versions for Linux or Mac. The core of PastLink runs on a PHP-based web server, and can hence be used on any operating system where PHP is available.  
- PastLink can be used for any streaming platform, and the web interface can be used on any OS/Browser.
- While designed for A Link to the Past, PastLink could be adapted in future to support more games. Because it's open source, you are free to tweak to code to support more games yourself!

# Requirements

You will need a server with:

- HTTP server (Apache is recommended)
- PHP 7.x (only 7.2 has been tested, other 7.x and 8.x versions may work, more testing needed. PHP<7.0 likely will not work and is not recommended.)
- MySQL or MariaDB database system, with permissions to create and modify your own database and tables.

On your local machine (where you are playing ALTTP), you will need:

- BizHawk Emulator

This is the only supported emulator at the moment, and **only** with a BSNES core.
PastLink has been tested with Snes9x-rr and LSNES, both lack features required by PastLink (namely the HTTP client).
PastLink has also been tested with BizHawk's Snes9x core, and due to differences in it's cheat engine, is not compatible with PastLink at this time.
It should also be noted that only the **Windows** version of BizHawk supports Lua scripting, and hence is the only version PastLink is able to support.
There is nothing that can be done to support BizHawk on Mac or Linux until BizHawk is updated to support Lua on those platforms.

~~# Installation~~

~~1. Change the "config.php" file to reflect your configuration.~~

~~2. Upload the "pastlink" folder to a web server of your choice that meets the requirements above.~~

~~3. Put the included BizHawk-http.bat file in the same directory as BizHawk (EmuHawk.exe) and launch it. This is required to start BizHawk with Lua's HTTP client enabled. This will also automatically open the Lua console for you. PastLink will not work if you launch EmuHawk.exe directly.~~
 
~~4. Run your Zelda A Link to the Past Randomizer ROM in BizHawk. A vanilla A Link to the Past ROM from any region will also work as they share the same WRAM addresses, but where's the fun in that?~~
h
~~5. Using the Lua Console, load the PastLink.lua script and run it. The console output will indicate if the script is working or if it isn't working and why.~~
 
~~6. If everything is working correctly, users can visit http://mywebserver.com/pastlink (mywebserver.com being the IP address or domain name for your web server) to manipulate your ALTTP Randomizer run!~~

Installation instructions seems pointless when PastLink is not ready for use yet, but I'm keeping it here for later use.