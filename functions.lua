-- PastLink Functions

-- FUNCTION: Read Command
-- This function reads the file that stores the latest command.
-- It then automatically erases the content, signalling Ground Control to write the next command to the file.
function readcommand()
	-- Open file "command" for reading.
	file = io.open("command", "r+")
	io.input(file)
	data = io.read()
	io.close(file)
	-- Open the file again in overwrite mode to erase data from it.
	file = io.open("command", "w+")
	io.close(file)
	return data
end

-- FUNCTION: Sleep
-- Pauses processing of Lua code for a certain number of frames.
-- Note that this does *not* pause emulation, it is designed to delay commands, not the game.
function sleep(n)
	n = tonumber(n)
	if (n > 0) then
		repeat
			emu.frameadvance()
			a = a + 1
		until (a > n)
	end
end

-- FUNCTION: Edit Rupees
-- Argument quantity (sint): The number of rupees to set, give, or take.
function editrupees(quantity)
	-- Check if quantity is provided.
	if (quantity) then
		-- Check for modifiers (- or +) and subtract or add quantity respectively if modifiers are found.
		-- An absolute value is assigned if no modifiers are found. (example: "+3" adds 3, "-3" subtracts 3, "3" sets value to 3)
		if (bizstring.startswith(quantity, "+")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
			-- Check that the function won't cause internal rupee count to rise above 9999.
			if (mainmemory.read_s16_le(ADDR_RUPEES)+quantity > 9999) then
				mainmemory.write_s16_le(ADDR_RUPEES, 9999)
			else
				mainmemory.write_s16_le(ADDR_RUPEES, mainmemory.read_s16_le(ADDR_RUPEES)+quantity)
			end
			gui.addmessage(USER.." gave you "..quantity.." Rupee"..PLURAL.."!")
			return true
		elseif (bizstring.startswith(quantity, "-")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
			-- Check that the function won't cause internal rupee count to fall below 0.
			if (mainmemory.read_s16_le(ADDR_RUPEES)-quantity < 0) then
				mainmemory.write_s16_le(ADDR_RUPEES, 0)
			else
				mainmemory.write_s16_le(ADDR_RUPEES, mainmemory.read_s16_le(ADDR_RUPEES)-quantity)
			end
			gui.addmessage(USER.." took away "..quantity.." Rupee"..PLURAL.."!")
			return true
		else
			quantity = tonumber(quantity)
			if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
			-- Check that the amount specified is valid (0-9999). Output error if it isn't.
			if (quantity < 0 or quantity > 9999) then
				console.writeline("ERROR: Function giverupees(): Quantity provided is not valid (should be 0-9999).")
				return false
			else
				mainmemory.write_s16_le(ADDR_RUPEES, quantity)
				gui.addmessage(USER.." set your Rupee count to "..quantity.." Rupee"..PLURAL.."!")
				return true
			end
		end
	else
		console.writeline("ERROR: Function editrupees(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Edit Bombs
-- Argument quantity (sint): The number of bombs to set, give, or take.
function editbombs(quantity)
	-- Check if quantity is provided.
	if (quantity) then
		-- Check for modifiers (- or +) and subtract or add quantity respectively if modifiers are found.
		-- An absolute value is assigned if no modifiers are found. (example: "+3" adds 3, "-3" subtracts 3, "3" sets value to 3)
		if (bizstring.startswith(quantity, "+")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
			-- Check that the function won't cause internal bomb count to rise above 50.
			if (mainmemory.readbyte(ADDR_BOMBS)+quantity > 50) then
				mainmemory.writebyte(ADDR_BOMBS, 50)
			else
				mainmemory.writebyte(ADDR_BOMBS, mainmemory.readbyte(ADDR_BOMBS)+quantity)
			end
			gui.addmessage(USER.." gave you "..quantity.." Bomb"..PLURAL.."!")
			return true
		elseif (bizstring.startswith(quantity, "-")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
			-- Check that the function won't cause internal bomb count to fall below 0.
			if (mainmemory.readbyte(ADDR_BOMBS)-quantity < 0) then
				mainmemory.writebyte(ADDR_BOMBS, 0)
			else
				mainmemory.writebyte(ADDR_BOMBS, mainmemory.readbyte(ADDR_BOMBS)-quantity)
			end
			gui.addmessage(USER.." took away "..quantity.." Bomb"..PLURAL.."!")
			return true
		else
			quantity = tonumber(quantity)
			if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
			-- Check that the amount specified is valid (0-50). Output error if it isn't.
			if (quantity < 0 or quantity > 50) then
				console.writeline("ERROR: Function givebombs(): Quantity provided is not valid (should be 0-50).")
				return false
			else
				mainmemory.writebyte(ADDR_BOMBS, quantity)
				gui.addmessage(USER.." set your Bomb count to "..quantity.." Bomb"..PLURAL.."!")
				return true
			end
		end
	else
		console.writeline("ERROR: Function editbombs(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Edit Arrows
-- Argument quantity (sint): The number of arrows to set, give, or take.
function editarrows(quantity)
	-- Check if quantity is provided.
	if (quantity) then
		-- Check for modifiers (- or +) and subtract or add quantity respectively if modifiers are found.
		-- An absolute value is assigned if no modifiers are found. (example: "+3" adds 3, "-3" subtracts 3, "3" sets value to 3)
		if (bizstring.startswith(quantity, "+")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
			-- Check that the function won't cause internal arrow count to rise above 70.
			if (mainmemory.readbyte(ADDR_ARROWS)+quantity > 70) then
				mainmemory.writebyte(ADDR_ARROWS, 70)
			else
				mainmemory.writebyte(ADDR_ARROWS, mainmemory.readbyte(ADDR_ARROWS)+quantity)
			end
			gui.addmessage(USER.." gave you "..quantity.." Arrow"..PLURAL.."!")
			return true
		elseif (bizstring.startswith(quantity, "-")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
			-- Check that the function won't cause internal arrow count to fall below 0.
			if (mainmemory.readbyte(ADDR_ARROWS)-quantity < 0) then
				mainmemory.writebyte(ADDR_ARROWS, 0)
			else
				mainmemory.writebyte(ADDR_ARROWS, mainmemory.readbyte(ADDR_ARROWS)-quantity)
			end
			gui.addmessage(USER.." took away "..quantity.." Arrow"..PLURAL.."!")
			return true
		else
			quantity = tonumber(quantity)
			if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
			-- Check that the amount specified is valid (0-70). Output error if it isn't.
			if (quantity < 0 or quantity > 70) then
				console.writeline("ERROR: Function givearrows(): Quantity provided is not valid (should be 0-70).")
				return false
			else
				mainmemory.writebyte(ADDR_ARROWS, quantity)
				gui.addmessage(USER.." set your Arrow count to "..quantity.." Arrow"..PLURAL.."!")
				return true
			end
		end
	else
		console.writeline("ERROR: Function editarrows(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Edit Normal Bow
-- Argument val (int): 0: Take, 1: Give
function editnormalbow(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editnormalbow(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		if (mainmemory.readbyte(ADDR_ARROWS) >= 1) then
			mainmemory.writebyte(ADDR_BOW, 2)
		else
			mainmemory.writebyte(ADDR_BOW, 1)
		end
		mainmemory.writebyte(ADDR_BOWSTACK, bit.set(mainmemory.readbyte(ADDR_BOWSTACK),1))
		gui.addmessage(USER.." gave you a Normal Bow!")
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_BOWSTACK),2) and bit.check(mainmemory.readbyte(ADDR_BOWSTACK),3)) then
			if (mainmemory.readbyte(ADDR_ARROWS) >= 1) then
				mainmemory.writebyte(ADDR_BOW, 4)
			else
				mainmemory.writebyte(ADDR_BOW, 3)
			end
		else
			mainmemory.writebyte(ADDR_BOW, 0)
		end
		mainmemory.writebyte(ADDR_BOWSTACK, bit.clear(mainmemory.readbyte(ADDR_BOWSTACK),1))
		gui.addmessage(USER.." took away your Normal Bow!")
		return true
	end
end

-- FUNCTION: Edit Silver Bow
-- Argument val (int): 0: Take, 1: Give
function editsilverbow(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editsilverbow(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		if (mainmemory.readbyte(ADDR_ARROWS) >= 1) then
			mainmemory.writebyte(ADDR_BOW, 4)
		else
			mainmemory.writebyte(ADDR_BOW, 3)
		end
		mainmemory.writebyte(ADDR_BOWSTACK, bit.set(mainmemory.readbyte(ADDR_BOWSTACK),2))
		mainmemory.writebyte(ADDR_BOWSTACK, bit.set(mainmemory.readbyte(ADDR_BOWSTACK),3))
		gui.addmessage(USER.." gave you a Silver Bow!")
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_BOWSTACK),1)) then
			if (mainmemory.readbyte(ADDR_ARROWS) >= 1) then
				mainmemory.writebyte(ADDR_BOW, 2)
			else
				mainmemory.writebyte(ADDR_BOW, 1)
			end
		else
			mainmemory.writebyte(ADDR_BOW, 0)
		end
		mainmemory.writebyte(ADDR_BOWSTACK, bit.clear(mainmemory.readbyte(ADDR_BOWSTACK),2))
		mainmemory.writebyte(ADDR_BOWSTACK, bit.clear(mainmemory.readbyte(ADDR_BOWSTACK),3))
		gui.addmessage(USER.." took away your Silver Bow!")
		return true
	end
end

-- FUNCTION: Edit Boomerang
-- Argument val (int): 0: Take, 1: Give
function editboomerang(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editboomerang(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_BOOMERANG, 1)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),1))
		gui.addmessage(USER.." gave you a Boomerang!")
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),2)) then
			mainmemory.writebyte(ADDR_BOOMERANG, 2)
		else
			mainmemory.writebyte(ADDR_BOOMERANG, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),1))
		gui.addmessage(USER.." took away your Boomerang!")
		return true
	end
end

-- FUNCTION: Edit Magical Boomerang
-- Argument val (int): 0: Take, 1: Give
function editmagicalboomerang(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editmagicalboomerang(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_BOOMERANG, 2)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),2))
		gui.addmessage(USER.." gave you a Magical Boomerang!")
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),1)) then
			mainmemory.writebyte(ADDR_BOOMERANG, 1)
		else
			mainmemory.writebyte(ADDR_BOOMERANG, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),2))
		gui.addmessage(USER.." took away your Magical Boomerang!")
		return true
	end
end

-- FUNCTION: Edit Mushroom
-- Argument val (int): 0: Take, 1: Give
function editmushroom(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editmushroom(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 1)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),3))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),5))
		gui.addmessage(USER.." gave you a Mushroom!")
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),4)) then
			mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 2)
		else
			mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),3))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),5))
		gui.addmessage(USER.." took away your Mushroom!")
		return true
	end
end

-- FUNCTION: Edit Magic Powder
-- Argument val (int): 0: Take, 1: Give
function editmagicpowder(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editmagicpowder(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 2)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),4))
		gui.addmessage(USER.." gave you a Magic Powder!")
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),3) and bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),5)) then
			mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 2)
		else
			mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),4))
		gui.addmessage(USER.." took away your Magic Powder!")
		return true
	end
end

-- FUNCTION: Edit Shovel
-- Argument val (int): 0: Take, 1: Give
function editshovel(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editshovel(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_SHOVELOCARINA, 1)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),6))
		gui.addmessage(USER.." gave you a Shovel!")
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),8)) then
			mainmemory.writebyte(ADDR_SHOVELOCARINA, 3)
		elseif (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),7)) then
			mainmemory.writebyte(ADDR_SHOVELOCARINA, 2)
		else
			mainmemory.writebyte(ADDR_SHOVELOCARINA, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),6))
		gui.addmessage(USER.." took away your Shovel!")
		return true
	end
end

-- FUNCTION: Edit Ocarina
-- Argument val (int): 0: Take, 1: Give & Deactivate Bird, 2: Give & Activate Bird
function editocarina(val)
	val = tonumber(val)
	if (val < 0 or val > 2) then
		console.writeline("ERROR: Function editocarina(): Value is invalid (should be 0-2)")
		return false
	elseif (val == 2) then
		mainmemory.writebyte(ADDR_SHOVELOCARINA, 3)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),7))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),8))
		gui.addmessage(USER.." gave you an Ocarina, and a free bird!")
		return true
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_SHOVELOCARINA, 2)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),7))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),8))
		gui.addmessage(USER.." gave you an Ocarina!")
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),6)) then
			mainmemory.writebyte(ADDR_SHOVELOCARINA, 1)
		else
			mainmemory.writebyte(ADDR_SHOVELOCARINA, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),7))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),8))
		gui.addmessage(USER.." took away your Ocarina!")
		return true
	end
end

-- FUNCTION: Edit Hookshot
-- Argument val (int): 0: Take, 1: Give
function edithookshot(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function edithookshot(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_HOOKSHOT, 1)
		gui.addmessage(USER.." gave you a Hookshot!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_HOOKSHOT, 0)
		gui.addmessage(USER.." took away your Hookshot!")
		return true
	end
end

-- FUNCTION: Edit Fire Rod
-- Argument val (int): 0: Take, 1: Give
function editfirerod(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editfirerod(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_FIREROD, 1)
		gui.addmessage(USER.." gave you a Fire Rod!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_FIREROD, 0)
		gui.addmessage(USER.." took away your Fire Rod!")
		return true
	end
end

-- FUNCTION: Edit Ice Rod
-- Argument val (int): 0: Take, 1: Give
function editicerod(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editicerod(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_ICEROD, 1)
		gui.addmessage(USER.." gave you a Ice Rod!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_ICEROD, 0)
		gui.addmessage(USER.." took away your Ice Rod!")
		return true
	end
end

-- FUNCTION: Edit Bombos Medallion
-- Argument val (int): 0: Take, 1: Give
function editbombos(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editbombos(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_BOMBOS, 1)
		gui.addmessage(USER.." gave you a Bombos Medallion!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_BOMBOS, 0)
		gui.addmessage(USER.." took away your Bombos Medallion!")
		return true
	end
end

-- FUNCTION: Edit Ether Medallion
-- Argument val (int): 0: Take, 1: Give
function editether(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editether(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_ETHER, 1)
		gui.addmessage(USER.." gave you a Ether Medallion!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_ETHER, 0)
		gui.addmessage(USER.." took away your Ether Medallion!")
		return true
	end
end

-- FUNCTION: Edit Quake Medallion
-- Argument val (int): 0: Take, 1: Give
function editquake(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editquake(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_QUAKE, 1)
		gui.addmessage(USER.." gave you a Quake Medallion!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_QUAKE, 0)
		gui.addmessage(USER.." took away your Quake Medallion!")
		return true
	end
end

-- FUNCTION: Edit Lamp
-- Argument val (int): 0: Take, 1: Give
function editlamp(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editlamp(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_LAMP, 1)
		gui.addmessage(USER.." gave you a Lamp!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_LAMP, 0)
		gui.addmessage(USER.." took away your Lamp!")
		return true
	end
end

-- FUNCTION: Edit Magic Hammer
-- Argument val (int): 0: Take, 1: Give
function editmagichammer(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editmagichammer(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_HAMMER, 1)
		gui.addmessage(USER.." gave you a Magic Hammer!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_HAMMER, 0)
		gui.addmessage(USER.." took away your Magic Hammer!")
		return true
	end
end

-- FUNCTION: Edit Bug Net
-- Argument val (int): 0: Take, 1: Give
function editbugnet(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editbugnet(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_BUGNET, 1)
		gui.addmessage(USER.." gave you a Bug Net!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_BUGNET, 0)
		gui.addmessage(USER.." took away your Bug Net!")
		return true
	end
end

-- FUNCTION: Edit Book of Modura
-- Argument val (int): 0: Take, 1: Give
function editbookofmodura(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editbookofmodura(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_BOOK, 1)
		gui.addmessage(USER.." gave you a Book of Modura!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_BOOK, 0)
		gui.addmessage(USER.." took away your Book of Modura!")
		return true
	end
end

-- FUNCTION: Edit Bottles
-- Argument bottle (int): Bottle Number to Edit (1-4)
-- Argument val (int):
--		0: Take
--		1: Give (Empty)
--		2: Give (Red Potion)
--		3: Give (Green Potion)
--		4: Give (Blue Potion)
--		5: Give (Fairy)
--		6: Give (Bee)
--		7: Give (Super Bee)
function editbottles(bottle,val)
	ret = false
	ret2 = false
	bottle = tonumber(bottle)
	val = tonumber(val)
	if (bottle < 1 or bottle > 4) then
		console.writeline("ERROR: Function editbottles(): Bottle Number is invalid (should be 1-4)")
		ret = false
	elseif (bottle == 1) then
		ADDR_BOTTLE = ADDR_BOTTLE1
		ret = true
	elseif (bottle == 2) then
		ADDR_BOTTLE = ADDR_BOTTLE2
		ret = true
	elseif (bottle == 3) then
		ADDR_BOTTLE = ADDR_BOTTLE3
		ret = true
	elseif (bottle == 4) then
		ADDR_BOTTLE = ADDR_BOTTLE4
		ret = true
	end
	if (val < 0 or val > 7) then
		console.writeline("ERROR: Function editbottles(): Value is invalid (should be 0-7)")
		ret2 = false
	elseif (val == 0 and ret == true) then
		mainmemory.writebyte(ADDR_BOTTLE, 0)
		gui.addmessage(USER.." took away your Bottle ("..bottle..")!")
		ret2 = true
	elseif (val == 1 and ret == true) then
		mainmemory.writebyte(ADDR_BOTTLE, 2)
		gui.addmessage(USER.." gave you a Bottle ("..bottle..")!")
		ret2 = true
	elseif (val == 2 and ret == true) then
		mainmemory.writebyte(ADDR_BOTTLE, 3)
		gui.addmessage(USER.." gave you a Bottle ("..bottle..") and filled it with Red Potion!")
		ret2 = true
	elseif (val == 3 and ret == true) then
		mainmemory.writebyte(ADDR_BOTTLE, 4)
		gui.addmessage(USER.." gave you a Bottle ("..bottle..") and filled it with Green Potion!")
		ret2 = true
	elseif (val == 4 and ret == true) then
		mainmemory.writebyte(ADDR_BOTTLE, 5)
		gui.addmessage(USER.." gave you a Bottle ("..bottle..") and filled it with Blue Potion!")
		ret2 = true
	elseif (val == 5 and ret == true) then
		mainmemory.writebyte(ADDR_BOTTLE, 6)
		gui.addmessage(USER.." gave you a Bottle ("..bottle..") and put a Fairy in it!")
		ret2 = true
	elseif (val == 6 and ret == true) then
		mainmemory.writebyte(ADDR_BOTTLE, 7)
		gui.addmessage(USER.." gave you a Bottle ("..bottle..") and put a Bee in it!")
		ret2 = true
	elseif (val == 7 and ret == true) then
		mainmemory.writebyte(ADDR_BOTTLE, 8)
		gui.addmessage(USER.." gave you a Bottle ("..bottle..") and put a Super Bee in it!")
		ret2 = true
	end
	if (ret == true and ret2 == true) then
		return true
	else
		return false
	end
end

-- FUNCTION: Edit Cane of Somaria
-- Argument val (int): 0: Take, 1: Give
function editcaneofsomaria(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editcaneofsomaria(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_SOMARIA, 1)
		gui.addmessage(USER.." gave you a Cane of Somaria!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_SOMARIA, 0)
		gui.addmessage(USER.." took away your Cane of Somaria!")
		return true
	end
end

-- FUNCTION: Edit Cane of Byrna
-- Argument val (int): 0: Take, 1: Give
function editcaneofbyrna(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editcaneofbyrna(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_BYRNA, 1)
		gui.addmessage(USER.." gave you a Cane of Byrna!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_BYRNA, 0)
		gui.addmessage(USER.." took away your Cane of Byrna!")
		return true
	end
end

-- FUNCTION: Edit Magic Cape
-- Argument val (int): 0: Take, 1: Give
function editmagiccape(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editmagiccape(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_CAPE, 1)
		gui.addmessage(USER.." gave you a Book of Magic Cape!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_CAPE, 0)
		gui.addmessage(USER.." took away your Magic Cape!")
		return true
	end
end

-- FUNCTION: Edit Magic Mirror
-- Argument val (int): 0: Take, 1: Give
function editmagicmirror(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editmagicmirror(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_MIRROR, 2)
		gui.addmessage(USER.." gave you a Magic Mirror!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_MIRROR, 0)
		gui.addmessage(USER.." took away your Magic Mirror!")
		return true
	end
end

-- FUNCTION: Edit Gloves
-- Argument val (int): 0: Take, 1: Give Power Glove, 2: Give Titan's Mitt
function editgloves(val)
	val = tonumber(val)
	if (val < 0 or val > 2) then	
		console.writeline("ERROR: Function editgloves(): Value is invalid (should be 0-2)")
		return false
	elseif (val == 2) then
		mainmemory.writebyte(ADDR_GLOVE, 2)
		gui.addmessage(USER.." gave you a Titan's Mitt!")
		return true
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_GLOVE, 1)
		gui.addmessage(USER.." gave you a Power Glove!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_GLOVE, 0)
		gui.addmessage(USER.." took away your Gloves!")
		return true
	end
end

-- FUNCTION: Edit Pegasus Boots
-- Argument val (int): 0: Take, 1: Give
function editpegasusboots(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editpegasusboots(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_BOOTS1, 1)
		mainmemory.writebyte(ADDR_BOOTS2, 108)
		gui.addmessage(USER.." gave you a pair of Pegasus Boots!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_BOOTS1, 0)
		mainmemory.writebyte(ADDR_BOOTS2, 104)
		gui.addmessage(USER.." took away your Pegasus Boots!")
		return true
	end
end

-- FUNCTION: Edit Zora's Flippers
-- Argument val (int): 0: Take, 1: Give
function editzorasflippers(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editzorasflippers(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_FLIPPERS, 1)
		gui.addmessage(USER.." gave you a pair of Zora's Flippers!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_FLIPPERS, 0)
		gui.addmessage(USER.." took away your Zora's Flippers!")
		return true
	end
end

-- FUNCTION: Edit Moon Pearl
-- Argument val (int): 0: Take, 1: Give
function editmoonpearl(val)
	val = tonumber(val)
	if (val < 0 or val > 1) then
		console.writeline("ERROR: Function editmoonpearl(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_PEARL, 1)
		gui.addmessage(USER.." gave you a Moon Pearl!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_PEARL, 0)
		gui.addmessage(USER.." took away your Moon Pearl!")
		return true
	end
end

-- FUNCTION: Edit Magic Boost
-- Argument val (int): 0: Take, 1: Give 1/2 Magic, 2: Give 1/4 Magic
function editmagicboost(val)
	val = tonumber(val)
	if (val < 0 or val > 2) then
		console.writeline("ERROR: Function editmagicboost(): Value is invalid (should be 0-2)")
		return false
	elseif (val == 2) then
		mainmemory.writebyte(ADDR_MAGICBOOST, 2)
		gui.addmessage(USER.." blessed you with 1/4 Magic Use!")
		return true
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_MAGICBOOST, 1)
		gui.addmessage(USER.." blessed you with 1/2 Magic Use!")
		return true
	elseif (val == 0) then
		mainmemory.writebyte(ADDR_MAGICBOOST, 0)
		gui.addmessage(USER.." took away all Magic Boosts!")
		return true
	end
end

-- FUNCTION: Make Cuccos Angry! Also turns existing enemies, items (on ground), and NPCs into Cuccos.
-- Should not result in softlock since these values are reset every screen transition.
function createandangercuccos()
	result = ""
	ADDR_SPRITETYPE_NAMES = {
	ADDR_SPRITETYPE1,
	ADDR_SPRITETYPE2,
	ADDR_SPRITETYPE3,
	ADDR_SPRITETYPE4,
	ADDR_SPRITETYPE5,
	ADDR_SPRITETYPE6,
	ADDR_SPRITETYPE7,
	ADDR_SPRITETYPE8,
	ADDR_SPRITETYPE9,
	ADDR_SPRITETYPE10,
	ADDR_SPRITETYPE11,
	ADDR_SPRITETYPE12,
	ADDR_SPRITETYPE13,
	ADDR_SPRITETYPE14,
	ADDR_SPRITETYPE15,
	ADDR_SPRITETYPE16,
	ADDR_SPRITETYPE17,
	ADDR_SPRITETYPE18,
	ADDR_SPRITETYPE19,
	ADDR_SPRITETYPE20
	}
	ADDR_SPRITETYPE_VALUES = {
	mainmemory.readbyte(ADDR_SPRITETYPE1),
	mainmemory.readbyte(ADDR_SPRITETYPE2),
	mainmemory.readbyte(ADDR_SPRITETYPE3),
	mainmemory.readbyte(ADDR_SPRITETYPE4),
	mainmemory.readbyte(ADDR_SPRITETYPE5),
	mainmemory.readbyte(ADDR_SPRITETYPE6),
	mainmemory.readbyte(ADDR_SPRITETYPE7),
	mainmemory.readbyte(ADDR_SPRITETYPE8),
	mainmemory.readbyte(ADDR_SPRITETYPE9),
	mainmemory.readbyte(ADDR_SPRITETYPE10),
	mainmemory.readbyte(ADDR_SPRITETYPE11),
	mainmemory.readbyte(ADDR_SPRITETYPE12),
	mainmemory.readbyte(ADDR_SPRITETYPE13),
	mainmemory.readbyte(ADDR_SPRITETYPE14),
	mainmemory.readbyte(ADDR_SPRITETYPE15),
	mainmemory.readbyte(ADDR_SPRITETYPE16),
	mainmemory.readbyte(ADDR_SPRITETYPE17),
	mainmemory.readbyte(ADDR_SPRITETYPE18),
	mainmemory.readbyte(ADDR_SPRITETYPE19),
	mainmemory.readbyte(ADDR_SPRITETYPE20)
	}
	ADDR_AUXSPRITE_NAMES = {
	ADDR_AUXSPRITE1,
	ADDR_AUXSPRITE2,
	ADDR_AUXSPRITE3,
	ADDR_AUXSPRITE4,
	ADDR_AUXSPRITE5,
	ADDR_AUXSPRITE6,
	ADDR_AUXSPRITE7,
	ADDR_AUXSPRITE8,
	ADDR_AUXSPRITE9,
	ADDR_AUXSPRITE10,
	ADDR_AUXSPRITE11,
	ADDR_AUXSPRITE12,
	ADDR_AUXSPRITE13,
	ADDR_AUXSPRITE14,
	ADDR_AUXSPRITE15,
	ADDR_AUXSPRITE16,
	ADDR_AUXSPRITE17,
	ADDR_AUXSPRITE18,
	ADDR_AUXSPRITE19,
	ADDR_AUXSPRITE20
	}
	for i=1,20 do
		for n=1,#CUCCOSTORM_EXCLUDE do
			if (ADDR_SPRITETYPE_VALUES[i] == CUCCOSTORM_EXCLUDE[n]) then
				result = result.."true"
			else
				result = result.."false"
			end
		end
		if not (bizstring.contains(result, "true")) then
			if (mainmemory.readbyte(ADDR_INDOORS) < 1) then
				mainmemory.writebyte(ADDR_SPRITETYPE_NAMES[i], 11)
				mainmemory.writebyte(ADDR_AUXSPRITE_NAMES[i], 35)
			end
		end
		result = ""
	end
end

-- FUNCTION: Calm Down Cuccos!
function calmcuccos()
	if (mainmemory.readbyte(ADDR_SPRITETYPE1) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE1, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE2) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE2, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE3) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE3, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE4) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE4, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE5) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE5, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE6) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE6, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE7) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE7, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE8) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE8, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE9) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE9, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE10) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE10, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE11) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE11, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE12) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE12, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE13) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE13, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE14) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE14, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE15) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE15, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE16) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE16, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE17) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE17, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE18) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE18, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE19) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE19, 0) end
	if (mainmemory.readbyte(ADDR_SPRITETYPE20) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE20, 0) end
end

-- FUNCTION: Cucco Storm aka Psychotic Chickens! (Has a timer of 1 minute, cannot be stacked.)
-- Argument enable (int): 0: Disable (Good Chickens), 1+: Enable (Evil Chickens)
-- UPDATE #1: No longer relies on already present Cuccos and turns all present enemies into Cuccos!
-- UPDATE #2: No longer operates when indoors, since Cuccos cannot attack indoors.
function cuccostorm(enable)
	if (mainmemory.readbyte(ADDR_INDOORS) < 1) then
		if (enable > 0) then
			CUCCOTIMER = 3600
			CUCCOSTORM = true
			createandangercuccos()
			gui.addmessage(USER.." has angered the Chicken Gods!!!")
		else
			if (CUCCOTIMER < 1) then
				gui.addmessage("The Chicken Gods have calmed down!")
			else
				gui.addmessage(USER.." has quelled the Chicken Gods' Rage!")
			end
			CUCCOTIMER = 0
			CUCCOSTORM = false
			calmcuccos()
		end
	else
		gui.addmessage("Cucco Storm cannot be used indoors!")
	end
end

-- FUNCTION: Insta-death
-- Kills the player instantly at the next possible opportunity.
-- Disabled by default. Enable by setting "INSTADEATH_ENABLE" to true in config.lua.
function instadeath()
	if (INSTADEATH_ENABLE) then
		-- Glitch Prevention: Wait until not in a state where you can't die.
		while (mainmemory.readbyte(ADDR_PROGRAM1) ~= 7 and mainmemory.readbyte(ADDR_PROGRAM1) ~= 9) do
			emu.frameadvance()
		end
		-- Wait 30 frames following the while loop to prevent an odd glitch that triggers a fairy revive event even if you don't have one.
		sleep(30)
		mainmemory.writebyte(ADDR_HEARTS, 0)
		-- Wait 1 more frame to refresh the hearts in the HUD before triggering the death.
		emu.frameadvance()
		-- Take away all bottled fairies prior to death. Unfortunately, this is necessary to prevent graphical glitches and a nasty softlock.
		if (mainmemory.readbyte(ADDR_BOTTLE1) == 6) then mainmemory.writebyte(ADDR_BOTTLE1, 0) end
		if (mainmemory.readbyte(ADDR_BOTTLE2) == 6) then mainmemory.writebyte(ADDR_BOTTLE2, 0) end
		if (mainmemory.readbyte(ADDR_BOTTLE3) == 6) then mainmemory.writebyte(ADDR_BOTTLE3, 0) end
		if (mainmemory.readbyte(ADDR_BOTTLE4) == 6) then mainmemory.writebyte(ADDR_BOTTLE4, 0) end
		mainmemory.writebyte(ADDR_SFX1, 38)
		mainmemory.writebyte(ADDR_PROGRAM1, 18)
		gui.addmessage(USER.." done gone and killed you!")
	end
end

-- FUNCTION: Give Small Magic
-- Gives player a small amount of magic equivalent to a small magic jar.
function smlmagic()
	if (mainmemory.readbyte(ADDR_MAGIC) <= 112) then
		mainmemory.writebyte(ADDR_FILLMAGIC, 16)
	end
end

-- FUNCTION: Give Big Magic
-- Gives player full magic, equivalent to a big magic jar.
function bigmagic()
	if (mainmemory.readbyte(ADDR_MAGIC) < 32) then
		mainmemory.writebyte(ADDR_FILLMAGIC, 128)
	end
end

-- FUNCTION: Give Heart
-- Gives player 1 heart.
function heart()
	if (mainmemory.readbyte(ADDR_HEARTS) <= 152) then
		mainmemory.writebyte(ADDR_FILLHEARTS, 8)
	end
end

-- FUNCTION: Give Fairy
-- Gives player hearts equivalent to one fairy.
function fairy()
	if (mainmemory.readbyte(ADDR_HEARTS) <= 104) then
		mainmemory.writebyte(ADDR_FILLHEARTS, 56)
	end
end

-- FUNCTION: Upgrade Sword (1 minute) -- Unused: Not yet implemented into Randomizer
--function swordup1m()
--	mainmemory.writebyte(ADDR_SWORD_BUFF, mainmemory.readbyte(ADDR_SWORD_BUFF)+1)
--end

-- FUNCTION: Downgrade Sword (1 minute) -- Unused: Not yet implemented into Randomizer
--function sworddown1m()
--	mainmemory.writebyte(ADDR_SWORD_BUFF, mainmemory.readbyte(ADDR_SWORD_BUFF)-1)
--end

-- FUNCTION: Upgrade Armor (1 minute) -- Unused: Not yet implemented into Randomizer
--function armorup1m()
--	mainmemory.writebyte(ADDR_ARMOR_BUFF, mainmemory.readbyte(ADDR_ARMOR_BUFF)+1)
--end

-- FUNCTION: Downgrade Armor (1 minute) -- Unused: Not yet implemented into Randomizer
--function armordown1m()
--	mainmemory.writebyte(ADDR_ARMOR_BUFF, mainmemory.readbyte(ADDR_ARMOR_BUFF)-1)
--end

-- FUNCTION: Upgrade Magic (1 minute) -- Unused: Not yet implemented into Randomizer
--function magicup1m()
--	mainmemory.writebyte(ADDR_MAGIC_BUFF, mainmemory.readbyte(ADDR_MAGIC_BUFF)+1)
--end

-- FUNCTION: Downgrade Magic (1 minute) -- Unused: Not yet implemented into Randomizer
--function magicdown1m()
--	mainmemory.writebyte(ADDR_MAGIC_BUFF, mainmemory.readbyte(ADDR_MAGIC_BUFF)-1)
--end

-- FUNCTION: Upgrade Sword (Permanent)
function swordup()
	if (mainmemory.readbyte(ADDR_SWORD) > 4) then
		console.writeline("WARNING: Sword already maximum.")
	else
		mainmemory.writebyte(ADDR_SWORD, mainmemory.readbyte(ADDR_SWORD)+1)
	end
end

-- FUNCTION: Downgrade Sword (Permanent)
function sworddown()
	if (mainmemory.readbyte(ADDR_SWORD) < 0) then
		console.writeline("WARNING: Sword already gone.")
	else
		mainmemory.writebyte(ADDR_SWORD, mainmemory.readbyte(ADDR_SWORD)-1)
	end
end

-- FUNCTION: Upgrade Shield (Permanent)
function shieldup()
	if (mainmemory.readbyte(ADDR_SHIELD) > 3) then
		console.writeline("WARNING: Shield already maximum.")
	else
		mainmemory.writebyte(ADDR_SHIELD, mainmemory.readbyte(ADDR_SHIELD)+1)
	end
end

-- FUNCTION: Downgrade Shield (Permanent)
function shielddown()
	if (mainmemory.readbyte(ADDR_SHIELD) < 0) then
		console.writeline("WARNING: Sword already gone.")
	else
		mainmemory.writebyte(ADDR_SHIELD, mainmemory.readbyte(ADDR_SHIELD)-1)
	end
end

-- FUNCTION: Upgrade Mail (Permanent)
function mailup()
	if (mainmemory.readbyte(ADDR_MAIL) > 2) then
		console.writeline("WARNING: Mail already maximum.")
	else
		mainmemory.writebyte(ADDR_MAIL, mainmemory.readbyte(ADDR_MAIL)+1)
	end
end

-- FUNCTION: Downgrade Mail (Permanent)
function maildown()
	if (mainmemory.readbyte(ADDR_MAIL) < 0) then
		console.writeline("WARNING: Mail already minimum.")
	else
		mainmemory.writebyte(ADDR_MAIL, mainmemory.readbyte(ADDR_MAIL)-1)
	end
end

-- FUNCTION: Give Heart Piece
function giveheartpiece()
	if (mainmemory.readbyte(ADDR_MAXHEARTS) > 152) then
		console.writeline("WARNING: Hearts already maximum")
	else
		if (mainmemory.readbyte(ADDR_HEARTPIECES) > 2) then
			mainmemory.writebyte(ADDR_HEARTPIECES, 0)
			mainmemory.writebyte(ADDR_SFX2, 45)
			sleep(180)
			mainmemory.writebyte(ADDR_MAXHEARTS, mainmemory.readbyte(ADDR_MAXHEARTS)+8)
			mainmemory.writebyte(ADDR_SFX2, 15)
		else
			mainmemory.writebyte(ADDR_HEARTPIECES, mainmemory.readbyte(ADDR_HEARTPIECES)+1)
			mainmemory.writebyte(ADDR_SFX2, 45)
		end
	end
end
	
-- FUNCTION: Remove Heart Piece
function removeheartpiece()
	if (mainmemory.readbyte(ADDR_MAXHEARTS) < 32 and mainmemory.readbyte(ADDR_HEARTPIECES) < 1) then
		console.writeline("WARNING: Hearts already minimum")
	else
		if (mainmemory.readbyte(ADDR_HEARTPIECES) < 1) then
			mainmemory.writebyte(ADDR_HEARTPIECES, 3)
			mainmemory.writebyte(ADDR_SFX2, 45)
			sleep(180)
			mainmemory.writebyte(ADDR_MAXHEARTS, mainmemory.readbyte(ADDR_MAXHEARTS)-8)
			mainmemory.writebyte(ADDR_SFX2, 15)
		else
			mainmemory.writebyte(ADDR_HEARTPIECES, mainmemory.readbyte(ADDR_HEARTPIECES)-1)
			mainmemory.writebyte(ADDR_SFX2, 45)
		end
	end
end

-- FUNCTION: Heart Container
function giveheartcontainer()
	if (mainmemory.readbyte(ADDR_MAXHEARTS) > 152) then
		console.writeline("WARNING: Hearts already maximum")
	else
		mainmemory.writebyte(ADDR_MAXHEARTS, mainmemory.readbyte(ADDR_MAXHEARTS)+8)
		mainmemory.writebyte(ADDR_SFX2, 15)
	end
end

-- FUNCTION: Remove Heart Container
function removeheartcontainer()
	if (mainmemory.readbyte(ADDR_MAXHEARTS) < 32) then
		console.writeline("WARNING: Hearts already minimum")
	else
		mainmemory.writebyte(ADDR_MAXHEARTS, mainmemory.readbyte(ADDR_MAXHEARTS)-8)
		mainmemory.writebyte(ADDR_SFX2, 15)
	end
end

-- FUNCTION: Refresh Health & Magic
function refresh()
	if (mainmemory.readbyte(ADDR_HEARTS) < mainmemory.readbyte(ADDR_MAXHEARTS)) then
		mainmemory.writebyte(ADDR_FILLHEARTS, mainmemory.readbyte(ADDR_MAXHEARTS)-mainmemory.readbyte(ADDR_HEARTS))
	else
		console.writeline("WARNING: Hearts already maximum")
	end
	if (mainmemory.readbyte(ADDR_MAGIC) < 128) then
		mainmemory.writebyte(ADDR_FILLMAGIC, 128-mainmemory.readbyte(ADDR_MAGIC))
	else
		console.writeline("WARNING: Magic already maximum")
	end
end

-- FUNCTION: Create Bees
-- UPDATE: Rabbits that jump out of grass don't like being turned into bees (they crash the game in rage)
-- Exempt the rabbits from beeification. Now they just explode into bees when you talk to them.
-- UPDATE: Now using arrays and for loops to dynamically adjust to the amount of excluded sprites.
function createbees()
	ADDR_SPRITETYPE_NAMES = {
	ADDR_SPRITETYPE1,
	ADDR_SPRITETYPE2,
	ADDR_SPRITETYPE3,
	ADDR_SPRITETYPE4,
	ADDR_SPRITETYPE5,
	ADDR_SPRITETYPE6,
	ADDR_SPRITETYPE7,
	ADDR_SPRITETYPE8,
	ADDR_SPRITETYPE9,
	ADDR_SPRITETYPE10,
	ADDR_SPRITETYPE11,
	ADDR_SPRITETYPE12,
	ADDR_SPRITETYPE13,
	ADDR_SPRITETYPE14,
	ADDR_SPRITETYPE15,
	ADDR_SPRITETYPE16,
	ADDR_SPRITETYPE17,
	ADDR_SPRITETYPE18,
	ADDR_SPRITETYPE19,
	ADDR_SPRITETYPE20
	}
	ADDR_SPRITETYPE_VALUES = {
	mainmemory.readbyte(ADDR_SPRITETYPE1),
	mainmemory.readbyte(ADDR_SPRITETYPE2),
	mainmemory.readbyte(ADDR_SPRITETYPE3),
	mainmemory.readbyte(ADDR_SPRITETYPE4),
	mainmemory.readbyte(ADDR_SPRITETYPE5),
	mainmemory.readbyte(ADDR_SPRITETYPE6),
	mainmemory.readbyte(ADDR_SPRITETYPE7),
	mainmemory.readbyte(ADDR_SPRITETYPE8),
	mainmemory.readbyte(ADDR_SPRITETYPE9),
	mainmemory.readbyte(ADDR_SPRITETYPE10),
	mainmemory.readbyte(ADDR_SPRITETYPE11),
	mainmemory.readbyte(ADDR_SPRITETYPE12),
	mainmemory.readbyte(ADDR_SPRITETYPE13),
	mainmemory.readbyte(ADDR_SPRITETYPE14),
	mainmemory.readbyte(ADDR_SPRITETYPE15),
	mainmemory.readbyte(ADDR_SPRITETYPE16),
	mainmemory.readbyte(ADDR_SPRITETYPE17),
	mainmemory.readbyte(ADDR_SPRITETYPE18),
	mainmemory.readbyte(ADDR_SPRITETYPE19),
	mainmemory.readbyte(ADDR_SPRITETYPE20)
	}
	for i=1,20 do
		for n=1,#BEES_EXCLUDE do
			if (ADDR_SPRITETYPE_VALUES[i] == BEES_EXCLUDE[n]) then
				result = result.."true"
			else
				result = result.."false"
			end
		end
		if not (bizstring.contains(result, "true")) then
			if (mainmemory.readbyte(ADDR_INDOORS) < 1) then mainmemory.writebyte(ADDR_SPRITETYPE_NAMES[i], 121) end
		end
		result = ""
	end
end

-- FUNCTION: Everything is Bees!
function bees(enable)
	if (enable > 0) then
		createbees()
		BEETIMER = 3600
		BEES = true
		gui.addmessage(USER.." has released the Bees! Not the bees!!!")
	else
		if (BEETIMER < 1) then
			gui.addmessage("The Bees have retreated!")
		else
			gui.addmessage(USER.." has contained the Bees!")
		end
		BEETIMER = 0
		BEES = false
	end
end

-- FUNCTION: Slow Dash -- Unused: Not yet implemented into Randomizer
--function slowdash(enable)
--	if (enable == true) then
--		if (SLOWDASH == true) then
--			console.writeline("WARNING: Slow Dash already in effect!")
--		else
--			mainmemory.writebyte(ADDR_SLOWDASH, 1)
--			SLOWDASH = true
--			SLOWDASHTIMER = 3600
--		end
--	else
--		if (SLOWDASH == false) then
--			console.writeline("WARNING: Slow Dash not in effect!")
--		else
--			mainmemory.writebyte(ADDR_SLOWDASH, 0)
--			SLOWDASH = false
--			SLOWDASHTIMER = 0
--		end
--	end
--end