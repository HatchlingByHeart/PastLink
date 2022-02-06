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
		if take then
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
		if take then
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
		if take then
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
		if take then
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
		if take then
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
		if take then
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
		if take then
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
		if take then
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
		if take then
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
		if take then
			mainmemory.writebyte(0x00F342, 0)
		else
			mainmemory.writebyte(0x00F342, 1)
		end
	else if (id == 10) then
		-- Fire Rod
		if take then
			mainmemory.writebyte(0x00F345, 0)
		else
			mainmemory.writebyte(0x00F345, 1)
		end
	else if (id == 11) then
		-- Ice Rod
		if take then
			mainmemory.writebyte(0x00F346, 0)
		else
			mainmemory.writebyte(0x00F346, 1)
		end
	else if (id == 12) then
		-- Bombos Medallion
		if take then
			mainmemory.writebyte(0x00F347, 0)
		else
			mainmemory.writebyte(0x00F347, 1)
		end
	else if (id == 13) then
		-- Ether Medallion
		if take then
			mainmemory.writebyte(0x00F348, 0)
		else
			mainmemory.writebyte(0x00F348, 1)
		end
	else if (id == 14) then
		-- Quake Medallion
		if take then
			mainmemory.writebyte(0x00F349, 0)
		else
			mainmemory.writebyte(0x00F349, 1)
		end
	else if (id == 15) then
		-- Lamp
		if take then
			mainmemory.writebyte(0x00F34A, 0)
		else
			mainmemory.writebyte(0x00F34A, 1)
		end
	else if (id == 16) then
		-- Magic Hammer
		if take then
			mainmemory.writebyte(0x00F34B, 0)
		else
			mainmemory.writebyte(0x00F34B, 1)
		end
	else if (id == 17) then
		-- Bug Net
		if take then
			mainmemory.writebyte(0x00F34D, 0)
		else
			mainmemory.writebyte(0x00F34D, 1)
		end
	else if (id == 18) then
		-- Book of Mudora
		if take then
			mainmemory.writebyte(0x00F34E, 0)
		else
			mainmemory.writebyte(0x00F34E, 1)
		end
	else if (id == 19) then
		-- Bottle #1
		if take then
			mainmemory.writebyte(0x00F35C, 0)
		else
			mainmemory.writebyte(0x00F35C, 2)
		end
	else if (id == 20) then
		-- Bottle #2
		if take then
			mainmemory.writebyte(0x00F35D, 0)
		else
			mainmemory.writebyte(0x00F35D, 2)
		end
	else if (id == 21) then
		-- Bottle #3
		if take then
			mainmemory.writebyte(0x00F35E, 0)
		else
			mainmemory.writebyte(0x00F35E, 2)
		end
	else if (id == 22) then
		-- Bottle #4
		if take then
			mainmemory.writebyte(0x00F35F, 0)
		else
			mainmemory.writebyte(0x00F35F, 2)
		end
	else if (id == 23) then
		-- Cane Of Somaria
		if take then
			mainmemory.writebyte(0x00F350, 0)
		else
			mainmemory.writebyte(0x00F350, 1)
		end
	else if (id == 24) then
		-- Cane of Byrna
		if take then
			mainmemory.writebyte(0x00F351, 0)
		else
			mainmemory.writebyte(0x00F351, 1)
		end
	else if (id == 25) then
		-- Magic Cape
		if take then
			mainmemory.writebyte(0x00F352, 0)
		else
			mainmemory.writebyte(0x00F352, 1)
		end
	else if (id == 26) then
		-- Magic Mirror
		if take then
			mainmemory.writebyte(0x00F353, 0)
		else
			mainmemory.writebyte(0x00F353, 2)
		end
	else if (id == 27) then
		-- Power Glove
		if take then
			mainmemory.writebyte(0x00F354, 0)
		else
			mainmemory.writebyte(0x00F354, 1)
		end
	else if (id == 28) then
		-- Titan's Mitt
		if take then
			mainmemory.writebyte(0x00F354, 0)
		else
			mainmemory.writebyte(0x00F354, 2)
		end
	else if (id == 29) then
		-- Pegasus Boots
		if take then
			mainmemory.writebyte(0x00F355, 0)
			mainmemory.writebyte(0x00F379, 0)
		else
			mainmemory.writebyte(0x00F355, 1)
			mainmemory.writebyte(0x00F379, 108)
		end
	else if (id == 30) then
		-- Zora's Flippers
		if take then
			mainmemory.writebyte(0x00F356, 0)
		else
			mainmemory.writebyte(0x00F356, 1)
		end
	else if (id == 31) then
		-- Moon Pearl
		if take then
			mainmemory.writebyte(0x00F357, 0)
		else
			mainmemory.writebyte(0x00F357, 1)
		end
	else if (id == 32) then
		-- Give Player 1/2 Magic
		if take then
			mainmemory.writebyte(0x00F37B, 0)
		else
			mainmemory.writebyte(0x00F37B, 1)
		end
	end
	else if (id == 33) then
		-- Give Player 1/4 Magic
		if take then
			mainmemory.writebyte(0x00F37B, 0)
		else
			mainmemory.writebyte(0x00F37B, 2)
	end
end

function cuccostorm(enable)
	-- Cucco Storm aka Psychotic Chickens!
	if (mainmemory.readbyte(0x000E20) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA0, 35)
		else
			mainmemory.writebyte(0x000DA0, 0)
		end
	end
	if (mainmemory.readbyte(0x000E21) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA1, 35)
		else
			mainmemory.writebyte(0x000DA1, 0)
		end
	end
	if (mainmemory.readbyte(0x000E22) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA2, 35)
		else
			mainmemory.writebyte(0x000DA2, 0)
		end
	end
	if (mainmemory.readbyte(0x000E23) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA3, 35)
		else
			mainmemory.writebyte(0x000DA3, 0)
		end
	end
	if (mainmemory.readbyte(0x000E24) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA4, 35)
		else
			mainmemory.writebyte(0x000DA4, 0)
		end
	end
	if (mainmemory.readbyte(0x000E25) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA5, 35)
		else
			mainmemory.writebyte(0x000DA5, 0)
		end
	end
	if (mainmemory.readbyte(0x000E26) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA6, 35)
		else
			mainmemory.writebyte(0x000DA6, 0)
		end
	end
	if (mainmemory.readbyte(0x000E27) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA7, 35)
		else
			mainmemory.writebyte(0x000DA7, 0)
		end
	end
	if (mainmemory.readbyte(0x000E28) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA8, 35)
		else
			mainmemory.writebyte(0x000DA8, 0)
		end
	end
	if (mainmemory.readbyte(0x000E29) == 11) then
		if enable then
			mainmemory.writebyte(0x000DA9, 35)
		else
			mainmemory.writebyte(0x000DA9, 0)
		end
	end
	if (mainmemory.readbyte(0x000E2A) == 11) then
		if enable then
			mainmemory.writebyte(0x000DAA, 35)
		else
			mainmemory.writebyte(0x000DAA, 0)
		end
	end
	if (mainmemory.readbyte(0x000E2B) == 11) then
		if enable then
			mainmemory.writebyte(0x000DAB, 35)
		else
			mainmemory.writebyte(0x000DAB, 0)
		end
	end
	if (mainmemory.readbyte(0x000E2C) == 11) then
		if enable then
			mainmemory.writebyte(0x000DAC, 35)
		else
			mainmemory.writebyte(0x000DAC, 0)
		end
	end
	if (mainmemory.readbyte(0x000E2D) == 11) then
		if enable then
			mainmemory.writebyte(0x000DAD, 35)
		else
			mainmemory.writebyte(0x000DAD, 0)
		end
	end
	if (mainmemory.readbyte(0x000E2E) == 11) then
		if enable then
			mainmemory.writebyte(0x000DAE, 35)
		else
			mainmemory.writebyte(0x000DAE, 0)
		end
	end
	if (mainmemory.readbyte(0x000E2F) == 11) then
		if enable then
			mainmemory.writebyte(0x000DAF, 35)
		else
			mainmemory.writebyte(0x000DAF, 0)
		end
	end
	if (mainmemory.readbyte(0x000E30) == 11) then
		if enable then
			mainmemory.writebyte(0x000DB0, 35)
		else
			mainmemory.writebyte(0x000DB0, 0)
		end
	end
	if (mainmemory.readbyte(0x000E31) == 11) then
		if enable then
			mainmemory.writebyte(0x000DB1, 35)
		else
			mainmemory.writebyte(0x000DB1, 0)
		end
	end
	if (mainmemory.readbyte(0x000E32) == 11) then
		if enable then
			mainmemory.writebyte(0x000DB2, 35)
		else
			mainmemory.writebyte(0x000DB2, 0)
		end
	end
	if (mainmemory.readbyte(0x000E33) == 11) then
		if enable then
			mainmemory.writebyte(0x000DB3, 35)
		else
			mainmemory.writebyte(0x000DB3, 0)
		end
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
		if (bizstring.startswith(request, "GIVEITEM")) then
			edititem(tonumber(bizstring.substring(request, 10, 2),false))
		end
		if (bizstring.startswith(request, "TAKEITEM")) then
			edititem(tonumber(bizstring.substring(request, 10, 2),true))
		end
		
		-- Cucco Storm
		if (bizstring.startswith(request, "CUCOSTRM")) then
			cuccostorm(tonumber(bizstring.substring(request, 10, 1),true))
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