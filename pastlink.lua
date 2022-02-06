-- PastLink is currently in Alpha and NOT READY FOR RELEASE, use only for testing until further notice.

-- URL string of the domain and path of the server to connect to.
url = "example.com/pastlink"

-- Key string. This value should match the BIZHAWK constant in config.php, or connection will fail.
key = "****************"

-- Time (in frames) between calls to server.
-- Higher values will save server resources but increase command delay.
-- Default (Recommended) Value: 60
refreshtime = 60
refresh = refreshtime

-- FUNCTION: Edit Item
-- Argument id (int): The ID number of the item to be received.
-- Argument take (bool): If true, take item away instead of giving it. (Default: false)
function edititem(id,take)
	if (id == 0) then
		-- Normal Bow
		if (take) then
			if bit.check(mainmemory.readbyte(0x00F38E),2) then
				if (mainmemory.readbyte(0x00F377) >= 1) then
					mainmemory.writebyte(0x00F340, 4)
				else
					mainmemory.writebyte(0x00F340, 3)
				end
			else
				mainmemory.writebyte(0x00F340, 0)
			end
			mainmemory.writebyte(0x00F38E, bit.clear(mainmemory.readbyte(0x00F38E),1))
		else
			if (mainmemory.readbyte(0x00F377) >= 1) then
				mainmemory.writebyte(0x00F340, 2)
			else
				mainmemory.writebyte(0x00F340, 1)
			end
			mainmemory.writebyte(0x00F38E, bit.set(mainmemory.readbyte(0x00F38E),1))
		end
	else if (id == 1) then
		-- Silver Bow
		if (take) then
			if bit.check(mainmemory.readbyte(0x00F38E),1) then
				if (mainmemory.readbyte(0x00F377) >= 1) then
					mainmemory.writebyte(0x00F340, 2)
				else
					mainmemory.writebyte(0x00F340, 1)
				end
			else
				mainmemory.writebyte(0x00F340, 0)
			end
			mainmemory.writebyte(0x00F38E, bit.clear(mainmemory.readbyte(0x00F38E),2))
		else
			if (mainmemory.readbyte(0x00F377) >= 1) then
				mainmemory.writebyte(0x00F340, 4)
			else
				mainmemory.writebyte(0x00F340, 3)
			end
			mainmemory.writebyte(0x00F38E, bit.set(mainmemory.readbyte(0x00F38E),2))
		end
	else if (id == 2) then
		-- Shovel
		if (take) then
			if bit.check(mainmemory.readbyte(0x00F38C),8) then
				mainmemory.writebyte(0x00F34C, 3)
			else if (bit.check(mainmemory.readbyte(0x00F38C),7) then
				mainmemory.writebyte(0x00F34C, 2)
			else
				mainmemory.writebyte(0x00F34C, 0)
			end
			mainmemory.writebyte(0x00F38C, bit.clear(mainmemory.readbyte(0x00F38C),6))
		else
			mainmemory.writebyte(0x00F34C, 1)
			mainmemory.writebyte(0x00F38C, bit.set(mainmemory.readbyte(0x00F38C),6))
		end
	else if (id == 3) then
		-- Inactive Ocarina
		if (take) then
			if bit.check(mainmemory.readbyte(0x00F38C),8) then
				mainmemory.writebyte(0x00F34C, 3)
			else if (bit.check(mainmemory.readbyte(0x00F38C),6) then
				mainmemory.writebyte(0x00F34C, 1)
			else
				mainmemory.writebyte(0x00F34C, 0)
			end
			mainmemory.writebyte(0x00F38C, bit.clear(mainmemory.readbyte(0x00F38C),7))
		else
			mainmemory.writebyte(0x00F34C, 1)
			mainmemory.writebyte(0x00F38C, bit.set(mainmemory.readbyte(0x00F38C),7))
		end
	else if (id == 4) then
		-- Active Ocarina
		if (take) then
			if bit.check(mainmemory.readbyte(0x00F38C),7) then
				mainmemory.writebyte(0x00F34C, 2)
			else if (bit.check(mainmemory.readbyte(0x00F38C),6) then
				mainmemory.writebyte(0x00F34C, 1)
			else
				mainmemory.writebyte(0x00F34C, 0)
			end
			mainmemory.writebyte(0x00F38C, bit.clear(mainmemory.readbyte(0x00F38C),8))
		else
			mainmemory.writebyte(0x00F34C, 1)
			mainmemory.writebyte(0x00F38C, bit.set(mainmemory.readbyte(0x00F38C),8))
		end
	else if (id == 5) then
		-- Mushroom
		if (take) then
			if bit.check(mainmemory.readbyte(0x00F38C),4) then
				mainmemory.writebyte(0x00F344, 2)
			else
				mainmemory.writebyte(0x00F344, 0)
			end
			mushbit1 = bit.clear(mainmemory.readbyte(0x00F38C),5)
			mushbit2 = bit.clear(mushbit1,3)
			mainmemory.writebyte(0x00F38C, mushbit2)
		else
			mainmemory.writebyte(0x00F344, 1)
			mushbit1 = bit.set(mainmemory.readbyte(0x00F38C),5)
			mushbit2 = bit.set(mushbit1,3)
			mainmemory.writebyte(0x00F38C, mushbit2)
		end
	else if (id == 6) then
		-- Magic Powder
		if (take) then
			if (bit.check(mainmemory.readbyte(0x00F38C),5) && bit.check(mainmemory.readbyte(0x00F38C),3)) then
				mainmemory.writebyte(0x00F344, 1)
			else
				mainmemory.writebyte(0x00F344, 0)
			end
			mainmemory.writebyte(0x00F38C, bit.clear(mainmemory.readbyte(0x00F38C),4))
		else
			mainmemory.writebyte(0x00F344, 2)
			mainmemory.writebyte(0x00F38C, bit.set(mainmemory.readbyte(0x00F38C),4))
		end
	else if (id == 7) then
		-- Boomerang
		if (take) then
			if bit.check(mainmemory.readbyte(0x00F38C),2) then
				mainmemory.writebyte(0x00F341, 2)
			else
				mainmemory.writebyte(0x00F341, 0)
			end
			mainmemory.writebyte(0x00F38C, bit.clear(mainmemory.readbyte(0x00F38C),1))
		else
			mainmemory.writebyte(0x00F341, 1)
			mainmemory.writebyte(0x00F38C, bit.set(mainmemory.readbyte(0x00F38C),1))
		end
	else if (id == 8) then
		-- Magic Boomerang
		if (take) then
			if bit.check(mainmemory.readbyte(0x00F38C),1) then
				mainmemory.writebyte(0x00F341, 1)
			else
				mainmemory.writebyte(0x00F341, 0)
			end
			mainmemory.writebyte(0x00F38C, bit.clear(mainmemory.readbyte(0x00F38C),2))
		else
			mainmemory.writebyte(0x00F341, 2)
			mainmemory.writebyte(0x00F38C, bit.set(mainmemory.readbyte(0x00F38C),2))
		end
	else if (id == 9) then
		-- Hookshot
		if (take) then
			mainmemory.writebyte(0x00F342, 0)
		else
			mainmemory.writebyte(0x00F342, 1)
		end
	else if (id == 10) then
		-- Fire Rod
		if (take) then
			mainmemory.writebyte(0x00F345, 0)
		else
			mainmemory.writebyte(0x00F345, 1)
		end
	else if (id == 11) then
		-- Ice Rod
		if (take) then
			mainmemory.writebyte(0x00F346, 0)
		else
			mainmemory.writebyte(0x00F346, 1)
		end
	else if (id == 12) then
		-- Bombos Medallion
		if (take) then
			mainmemory.writebyte(0x00F347, 0)
		else
			mainmemory.writebyte(0x00F347, 1)
		end
	else if (id == 13) then
		-- Ether Medallion
		if (take) then
			mainmemory.writebyte(0x00F348, 0)
		else
			mainmemory.writebyte(0x00F348, 1)
		end
	else if (id == 14) then
		-- Quake Medallion
		if (take) then
			mainmemory.writebyte(0x00F349, 0)
		else
			mainmemory.writebyte(0x00F349, 1)
		end
	else if (id == 15) then
		-- Lamp
		if (take) then
			mainmemory.writebyte(0x00F34A, 0)
		else
			mainmemory.writebyte(0x00F34A, 1)
		end
	else if (id == 16) then
		-- Magic Hammer
		if (take) then
			mainmemory.writebyte(0x00F34B, 0)
		else
			mainmemory.writebyte(0x00F34B, 1)
		end
	else if (id == 17) then
		-- Bug Net
		if (take) then
			mainmemory.writebyte(0x00F34D, 0)
		else
			mainmemory.writebyte(0x00F34D, 1)
		end
	else if (id == 18) then
		-- Book of Mudora
		if (take) then
			mainmemory.writebyte(0x00F34E, 0)
		else
			mainmemory.writebyte(0x00F34E, 1)
		end
	else if (id == 19) then
		-- Bottle #1 (Empty)
		if (take) then
			mainmemory.writebyte(0x00F35C, 0)
		else
			mainmemory.writebyte(0x00F35C, 1)
		end
	else if (id == 20) then
		-- Bottle #2 (Empty)
		if (take) then
			mainmemory.writebyte(0x00F35D, 0)
		else
			mainmemory.writebyte(0x00F35D, 1)
		end
	else if (id == 21) then
		-- Bottle #3 (Empty)
		if (take) then
			mainmemory.writebyte(0x00F35E, 0)
		else
			mainmemory.writebyte(0x00F35E, 1)
		end
	else if (id == 22) then
		-- Bottle #4
		if (take) then
			mainmemory.writebyte(0x00F35F, 0)
		else
			mainmemory.writebyte(0x00F35F, 1)
		end
	else if (id == 23) then
		-- Cane Of Somaria
		if (take) then
			mainmemory.writebyte(0x00F350, 0)
		else
			mainmemory.writebyte(0x00F350, 1)
		end
	else if (id == 24) then
		-- Cane of Byrna
		if (take) then
			mainmemory.writebyte(0x00F351, 0)
		else
			mainmemory.writebyte(0x00F351, 1)
		end
	else if (id == 25) then
		-- Magic Cape
		if (take) then
			mainmemory.writebyte(0x00F352, 0)
		else
			mainmemory.writebyte(0x00F352, 1)
		end
	else if (id == 26) then
		-- Magic Mirror
		if (take) then
			mainmemory.writebyte(0x00F353, 0)
		else
			mainmemory.writebyte(0x00F353, 1)
		end
	else if (id == 27) then
		-- Power Glove
		if (take) then
			mainmemory.writebyte(0x00F354, 0)
		else
			mainmemory.writebyte(0x00F354, 1)
		end
	else if (id == 28) then
		-- Titan's Mitt
		if (take) then
			mainmemory.writebyte(0x00F354, 0)
		else
			mainmemory.writebyte(0x00F354, 2)
		end
	else if (id == 29) then
		-- Pegasus Boots
		if (take) then
			mainmemory.writebyte(0x00F355, 0)
			mainmemory.writebyte(0x00F379, 0)
		else
			mainmemory.writebyte(0x00F355, 1)
			mainmemory.writebyte(0x00F379, 108)
		end
	else if (id == 30) then
		-- Zora's Flippers
		if (take) then
			mainmemory.writebyte(0x00F356, 0)
		else
			mainmemory.writebyte(0x00F356, 1)
		end
	else if (id == 31) then
		-- Moon Pearl
		if (take) then
			mainmemory.writebyte(0x00F357, 0)
		else
			mainmemory.writebyte(0x00F357, 1)
		end
	else if (id == 32) then
		-- Give Player 1/2 Magic
		if (take) then
			mainmemory.writebyte(0x00F37B, 0)
		else
			mainmemory.writebyte(0x00F37B, 1)
		end
	end
	else if (id == 33) then
		-- Give Player 1/4 Magic
		if (take) then
			mainmemory.writebyte(0x00F37B, 0)
		else
			mainmemory.writebyte(0x00F37B, 2)
	end
end


-- Place all main code inside an always true while loop to maintain indefinite operation.
while true do
	-- Refresh counter expired, time to make a call to the server.
	if refresh <= 0 then
		request = comm.httpGet("https://"..url.."/pastlink.php?mode=readDB&key="..key)
		if request = "" then
			-- If nothing is returned, will know the server is offline or unresponsive. Write error info to console.
			console.writeline("ERROR: BizHawk could not connect to the host. Please check the server is online, and that BizHawk was started via 'bizhawk-http.bat'.")
		else if request == "NULL" then
			-- If "NULL" is returned, the connection was successful, but there are no requests to process. Literally do nothing.
		else if request == "WRONGKEY" then
			-- If "WRONGKEY" is returned, the connection was successful, but the request was made with a non-matching key, and the server will deny access. In this case, output an error.
			console.writeline("ERROR: BizHawk sent the wrong key to the host. Access is denied! Check that the keys in config.php and pastlink.lua match.")
		else
		-- Item Management
		if (bizstring.contains(request, "GIVEITEM:00;")) then

		end
		if (bizstring.contains(request, "GIVEITEM:01;")) then

		end
		if (bizstring.contains(request, "GIVEITEM:02;")) then

		end
		if (bizstring.contains(request, "GIVEITEM:03;")) then
			-- TODO: Give Player Ocarina (Inactive))
		end
		if (bizstring.contains(request, "GIVEITEM:04;")) then
			-- TODO: Give Player Ocarina (Active))
		end
		if (bizstring.contains(request, "GIVEITEM:05;")) then
			-- TODO: Give Player Mushroom
		end
		if (bizstring.contains(request, "GIVEITEM:06;")) then
			-- TODO: Give Player Magic Powder
		end
		if (bizstring.contains(request, "GIVEITEM:07;")) then
			-- TODO: Give Player Boomerang
		end
		if (bizstring.contains(request, "GIVEITEM:08;")) then
			-- TODO: Give Player Magic Boomerang
		end
		if (bizstring.contains(request, "GIVEITEM:09;")) then
			-- TODO: Give Player Hookshot
		end
		if (bizstring.contains(bizstring.contains(request, "GIVEITEM:10:")) then
			-- Give Player Bombs
			-- This will need to account for the exact amount of Bombs.
			-- I'm not too sure about this next line and haven't tested it. :/
			-- mainmemory.writebyte(0x00F343, mainmemory.readbyte(0x00F343)+tonumber(bizstring.substring(request, 12, 2))
		end
		if (bizstring.contains(request, "GIVEITEM:11;")) then
			-- TODO: Give Player Fire Rod
		end
		if (bizstring.contains(request, "GIVEITEM:12;")) then
			-- TODO: Give Player Ice Rod
		end
		if (bizstring.contains(request, "GIVEITEM:13;")) then
			-- TODO: Give Player Bombos Medallion
		end
		if (bizstring.contains(request, "GIVEITEM:14;")) then
			-- TODO: Give Player Ether Medallion
		end
		if (bizstring.contains(request, "GIVEITEM:15;")) then
			-- TODO: Give Player Quake Medallion
		end
		if (bizstring.contains(request, "GIVEITEM:16;")) then
			-- TODO: Give Player Lamp
		end
		if (bizstring.contains(request, "GIVEITEM:17;")) then
			-- TODO: Give Player Magic Hammer
		end
		if (bizstring.contains(request, "GIVEITEM:18;")) then
			-- TODO: Give Player Bug Net
		end
		if (bizstring.contains(request, "GIVEITEM:19;")) then
			-- TODO: Give Player Book of Mudora
		end
		if (bizstring.contains(request, "GIVEITEM:20;")) then
			-- TODO: Give Player Bottle #1 (Empty)
		end
		if (bizstring.contains(request, "GIVEITEM:21;")) then
			-- TODO: Give Player Bottle #1 (Red Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:22;")) then
			-- TODO: Give Player Bottle #1 (Green Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:23;")) then
			-- TODO: Give Player Bottle #1 (Blue Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:24;")) then
			-- TODO: Give Player Bottle #1 (Fairy)
		end
		if (bizstring.contains(request, "GIVEITEM:25;")) then
			-- TODO: Give Player Bottle #1 (Bee)
		end
		if (bizstring.contains(request, "GIVEITEM:26;")) then
			-- TODO: Give Player Bottle #1 (Super Bee)
		end
		if (bizstring.contains(request, "GIVEITEM:27;")) then
			-- TODO: Give Player Bottle #2 (Empty)
		end
		if (bizstring.contains(request, "GIVEITEM:28;")) then
			-- TODO: Give Player Bottle #2 (Red Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:29;")) then
			-- TODO: Give Player Bottle #2 (Green Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:30;")) then
			-- TODO: Give Player Bottle #2 (Blue Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:31;")) then
			-- TODO: Give Player Bottle #2 (Fairy)
		end
		if (bizstring.contains(request, "GIVEITEM:32;")) then
			-- TODO: Give Player Bottle #2 (Bee)
		end
		if (bizstring.contains(request, "GIVEITEM:33;")) then
			-- TODO: Give Player Bottle #2 (Super Bee)
		end
		if (bizstring.contains(request, "GIVEITEM:34;")) then
			-- TODO: Give Player Bottle #3 (Empty)
		end
		if (bizstring.contains(request, "GIVEITEM:35;")) then
			-- TODO: Give Player Bottle #3 (Red Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:36;")) then
			-- TODO: Give Player Bottle #3 (Green Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:37;")) then
			-- TODO: Give Player Bottle #3 (Blue Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:38;")) then
			-- TODO: Give Player Bottle #3 (Fairy)
		end
		if (bizstring.contains(request, "GIVEITEM:39;")) then
			-- TODO: Give Player Bottle #3 (Bee)
		end
		if (bizstring.contains(request, "GIVEITEM:40;")) then
			-- TODO: Give Player Bottle #3 (Super Bee)
		end
		if (bizstring.contains(request, "GIVEITEM:41;")) then
			-- TODO: Give Player Bottle #4 (Empty)
		end
		if (bizstring.contains(request, "GIVEITEM:42;")) then
			-- TODO: Give Player Bottle #4 (Red Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:43;")) then
			-- TODO: Give Player Bottle #4 (Green Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:44;")) then
			-- TODO: Give Player Bottle #4 (Blue Potion)
		end
		if (bizstring.contains(request, "GIVEITEM:45;")) then
			-- TODO: Give Player Bottle #4 (Fairy)
		end
		if (bizstring.contains(request, "GIVEITEM:46;")) then
			-- TODO: Give Player Bottle #4 (Bee)
		end
		if (bizstring.contains(request, "GIVEITEM:47;")) then
			-- TODO: Give Player Bottle #4 (Super Bee)
		end
		if (bizstring.contains(request, "GIVEITEM:48;")) then
			-- TODO: Give Player Cane Of Somaria
		end
		if (bizstring.contains(request, "GIVEITEM:49;")) then
			-- TODO: Give Player Cane of Byrna
		end
		if (bizstring.contains(request, "GIVEITEM:50;")) then
			-- TODO: Give Player Magic Cape
		end
		if (bizstring.contains(request, "GIVEITEM:51;")) then
			-- TODO: Give Player Magic Mirror
		end
		if (bizstring.contains(request, "GIVEITEM:52;")) then
			-- TODO: Give Player Power Glove
		end
		if (bizstring.contains(request, "GIVEITEM:53;")) then
			-- TODO: Give Player Titan's Mitt
		end
		if (bizstring.contains(request, "GIVEITEM:54;")) then
			-- TODO: Give Player Pegasus Boots
			-- Remember to include the extra address!
		end
		if (bizstring.contains(request, "GIVEITEM:55;")) then
			-- TODO: Give Player Zora's Flippers
		end
		if (bizstring.contains(request, "GIVEITEM:56;")) then
			-- TODO: Give Player Moon Pearl
		end
		if (bizstring.contains(request, "GIVEITEM:57;")) then
			-- TODO: Give Player Fighter's Sword
		end
		if (bizstring.contains(request, "GIVEITEM:58;")) then
			-- TODO: Give Player Master Sword
		end
		if (bizstring.contains(request, "GIVEITEM:59;")) then
			-- TODO: Give Player Tempered Sword
		end
		if (bizstring.contains(request, "GIVEITEM:60;")) then
			-- TODO: Give Player Gold Sword
		end
		if (bizstring.contains(request, "GIVEITEM:61;")) then
			-- TODO: Give Player Fighter's Shield
		end
		if (bizstring.contains(request, "GIVEITEM:62;")) then
			-- TODO: Give Player Fire Shield
		end
		if (bizstring.contains(request, "GIVEITEM:63;")) then
			-- TODO: Give Player Mirror Shield
		end
		if (bizstring.contains(request, "GIVEITEM:64;")) then
			-- TODO: Give Player Green Mail
		end
		if (bizstring.contains(request, "GIVEITEM:65;")) then
			-- TODO: Give Player Blue Mail
		end
		if (bizstring.contains(request, "GIVEITEM:66;")) then
			-- TODO: Give Player Red Mail
		end
		if (bizstring.contains(request, "GIVEITEM:67;")) then
			-- TODO: Give Player 1/2 Magic
		end
		-- Cucco Storm aka Psychotic Chickens!
		if (bizstring.contains(request, "CUCCOSTORM;")) then
			if (mainmemory.readbyte(0x000E20) == 11) then
				mainmemory.writebyte(0x000DA0, 35)
			end
			if (mainmemory.readbyte(0x000E21) == 11) then
				mainmemory.writebyte(0x000DA1, 35)
			end
			if (mainmemory.readbyte(0x000E22) == 11) then
				mainmemory.writebyte(0x000DA2, 35)
			end
			if (mainmemory.readbyte(0x000E23) == 11) then
				mainmemory.writebyte(0x000DA3, 35)
			end
			if (mainmemory.readbyte(0x000E24) == 11) then
				mainmemory.writebyte(0x000DA4, 35)
			end
			if (mainmemory.readbyte(0x000E25) == 11) then
				mainmemory.writebyte(0x000DA5, 35)
			end
			if (mainmemory.readbyte(0x000E26) == 11) then
				mainmemory.writebyte(0x000DA6, 35)
			end
			if (mainmemory.readbyte(0x000E27) == 11) then
				mainmemory.writebyte(0x000DA7, 35)
			end
			if (mainmemory.readbyte(0x000E28) == 11) then
				mainmemory.writebyte(0x000DA8, 35)
			end
			if (mainmemory.readbyte(0x000E29) == 11) then
				mainmemory.writebyte(0x000DA9, 35)
			end
			if (mainmemory.readbyte(0x000E2A) == 11) then
				mainmemory.writebyte(0x000DAA, 35)
			end
			if (mainmemory.readbyte(0x000E2B) == 11) then
				mainmemory.writebyte(0x000DAB, 35)
			end
			if (mainmemory.readbyte(0x000E2C) == 11) then
				mainmemory.writebyte(0x000DAC, 35)
			end
			if (mainmemory.readbyte(0x000E2D) == 11) then
				mainmemory.writebyte(0x000DAD, 35)
			end
			if (mainmemory.readbyte(0x000E2E) == 11) then
				mainmemory.writebyte(0x000DAE, 35)
			end
			if (mainmemory.readbyte(0x000E2F) == 11) then
				mainmemory.writebyte(0x000DAF, 35)
			end
			if (mainmemory.readbyte(0x000E30) == 11) then
				mainmemory.writebyte(0x000DB0, 35)
			end
			if (mainmemory.readbyte(0x000E31) == 11) then
				mainmemory.writebyte(0x000DB1, 35)
			end
			if (mainmemory.readbyte(0x000E32) == 11) then
				mainmemory.writebyte(0x000DB2, 35)
			end
			if (mainmemory.readbyte(0x000E33) == 11) then
				mainmemory.writebyte(0x000DB3, 35)
			end
		end
		-- Reset the refresh counter back to initial value to begin countdown again.
		refresh = refreshtime
	else
		-- Not time yet, decrement one frame from timer.
		refresh = refresh-1;
	end	
	-- Once everything is checked, advance BizHawk a frame.
	emu.frameadvance();
end