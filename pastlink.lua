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

-- Place all main code inside an always true while loop to maintain indefinite operation.
while true do
	-- Refresh counter expired, time to make a call to the server.
	if refresh <= 0 then
		request = comm.httpGet("https://"..url.."/pastlink.php?mode=readDB&key="..key)
		-- If the request does not receive an answer, we will know the server is offline or unresponsive.
		if request = "" then
			console.writeline("ERROR: BizHawk could not connect to the host. Please check the server is online, and that BizHawk was started via 'bizhawk-http.bat'.")
		-- If the request was made with a non-matching key, the server will deny access.
		-- In this case, output an error and terminate script execution.
		else if request == "WRONGKEY" then
			console.writeline("ERROR: BizHawk sent the wrong key to the host. Access is denied! Check that the keys in config.php and pastlink.lua match.")
			end
		else
			-- Item Management
			if (request == "GIVEITEM:0") then
				-- TODO: Give Player Normal Bow
			else if (request == "GIVEITEM:1") then
				-- TODO: Give Player Silver Bow
			else if (request == "GIVEITEM:2") then
				-- TODO: Give Player Shovel
			else if (request == "GIVEITEM:3") then
				-- TODO: Give Player Ocarina (Inactive)
			else if (request == "GIVEITEM:4") then
				-- TODO: Give Player Ocarina (Active)
			else if (request == "GIVEITEM:5") then
				-- TODO: Give Player Mushroom
			else if (request == "GIVEITEM:6") then
				-- TODO: Give Player Magic Powder
			else if (request == "GIVEITEM:7") then
				-- TODO: Give Player Boomerang
			else if (request == "GIVEITEM:8") then
				-- TODO: Give Player Magic Boomerang
			else if (request == "GIVEITEM:9") then
				-- TODO: Give Player Hookshot
			else if (request == "GIVEITEM:10") then
				-- TODO: Give Player Bombs
				-- This will need to account for the exact amount of Bombs.
			else if (request == "GIVEITEM:11") then
				-- TODO: Give Player Fire Rod
			else if (request == "GIVEITEM:12") then
				-- TODO: Give Player Ice Rod
			else if (request == "GIVEITEM:13") then
				-- TODO: Give Player Bombos Medallion
			else if (request == "GIVEITEM:14") then
				-- TODO: Give Player Ether Medallion
			else if (request == "GIVEITEM:15") then
				-- TODO: Give Player Quake Medallion
			else if (request == "GIVEITEM:16") then
				-- TODO: Give Player Lamp
			else if (request == "GIVEITEM:17") then
				-- TODO: Give Player Magic Hammer
			else if (request == "GIVEITEM:18") then
				-- TODO: Give Player Bug Net
			else if (request == "GIVEITEM:19") then
				-- TODO: Give Player Book of Mudora
			else if (request == "GIVEITEM:20") then
				-- TODO: Give Player Bottle #1 (Empty)
			else if (request == "GIVEITEM:21") then
				-- TODO: Give Player Bottle #1 (Red Potion)
			else if (request == "GIVEITEM:22") then
				-- TODO: Give Player Bottle #1 (Green Potion)
			else if (request == "GIVEITEM:23") then
				-- TODO: Give Player Bottle #1 (Blue Potion)
			else if (request == "GIVEITEM:24") then
				-- TODO: Give Player Bottle #1 (Fairy)
			else if (request == "GIVEITEM:25") then
				-- TODO: Give Player Bottle #1 (Bee)
			else if (request == "GIVEITEM:26") then
				-- TODO: Give Player Bottle #1 (Super Bee)
			else if (request == "GIVEITEM:27") then
				-- TODO: Give Player Bottle #2 (Empty)
			else if (request == "GIVEITEM:28") then
				-- TODO: Give Player Bottle #2 (Red Potion)
			else if (request == "GIVEITEM:29") then
				-- TODO: Give Player Bottle #2 (Green Potion)
			else if (request == "GIVEITEM:30") then
				-- TODO: Give Player Bottle #2 (Blue Potion)
			else if (request == "GIVEITEM:31") then
				-- TODO: Give Player Bottle #2 (Fairy)
			else if (request == "GIVEITEM:32") then
				-- TODO: Give Player Bottle #2 (Bee)
			else if (request == "GIVEITEM:33") then
				-- TODO: Give Player Bottle #2 (Super Bee)
			else if (request == "GIVEITEM:34") then
				-- TODO: Give Player Bottle #3 (Empty)
			else if (request == "GIVEITEM:35") then
				-- TODO: Give Player Bottle #3 (Red Potion)
			else if (request == "GIVEITEM:36") then
				-- TODO: Give Player Bottle #3 (Green Potion)
			else if (request == "GIVEITEM:37") then
				-- TODO: Give Player Bottle #3 (Blue Potion)
			else if (request == "GIVEITEM:38") then
				-- TODO: Give Player Bottle #3 (Fairy)
			else if (request == "GIVEITEM:39") then
				-- TODO: Give Player Bottle #3 (Bee)
			else if (request == "GIVEITEM:40") then
				-- TODO: Give Player Bottle #3 (Super Bee)
			else if (request == "GIVEITEM:41") then
				-- TODO: Give Player Bottle #4 (Empty)
			else if (request == "GIVEITEM:42") then
				-- TODO: Give Player Bottle #4 (Red Potion)
			else if (request == "GIVEITEM:43") then
				-- TODO: Give Player Bottle #4 (Green Potion)
			else if (request == "GIVEITEM:44") then
				-- TODO: Give Player Bottle #4 (Blue Potion)
			else if (request == "GIVEITEM:45") then
				-- TODO: Give Player Bottle #4 (Fairy)
			else if (request == "GIVEITEM:46") then
				-- TODO: Give Player Bottle #4 (Bee)
			else if (request == "GIVEITEM:47") then
				-- TODO: Give Player Bottle #4 (Super Bee)
			else if (request == "GIVEITEM:48") then
				-- TODO: Give Player Cane Of Somaria
			else if (request == "GIVEITEM:49") then
				-- TODO: Give Player Cane of Byrna
			else if (request == "GIVEITEM:50") then
				-- TODO: Give Player Magic Cape
			else if (request == "GIVEITEM:51") then
				-- TODO: Give Player Magic Mirror
			else if (request == "GIVEITEM:52") then
				-- TODO: Give Player Power Glove
			else if (request == "GIVEITEM:53") then
				-- TODO: Give Player Titan's Mitt
			else if (request == "GIVEITEM:54") then
				-- TODO: Give Player Pegasus Boots
				-- Remember to include the extra address!
			else if (request == "GIVEITEM:55") then
				-- TODO: Give Player Zora's Flippers
			else if (request == "GIVEITEM:56") then
				-- TODO: Give Player Moon Pearl
			else if (request == "GIVEITEM:57") then
				-- TODO: Give Player Fighter's Sword
			else if (request == "GIVEITEM:58") then
				-- TODO: Give Player Master Sword
			else if (request == "GIVEITEM:59") then
				-- TODO: Give Player Tempered Sword
			else if (request == "GIVEITEM:60") then
				-- TODO: Give Player Gold Sword
			else if (request == "GIVEITEM:61") then
				-- TODO: Give Player Fighter's Shield
			else if (request == "GIVEITEM:62") then
				-- TODO: Give Player Fire Shield
			else if (request == "GIVEITEM:63") then
				-- TODO: Give Player Mirror Shield
			else if (request == "GIVEITEM:64") then
				-- TODO: Give Player Green Mail
			else if (request == "GIVEITEM:65") then
				-- TODO: Give Player Blue Mail
			else if (request == "GIVEITEM:66") then
				-- TODO: Give Player Red Mail
			else if (request == "GIVEITEM:67") then
				-- TODO: Give Player 1/2 Magic
			
			-- Cucco Storm aka Psychotic Chickens!
			else if (request == "CUCCOSTORM") then
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
				emu.frameadvance();
			end
			-- Reset the refresh counter back to initial value to begin countdown again.
			refresh = refreshtime
	else
		-- Not time yet, decrement one frame from timer.
		refresh = refresh-1;
	-- Once everything is checked, advance BizHawk a frame.
	emu.frameadvance();
end