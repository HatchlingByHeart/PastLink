-- PastLink Functions

-- FUNCTION: Edit Rupees
-- Argument quantity (sint): The number of rupees to set, give, or take.
function editrupees(quantity)
	-- Check if quantity is provided.
	if (quantity) then
		-- Check for modifiers (- or +) and subtract or add quantity respectively if modifiers are found.
		-- An absolute value is assigned if no modifiers are found. (example: "+3" adds 3, "-3" subtracts 3, "3" sets value to 3)
		if (bizstring.startswith(quantity, "+")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			-- Check that the function won't cause internal rupee count to rise above 9999.
			if (mainmemory.read_s16_le(ADDR_RUPEES)+quantity > 9999) then
				mainmemory.write_s16_le(ADDR_RUPEES, 9999)
			else
				mainmemory.write_s16_le(ADDR_RUPEES, mainmemory.read_s16_le(ADDR_RUPEES)+quantity)
			end
			return true
		elseif (bizstring.startswith(quantity, "-")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			-- Check that the function won't cause internal rupee count to fall below 0.
			if (mainmemory.read_s16_le(ADDR_RUPEES)-quantity < 0) then
				mainmemory.write_s16_le(ADDR_RUPEES, 0)
			else
				mainmemory.write_s16_le(ADDR_RUPEES, mainmemory.read_s16_le(ADDR_RUPEES)-quantity)
			end
			return true
		else
			quantity = tonumber(quantity)
			-- Check that the amount specified is valid (0-9999). Output error if it isn't.
			if (quantity < 0 || quantity > 9999) then
				console.writeline("ERROR: Function giverupees(): Quantity provided is not valid (should be 0-9999).")
				return false
			else
				mainmemory.write_s16_le(ADDR_RUPEES, quantity)
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
			-- Check that the function won't cause internal bomb count to rise above 50.
			if (mainmemory.readbyte(ADDR_BOMBS)+quantity > 50) then
				mainmemory.writebyte(ADDR_BOMBS, 50)
			else
				mainmemory.writebyte(ADDR_BOMBS, mainmemory.readbyte(ADDR_BOMBS)+quantity)
			end
			return true
		elseif (bizstring.startswith(quantity, "-")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			-- Check that the function won't cause internal bomb count to fall below 0.
			if (mainmemory.readbyte(ADDR_BOMBS)-quantity < 0) then
				mainmemory.writebyte(ADDR_BOMBS, 0)
			else
				mainmemory.writebyte(ADDR_BOMBS, mainmemory.readbyte(ADDR_BOMBS)-quantity)
			end
			return true
		else
			quantity = tonumber(quantity)
			-- Check that the amount specified is valid (0-50). Output error if it isn't.
			if (quantity < 0 || quantity > 50) then
				console.writeline("ERROR: Function givebombs(): Quantity provided is not valid (should be 0-50).")
				return false
			else
				mainmemory.writebyte(ADDR_BOMBS, quantity)
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
			-- Check that the function won't cause internal arrow count to rise above 70.
			if (mainmemory.readbyte(ADDR_ARROWS)+quantity > 70) then
				mainmemory.writebyte(ADDR_ARROWS, 70)
			else
				mainmemory.writebyte(ADDR_ARROWS, mainmemory.readbyte(ADDR_ARROWS)+quantity)
			end
			return true
		elseif (bizstring.startswith(quantity, "-")) then
			quantity = tonumber(bizstring.remove(quantity,0,1))
			-- Check that the function won't cause internal arrow count to fall below 0.
			if (mainmemory.readbyte(ADDR_ARROWS)-quantity < 0) then
				mainmemory.writebyte(ADDR_ARROWS, 0)
			else
				mainmemory.writebyte(ADDR_ARROWS, mainmemory.readbyte(ADDR_ARROWS)-quantity)
			end
			return true
		else
			quantity = tonumber(quantity)
			-- Check that the amount specified is valid (0-70). Output error if it isn't.
			if (quantity < 0 || quantity > 70) then
				console.writeline("ERROR: Function givearrows(): Quantity provided is not valid (should be 0-70).")
				return false
			else
				mainmemory.writebyte(ADDR_ARROWS, quantity)
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
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editnormalbow(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		if (mainmemory.readbyte(ADDR_ARROWS) >= 1) then
			mainmemory.writebyte(ADDR_BOW, 2)
		else
			mainmemory.writebyte(ADDR_BOW, 1)
		end
		mainmemory.writebyte(ADDR_BOWSTACK, bit.set(mainmemory.readbyte(ADDR_BOWSTACK),1))
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_BOWSTACK),2) && bit.check(mainmemory.readbyte(ADDR_BOWSTACK),3)) then
			if (mainmemory.readbyte(ADDR_ARROWS) >= 1) then
				mainmemory.writebyte(ADDR_BOW, 4)
			else
				mainmemory.writebyte(ADDR_BOW, 3)
			end
		else
			mainmemory.writebyte(ADDR_BOW, 0)
		end
		mainmemory.writebyte(ADDR_BOWSTACK, bit.clear(mainmemory.readbyte(ADDR_BOWSTACK),1))
		return true
	end
end

-- FUNCTION: Edit Silver Bow
-- Argument val (int): 0: Take, 1: Give
function editsilverbow(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
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
		return true
	end
end

-- FUNCTION: Edit Boomerang
-- Argument val (int): 0: Take, 1: Give
function editboomerang(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editboomerang(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_BOOMERANG, 1)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),1))
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),2)) then
			mainmemory.writebyte(ADDR_BOOMERANG, 2)
		else
			mainmemory.writebyte(ADDR_BOOMERANG, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),1))
		return true
	end
end

-- FUNCTION: Edit Magical Boomerang
-- Argument val (int): 0: Take, 1: Give
function editmagicalboomerang(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editmagicalboomerang(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_BOOMERANG, 2)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),2))
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),1)) then
			mainmemory.writebyte(ADDR_BOOMERANG, 1)
		else
			mainmemory.writebyte(ADDR_BOOMERANG, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),2))
		return true
	end
end

-- FUNCTION: Edit Mushroom
-- Argument val (int): 0: Take, 1: Give
function editmushroom(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editmushroom(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 1)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),3))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),5))
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),4)) then
			mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 2)
		else
			mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),3))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),5))
		return true
	end
end

-- FUNCTION: Edit Magic Powder
-- Argument val (int): 0: Take, 1: Give
function editmagicpowder(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editmagicpowder(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 2)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),4))
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),3) && bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),5)) then
			mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 2)
		else
			mainmemory.writebyte(ADDR_MUSHROOMPOWDER, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),4))
		return true
	end
end

-- FUNCTION: Edit Shovel
-- Argument val (int): 0: Take, 1: Give
function editshovel(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editshovel(): Value is invalid (should be 0-1)")
		return false
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_SHOVELOCARINA, 1)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),6))
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
		return true
	end
end

-- FUNCTION: Edit Ocarina
-- Argument val (int): 0: Take, 1: Give & Deactivate Bird, 2: Give & Activate Bird
function editocarina(val)
	val = tonumber(val)
	if (val < 0 || val > 2) then
		console.writeline("ERROR: Function editocarina(): Value is invalid (should be 0-2)")
		return false
	elseif (val == 2) then
		mainmemory.writebyte(ADDR_SHOVELOCARINA, 3)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),7))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),8))
		return true
	elseif (val == 1) then
		mainmemory.writebyte(ADDR_SHOVELOCARINA, 2)
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.set(mainmemory.readbyte(ADDR_ITEMSTACK),7))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),8))
		return true
	elseif (val == 0) then
		if (bit.check(mainmemory.readbyte(ADDR_ITEMSTACK),6)) then
			mainmemory.writebyte(ADDR_SHOVELOCARINA, 1)
		else
			mainmemory.writebyte(ADDR_SHOVELOCARINA, 0)
		end
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),7))
		mainmemory.writebyte(ADDR_ITEMSTACK, bit.clear(mainmemory.readbyte(ADDR_ITEMSTACK),8))
		return true
	end
end

-- FUNCTION: Edit Hookshot
-- Argument val (int): 0: Take, 1: Give
function edithookshot(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function edithookshot(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_HOOKSHOT, val)
		return true
	end
end

-- FUNCTION: Edit Fire Rod
-- Argument val (int): 0: Take, 1: Give
function editfirerod(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editfirerod(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_FIREROD, val)
		return true
	end
end

-- FUNCTION: Edit Ice Rod
-- Argument val (int): 0: Take, 1: Give
function editicerod(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editicerod(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_ICEROD, val)
		return true
	end
end

-- FUNCTION: Edit Bombos Medallion
-- Argument val (int): 0: Take, 1: Give
function editbombos(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editbombos(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_BOMBOS, val)
		return true
	end
end

-- FUNCTION: Edit Ether Medallion
-- Argument val (int): 0: Take, 1: Give
function editether(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editether(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_ETHER, val)
		return true
	end
end

-- FUNCTION: Edit Quake Medallion
-- Argument val (int): 0: Take, 1: Give
function editquake(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editquake(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_QUAKE, val)
		return true
	end
end

-- FUNCTION: Edit Lamp
-- Argument val (int): 0: Take, 1: Give
function editlamp(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editlamp(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_LAMP, val)
		return true
	end
end

-- FUNCTION: Edit Magic Hammer
-- Argument val (int): 0: Take, 1: Give
function editmagichammer(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editmagichammer(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_HAMMER, val)
		return true
	end
end

-- FUNCTION: Edit Bug Net
-- Argument val (int): 0: Take, 1: Give
function editbugnet(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editbugnet(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_BUGNET, val)
		return true
	end
end

-- FUNCTION: Edit Book of Modura
-- Argument val (int): 0: Take, 1: Give
function editbookofmodura(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editbookofmodura(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_BOOK, val)
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
	bottle = tonumber(bottle)
	val = tonumber(val)
	if (bottle < 1 || bottle > 4) then
		console.writeline("ERROR: Function editbottles(): Bottle Number is invalid (should be 1-4)")
		return false
	elseif (val < 0 || val > 7) then
		console.writeline("ERROR: Function editbottles(): Value is invalid (should be 0-7)")
		return false
	else
		if (bottle == 1) then
			ADDR_BOTTLE = ADDR_BOTTLE1
		elseif (bottle == 2) then
			ADDR_BOTTLE = ADDR_BOTTLE2
		elseif (bottle == 3) then
			ADDR_BOTTLE = ADDR_BOTTLE3
		elseif (bottle == 4) then
			ADDR_BOTTLE = ADDR_BOTTLE4
		end
		if (val == 0) then
			mainmemory.writebyte(ADDR_BOTTLE, 0)
		else
			mainmemory.writebyte(ADDR_BOTTLE, val+1)
		end
		return true
	end
end

-- FUNCTION: Edit Cane of Somaria
-- Argument val (int): 0: Take, 1: Give
function editcaneofsomaria(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editcaneofsomaria(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_SOMARIA, val)
		return true
	end
end

-- FUNCTION: Edit Cane of Byrna
-- Argument val (int): 0: Take, 1: Give
function editcaneofbyrna(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editcaneofbyrna(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_BYRNA, val)
		return true
	end
end

-- FUNCTION: Edit Magic Cape
-- Argument val (int): 0: Take, 1: Give
function editmagiccape(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editmagiccape(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_CAPE, val)
		return true
	end
end

-- FUNCTION: Edit Magic Mirror
-- Argument val (int): 0: Take, 1: Give
function editmagicmirror(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editmagicmirror(): Value is invalid (should be 0-1)")
		return false
	else
		if (val == 0) then
			mainmemory.writebyte(ADDR_MIRROR, 0)
		elseif (val == 1) then
			mainmemory.writebyte(ADDR_MIRROR, 2)
		end
		return true
	end
end

-- FUNCTION: Edit Gloves
-- Argument val (int): 0: Take, 1: Give Power Glove, 2: Give Titan's Mitt
function editgloves(val)
	val = tonumber(val)
	if (val < 0 || val > 2) then	
		console.writeline("ERROR: Function editgloves(): Value is invalid (should be 0-2)")
		return false
	else
		mainmemory.writebyte(ADDR_GLOVE, val)
		return true
	end
end

-- FUNCTION: Edit Pegasus Boots
-- Argument val (int): 0: Take, 1: Give
function editpegasusboots(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editpegasusboots(): Value is invalid (should be 0-1)")
		return false
	else
		if (val == 0) then
			mainmemory.writebyte(ADDR_BOOTS1, 0)
			mainmemory.writebyte(ADDR_BOOTS2, 0)
		elseif (val == 1) then
			mainmemory.writebyte(ADDR_BOOTS1, 1)
			mainmemory.writebyte(ADDR_BOOTS2, 108)
		end
		return true
	end
end

-- FUNCTION: Edit Zora's Flippers
-- Argument val (int): 0: Take, 1: Give
function editzorasflippers(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editzorasflippers(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_FLIPPERS, val)
		return true
	end
end

-- FUNCTION: Edit Moon Pearl
-- Argument val (int): 0: Take, 1: Give
function editmoonpearl(val)
	val = tonumber(val)
	if (val < 0 || val > 1) then
		console.writeline("ERROR: Function editmoonpearl(): Value is invalid (should be 0-1)")
		return false
	else
		mainmemory.writebyte(ADDR_PEARL, val)
		return true
	end
end

-- FUNCTION: Edit Magic Boost
-- Argument val (int): 0: Take, 1: Give 1/2 Magic, 2: Give 1/4 Magic
function editmagicboost(val)
	val = tonumber(val)
	if (val < 0 || val > 2) then
		console.writeline("ERROR: Function editmagicboost(): Value is invalid (should be 0-2)")
		return false
	else
		mainmemory.writebyte(ADDR_MAGICBOOST, val)
		return true
	end
end

-- FUNCTION: Cucco Storm aka Psychotic Chickens! (Has a timer of 1 minute, cannot be stacked.)
-- Argument enable (int): 0: Disable (Good Chickens), 1+: Enable (Evil Chickens)
-- UPDATE #1: No longer relies on already present Cuccos and turns all present enemies into Cuccos!
-- UPDATE #2: No longer operates when indoors, since Cuccos cannot attack indoors.
function cuccostorm(enable)
	if (ADDR_INDOORS < 1) then
		if (enable > 0) then
			if not (mainmemory.readbyte(ADDR_SPRITETYPE1) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE1, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE1, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE2) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE2, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE2, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE3) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE3, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE3, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE4) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE4, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE4, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE5) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE5, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE5, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE6) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE6, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE6, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE7) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE7, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE7, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE8) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE8, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE8, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE9) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE9, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE9, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE10) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE10, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE10, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE11) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE11, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE11, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE12) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE12, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE12, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE13) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE13, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE13, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE14) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE14, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE14, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE15) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE15, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE15, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE16) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE16, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE16, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE17) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE17, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE17, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE18) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE18, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE18, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE19) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE19, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE19, 35)
			if not (mainmemory.readbyte(ADDR_SPRITETYPE20) == 11) then mainmemory.writebyte(ADDR_SPRITETYPE20, 11)
			mainmemory.writebyte(ADDR_AUXSPRITE20, 35)
			CUCCOTIMER = 3600
			CUCCOSTORM = true
			gui.addmessage(USER.." has angered the Chicken Gods!!!")
		else
			if (mainmemory.readbyte(ADDR_SPRITETYPE1) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE1, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE2) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE2, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE3) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE3, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE4) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE4, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE5) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE5, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE6) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE6, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE7) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE7, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE8) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE8, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE9) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE9, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE10) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE10, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE11) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE11, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE12) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE12, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE13) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE13, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE14) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE14, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE15) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE15, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE16) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE16, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE17) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE17, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE18) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE18, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE19) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE19, 0)
			if (mainmemory.readbyte(ADDR_SPRITETYPE20) == 11) then mainmemory.writebyte(ADDR_AUXSPRITE20, 0)
			CUCCOTIMER = 0
			CUCCOSTORM = false
			gui.addmessage(USER.." has quelled the Chicken Gods' Rage!")
		end
	else
		gui.addmessage("Cucco Storm cannot be used indoors!")
	end
end