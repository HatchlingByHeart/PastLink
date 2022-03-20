-- PastLink is currently in Alpha and NOT READY FOR RELEASE, use only for testing until further notice.

-- URL string of the domain and path of the server to connect to.
URL = "example.com/pastlink"

-- Key string. This value should match the BIZHAWK constant in config.php, or connection will fail.
KEY = "****************"

-- Time (in frames) between calls to server.
-- Higher values will save server resources but increase command delay.
-- Values that are too low (0-10) may slow down BizHawk
-- Default (Recommended) Value: 60
REFRESHTIME = 60
REFRESH = REFRESHTIME

-- Define Pokeable SNES Memory Addresses
ADDR_PROGRAM1 = 0x000010
ADDR_PROGRAM2 = 0x000011
ADDR_INDOORS = 0x00001B
ADDR_YPOS = 0x000020
ADDR_XPOS = 0x000022
ADDR_SHOWBUNNY = 0x000056
ADDR_LINKSTATE = 0x00005D
ADDR_LINKSPEED = 0x00005E
ADDR_DOORID = 0x00006C
ADDR_ROOMID = 0x0000A0
ADDR_SFX1 = 0x00012E
ADDR_SFX2 = 0x00012F
ADDR_BUNNYTIMER = 0x0003F5
ADDR_DUNGEONID = 0x00040C
ADDR_LOWSPRITEY = 0x000D00
ADDR_LOWSPRITEX = 0x000D10
ADDR_HIGHSPRITEY = 0x000D20
ADDR_HIGHSPRITEX = 0x000D30
ADDR_AUXSPRITE1 = 0x000DA0
ADDR_AUXSPRITE2 = 0x000DA1
ADDR_AUXSPRITE3 = 0x000DA2
ADDR_AUXSPRITE4 = 0x000DA3
ADDR_AUXSPRITE5 = 0x000DA4
ADDR_AUXSPRITE6 = 0x000DA5
ADDR_AUXSPRITE7 = 0x000DA6
ADDR_AUXSPRITE8 = 0x000DA7
ADDR_AUXSPRITE9 = 0x000DA8
ADDR_AUXSPRITE10 = 0x000DA9
ADDR_AUXSPRITE11 = 0x000DAA
ADDR_AUXSPRITE12 = 0x000DAB
ADDR_AUXSPRITE13 = 0x000DAC
ADDR_AUXSPRITE14 = 0x000DAD
ADDR_AUXSPRITE15 = 0x000DAE
ADDR_AUXSPRITE16 = 0x000DAF
ADDR_AUXSPRITE17 = 0x000DB0
ADDR_AUXSPRITE18 = 0x000DB1
ADDR_AUXSPRITE19 = 0x000DB2
ADDR_AUXSPRITE20 = 0x000DB3
ADDR_SPRITESTATUS = 0x000DD0
ADDR_SPRITETYPE1 = 0x000E20
ADDR_SPRITETYPE2 = 0x000E21
ADDR_SPRITETYPE3 = 0x000E22
ADDR_SPRITETYPE4 = 0x000E23
ADDR_SPRITETYPE5 = 0x000E24
ADDR_SPRITETYPE6 = 0x000E25
ADDR_SPRITETYPE7 = 0x000E26
ADDR_SPRITETYPE8 = 0x000E27
ADDR_SPRITETYPE9 = 0x000E28
ADDR_SPRITETYPE10 = 0x000E29
ADDR_SPRITETYPE11 = 0x000E2A
ADDR_SPRITETYPE12 = 0x000E2B
ADDR_SPRITETYPE13 = 0x000E2C
ADDR_SPRITETYPE14 = 0x000E2D
ADDR_SPRITETYPE15 = 0x000E2E
ADDR_SPRITETYPE16 = 0x000E2F
ADDR_SPRITETYPE17 = 0x000E30
ADDR_SPRITETYPE18 = 0x000E31
ADDR_SPRITETYPE19 = 0x000E32
ADDR_SPRITETYPE20 = 0x000E33
ADDR_SPRITEDIRECTION = 0x000EB0
ADDR_GAMESTATE = 0x00F000
ADDR_BOW = 0x00F340
ADDR_BOOMERANG = 0x00F341
ADDR_HOOKSHOT = 0x00F342
ADDR_BOMBS = 0x00F343
ADDR_MUSHROOMPOWDER = 0x00F344
ADDR_FIREROD = 0x00F345
ADDR_ICEROD = 0x00F346
ADDR_BOMBOS = 0x00F347
ADDR_ETHER = 0x00F348
ADDR_QUAKE = 0x00F349
ADDR_LAMP = 0x00F34A
ADDR_HAMMER = 0x00F34B
ADDR_SHOVELOCARINA = 0x00F34C
ADDR_BUGNET = 0x00F34D
ADDR_BOOK = 0x00F34E
ADDR_BOTTLES = 0x00F34F
ADDR_SOMARIA = 0x00F350
ADDR_BYRNA = 0x00F351
ADDR_CAPE = 0x00F352
ADDR_MIRROR = 0x00F353
ADDR_GLOVE = 0x00F354
ADDR_BOOTS1 = 0x00F355
ADDR_BOOTS2 = 0x00F379
ADDR_FLIPPERS = 0x00F356
ADDR_PEARL = 0x00F357
ADDR_SWORD = 0x00F359
ADDR_SHIELD = 0x00F35A
ADDR_MAIL = 0x00F35B
ADDR_BOTTLE1 = 0x00F35C
ADDR_BOTTLE2 = 0x00F35D
ADDR_BOTTLE3 = 0x00F35E
ADDR_BOTTLE4 = 0x00F35F
ADDR_RUPEES = 0x00F360
ADDR_HEARTPIECES = 0x00F36B
ADDR_MAXHEARTS = 0x00F36C
ADDR_HEARTS = 0x00F36D
ADDR_MAGIC = 0x00F36E
ADDR_FILLHEARTS = 0x00F372
ADDR_FILLMAGIC = 0x00F373
ADDR_ARROWS = 0x00F377
ADDR_CRYSTALS = 0x00F37A
ADDR_MAGICBOOST = 0x00F37B
ADDR_ITEMSTACK = 0x00F38C
ADDR_BOWSTACK = 0x00F38E
ADDR_ARMORLEVEL = 0x00F3BA
ADDR_SWORDBUFF = 0x0150C0
ADDR_SHIELDBUFF = 0x0150C1
ADDR_ARMORBUFF = 0x0150C2
ADDR_MAGICBUFF = 0x0150C3
ADDR_LIGHTBUFF = 0x0150C4
ADDR_UNUSEDEFFECT = 0x0150C5
ADDR_SLOWDASH = 0x0150C6
ADDR_ICEPHYSICS = 0x0150C7
ADDR_INFARROWS = 0x0150C8
ADDR_INFBOMBS = 0x0150C9
ADDR_INFMAGIC = 0x0150CA
ADDR_INVERTINPUT = 0x0150CB
ADDR_OHKOMODE = 0x0150CC
ADDR_SWAPSPRITE = 0x0150CD
ADDR_ENABLEBOOTS = 0x0150CE

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

-- FUNCTION: Edit Sword Level
-- Argument val (int): 0: Take, 1: Give Sword, 2: Give Master Sword, 3: Give Tempered Sword, 4: Give Gold Sword
function editswordlevel(val)
	val = tonumber(val)
	if (val < 0 || val > 4) then
		console.writeline("ERROR: Function editswordlevel(): Value is invalid (should be 0-4)")
		return false
	else
		mainmemory.writebyte(ADDR_SWORD, val)
		return true
	end
end

-- FUNCTION: Upgrade Sword
function upgradesword()
	if (mainmemory.readbyte(ADDR_SWORD) < 4)
		mainmemory.writebyte(ADDR_SWORD, mainmemory.readbyte(ADDR_SWORD)+1)
		return true
	else
		console.writeline("WARNING: Function upgradesword(): Sword already at Max Level. Command ignored.")
		return false
	end
end

-- FUNCTION: Downgrade Sword
function downgradesword()
	if (mainmemory.readbyte(ADDR_SWORD) > 0)
		mainmemory.writebyte(ADDR_SWORD, mainmemory.readbyte(ADDR_SWORD)-1)
		return true
	else
		console.writeline("WARNING: Function downgradesword(): Sword already at Min Level (gone). Command ignored.")
		return false
	end
end

-- FUNCTION: Edit Shield Level
-- Argument val (int): 0: Take, 1: Give Shield, 2: Give Fire Shield, 3: Give Mirror Shield
function editshieldlevel(val)
	val = tonumber(val)
	if (val < 0 || val > 3) then
		console.writeline("ERROR: Function editshieldlevel(): Value is invalid (should be 0-3)")
		return false
	else
		mainmemory.writebyte(ADDR_SHIELD, val)
		return true
	end
end

-- FUNCTION: Upgrade Shield
function upgradeshield()
	if (mainmemory.readbyte(ADDR_SHIELD) < 3)
		mainmemory.writebyte(ADDR_SHIELD, mainmemory.readbyte(ADDR_SHIELD)+1)
		return true
	else
		console.writeline("WARNING: Function upgradeshield(): Shield already at Max Level. Command ignored.")
		return false
	end
end

-- FUNCTION: Downgrade Shield
function downgradeshield()
	if (mainmemory.readbyte(ADDR_SHIELD) > 0)
		mainmemory.writebyte(ADDR_SHIELD, mainmemory.readbyte(ADDR_SHIELD)-1)
		return true
	else
		console.writeline("WARNING: Function downgradeshield(): Shield already at Min Level (gone). Command ignored.")
		return false
	end
end

-- FUNCTION: Edit Mail Level
-- Argument val (int): 0: Revert to Green Mail, 1: Give Blue Mail, 2: Give Red Mail
function editmaillevel(val)
	val = tonumber(val)
	if (val < 0 || val > 2) then
		console.writeline("ERROR: Function editmaillevel(): Value is invalid (should be 0-2)")
		return false
	else
		mainmemory.writebyte(ADDR_MAIL, val)
		return true
	end
end

-- FUNCTION: Upgrade Mail
function upgrademail()
	if (mainmemory.readbyte(ADDR_MAIL) < 3)
		mainmemory.writebyte(ADDR_MAIL, mainmemory.readbyte(ADDR_MAIL)+1)
		return true
	else
		console.writeline("WARNING: Function upgrademail(): Mail already at Max Level. Command ignored.")
		return false
	end
end

-- FUNCTION: Downgrade Mail
function downgrademail()
	if (mainmemory.readbyte(ADDR_MAIL) > 0)
		mainmemory.writebyte(ADDR_MAIL, mainmemory.readbyte(ADDR_MAIL)-1)
		return true
	else
		console.writeline("WARNING: Function downgrademail(): Mail already at Min Level. Command ignored.")
		return false
	end
end

-- FUNCTION: Give Small Magic
function smallmagic()
	mainmemory.writebyte(ADDR_FILLMAGIC, 16)
end

-- FUNCTION: Give Large Magic
function largemagic()
	mainmemory.writebyte(ADDR_FILLMAGIC, 128)
end

-- FUNCTION: Cucco Storm aka Psychotic Chickens! (Has a timer of 30 seconds, cannot be stacked.)
-- Argument enable (int): 0: Disable (Good Chickens), 1+: Enable (Evil Chickens)
function cuccostorm(enable)
	RET = false
	ERR1 = false
	if (mainmemory.readbyte(ADDR_SPRITETYPE1) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE1, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE1, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE2) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE2, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE2, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE3) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE3, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE3, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE4) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE4, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE4, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE5) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE5, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE5, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE6) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE6, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE6, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE7) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE7, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE7, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE8) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE8, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE8, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE9) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE9, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE9, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE10) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE10, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE10, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE11) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE11, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE11, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE12) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE12, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE12, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE13) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE13, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE13, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE14) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE14, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE14, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE15) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE15, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE15, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE16) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE16, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE16, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE17) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE17, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE17, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE18) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE18, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE18, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE19) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE19, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE19, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (mainmemory.readbyte(ADDR_SPRITETYPE20) == 11) then
		if (enable >= 1) then
			if (CUCCOTIMER <= 0) then
				mainmemory.writebyte(ADDR_AUXSPRITE20, 35)
				CUCCOSTORM = true
				CUCCOTIMER = 1800
			else
				ERR1 = true
			end
		else
			mainmemory.writebyte(ADDR_AUXSPRITE20, 0)
			CUCCOSTORM = false
			CUCCOTIMER = 0
		end
	end
	if (ERR1) then
		console.writeline("WARNING: Function cuccostorm() activation was attempted before previous timer had expired. Command ignored.")
	end
	return RET
end

-- Place all main code inside an always true while loop to maintain indefinite operation.
while true do
	-- Refresh counter expired, time to make a call to the server.
	if (REFRESH <= 0) then
		REQUEST = comm.httpGet("https://"..URL.."/pastlink.php?mode=readDB&key="..KEY)
		if (REQUEST = "") then
			-- If nothing is returned, will know the server is offline or unresponsive. Write error info to console.
			console.writeline("ERROR: Received no response from the host. Please check the server is online, and that BizHawk was started via 'bizhawk-http.bat'.")
		elseif (REQUEST == "EMPTY") then
			-- If "EMPTY" is returned, the connection was successful, but there are no requests to process. Literally do nothing.
		elseif (REQUEST == "WRONGKEY") then
			-- If "WRONGKEY" is returned, the connection was successful, but the request was made with a non-matching key, and the server will deny access. In this case, output an error.
			console.writeline("ERROR: BizHawk sent the wrong key to the host. Access is denied! Check that the keys in config.php and pastlink.lua match.")
		else
			-- Split single REQUEST string returned from the server into three parts: Username, IP Address, and Message.
			SPLIT = bizstring.split(REQUEST, ";")
			USER = SPLIT[0]
			IP = SPLIT[1]
			MESSAGE = SPLIT[2]
			VALUE = bizstring.split(MESSAGE, ":")
			if (bizstring.startswith(VALUE[1], "+") then
				MODIFIER = "+"
				VALUE = tonumber(bizstring.remove(VALUE[1], 1, 1))
			elseif (bizstring.startswith(VALUE[1], "-")) then
				MODIFIER = "-"
				VALUE = tonumber(bizstring.remove(VALUE[1], 1, 1))
			else
				VALUE = tonumber(VALUE[1])
			end
			if (VALUE == 1) then 
				PLURAL = ""
			else
				PLURAL = "s"
			end
			if (bizstring.startswith(MESSAGE, "EDITRUPEES:")) then
				if (MODIFIER == "+") then
					RESULT = editrupees(+VALUE)
					if (RESULT) then 
						gui.addmessage(USER.." gave you "..VALUE.." Rupee"..PLURAL.."!")
					end
				elseif (MODIFIER == "-") then
					RESULT = editrupees(-VALUE)
					if (RESULT) then
						gui.addmessage(USER.." took "..VALUE.." Rupee"..PLURAL.." from you!")
					end
				else
					RESULT = editrupees(VALUE)
					if (RESULT) then
						gui.addmessage(USER.." set your Rupees to "..VALUE.."!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITBOMBS:")) then
				if (MODIFIER == "+") then
					RESULT = editbombs(+VALUE)
					if (RESULT) then
						gui.addmessage(USER.." gave you "..VALUE.." Bomb"..PLURAL.."!")
					end
				elseif (MODIFIER == "-") then
					RESULT = editbombs(-VALUE)
					if (RESULT) then
						gui.addmessage(USER.." took "..VALUE.." Bomb"..PLURAL.." from you!")
					end
				else
					RESULT = editbombs(VALUE)
					if (RESULT) then
						gui.addmessage(USER.." set your Bombs to "..VALUE.."!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITARROWS:")) then
				if (MODIFIER == "+") then
					RESULT = editarrows(+VALUE)
					if (RESULT) then
						gui.addmessage(USER.." gave you "..VALUE.." Arrow"..PLURAL.."!")
					end
				elseif (MODIFIER == "-") then
					RESULT = editarrows(-VALUE)
					if (RESULT) then
						gui.addmessage(USER.." took "..VALUE.." Arrow"..PLURAL.." from you!")
					end
				else
					RESULT = editarrows(VALUE)
					if (RESULT) then
						gui.addmessage(USER.." set your Arrows to "..VALUE.."!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITNORMALBOW:")) then
				RESULT = editnormalbow(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Normal Bow!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Normal Bow!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITSILVERBOW:")) then
				RESULT = editsilverbow(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Silver Bow!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Silver Bow!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITBOOMERANG:")) then
				RESULT = editboomerang(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Boomerang!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Boomerang!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITMAGICALBOOMERANG:")) then
				RESULT = editmagicalboomerang(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Magical Boomerang!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Magical Boomerang!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITMUSHROOM:")) then
				RESULT = editmushroom(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Mushroom!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Mushroom!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITMAGICPOWDER:")) then
				RESULT = editmagicpowder(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Magic Powder!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Magic Powder!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITSHOVEL:")) then
				RESULT = editshovel(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Shovel!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Shovel!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITOCARINA:")) then
				RESULT = editocarina(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Ocarina!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you an Ocarina!")
					elseif (VALUE == 2) then
						gui.addmessage(USER.." gave you an Ocarina, and a free bird!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITHOOKSHOT:")) then
				RESULT = edithookshot(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Hookshot!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Hookshot!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITFIREROD:")) then
				RESULT = editfirerod(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Fire Rod!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Fire Rod!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITICEROD:")) then
				RESULT = editicerod(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Ice Rod!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Ice Rod!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITBOMBOS:")) then
				RESULT = editbombos(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Bombos Medallion!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Bombos Medallion!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITETHER:")) then
				RESULT = editether(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Ether Medallion!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Ether Medallion!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITQUAKE:")) then
				RESULT = editquake(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Quake Medallion!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Quake Medallion!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITLAMP:")) then
				RESULT = editlamp(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Lamp!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Lamp!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITMAGICHAMMER:")) then
				RESULT = editmagichammer(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Magic Hammer!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Magic Hammer!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITBUGNET:")) then
				RESULT = editbugnet(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Bug Net!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Bug Net!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITBOOKOFMODURA:")) then
				RESULT = editbookofmodura(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Book of Modura!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Book of Modura!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITBOTTLES:")) then
				BSPLT = bizstring.split(VALUE, ",")
				RESULT = editbottles(BSPLT[0], BSPLT[1])
				if (RESULT) then
					if (BSPLT[1] == 0) then
						gui.addmessage(USER.." took away your Bottle!")
					elseif (BSPLT[1] == 1) then
						gui.addmessage(USER.." gave you a Bottle ("..BSPLT[0]..")!")
					elseif (BSPLT[1] == 2) then
						gui.addmessage(USER.." gave you a Bottle ("..BSPLT[0]..") and filled it with Red Potion!")
					elseif (BSPLT[1] == 3) then
						gui.addmessage(USER.." gave you a Bottle ("..BSPLT[0]..") and filled it with Green Potion!")
					elseif (BSPLT[1] == 4) then
						gui.addmessage(USER.." gave you a Bottle ("..BSPLT[0]..") and filled it with Blue Potion!")
					elseif (BSPLT[1] == 5) then
						gui.addmessage(USER.." gave you a Bottle ("..BSPLT[0]..") and put a Fairy in it!")
					elseif (BSPLT[1] == 6) then
						gui.addmessage(USER.." gave you a Bottle ("..BSPLT[0]..") and put a Bee in it!")
					elseif (BSPLT[1] == 7) then
						gui.addmessage(USER.." gave you a Bottle ("..BSPLT[0]..") and put a Super Bee in it!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITCANEOFSOMARIA:")) then
				RESULT = editcaneofsomaria(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Cane of Somaria!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Cane of Somaria!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITCANEOFBYRNA:")) then
				RESULT = editcaneofbyrna(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Cane of Byrna!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Cane of Byrna!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITMAGICCAPE:")) then
				RESULT = editmagiccape(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Magic Cape!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Book of Magic Cape!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITMAGICMIRROR:")) then
				RESULT = editmagicmirror(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Magic Mirror!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Magic Mirror!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITGLOVES:")) then
				RESULT = editgloves(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Gloves!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Power Glove!")
					elseif (VALUE == 2) then
						gui.addmessage(USER.." gave you a Titan's Mitt!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITPEGASUSBOOTS:")) then
				RESULT = editpegasusboots(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Pegasus Boots!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a pair of Pegasus Boots!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITZORASFLIPPERS:")) then
				RESULT = editzorasflippers(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Zora's Flippers!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a pair of Zora's Flippers!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITMOONPEARL:")) then
				RESULT = editmoonpearl(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away your Moon Pearl!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." gave you a Moon Pearl!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "EDITMAGICBOOST:")) then
				RESULT = editmagicboost(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." took away all Magic Boosts!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." blessed you with 1/2 Magic Use!")
					elseif (VALUE == 2) then
						gui.addmessage(USER.." blessed you with 1/4 Magic Use!")
					end
				end
			elseif (bizstring.startswith(MESSAGE, "CUCCOSTORM:")) then
				RESULT = cuccostorm(VALUE)
				if (RESULT) then
					if (VALUE == 0) then
						gui.addmessage(USER.." has quelled the Chicken Gods' Rage!")
					elseif (VALUE == 1) then
						gui.addmessage(USER.." has angered the Chicken Gods!!!")
					end
				end
			end
			
			-- TODO: Items are finally all done, but more commands remain to be written. I think I've finished Cucco Storm? Testing will be needed. UPDATE: I also added a timer (30 Seconds) for Cucco Storm and added stacking prevention.
				-- Heart
				-- Fairy
				-- Light Cone
				-- Remove Light Cone
				-- Heart Piece
				-- Heart Container
				-- Remove Heart Container
				-- Refresh Health & Magic
				-- Remove Quest Item & Revive Boss
				-- The Bees
				-- Old Man Dash
				-- Kill Player
				-- Switch Pegs
				-- Ice Physics
				-- Infinite Arrows
				-- Infinite Bombs
				-- Infinite Magic
				-- Blackout
				-- Invert D-Pad
				-- Invert Buttons
				-- Invert Buttons & D-Pad
				-- Swap Buttons & D-Pad
				-- One-Hit KO
				-- Forced Mirror
				-- Bunny Transformation
				-- Get Wings
				-- Deadrock Box
				-- Double Ganon
			
			-- Reset the refresh counter back to initial value to begin countdown again.
			REFRESH = REFRESHTIME
		end
	else
		-- Not time yet, decrement one frame from timer.
		REFRESH = REFRESH-1
	end
	-- Decrease timers for active effects.
	if (CUCCOSTORM == true) then
		if (CUCCOTIMER <= 0) then
			cuccostorm(0)
			gui.addmessage("The Chicken Gods have calmed down!")
		else
			CUCCOTIMER = CUCCOTIMER-1
		end
	end
	-- Once everything is checked, advance BizHawk a frame.
	emu.frameadvance()
end