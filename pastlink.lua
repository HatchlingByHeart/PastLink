-- PastLink is currently in Alpha and NOT READY FOR RELEASE, use only for testing until further notice.
-- UPDATE: URL and Key variables are removed; HTTP GET connections are now handled by Ground Control and no longer by the Lua script.
-- UPDATE: BizHawk hates the require() function, so I have re-merged everything into a single file once again. Joy.
-- UPDATE: For timing reasons, there is no longer a refresh time setting, it's now hard-coded at 60 frames. Do not modify it or timed functions will not function correctly.

-- Insta-Death toggle.
-- This effect is a little extreme, so it's disabled by default and can be enabled by the player if desired.
INSTADEATH_ENABLE = false

-- Define Pokeable SNES Memory Addresses. You should never need to change these.
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
ADDR_LIGHTLEVEL = 0x00045A
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
ADDR_SLIPPERYFLOORS = 0x0150C7
ADDR_INFARROWS = 0x0150C8
ADDR_INFBOMBS = 0x0150C9
ADDR_INFMAGIC = 0x0150CA
ADDR_INVERTINPUT = 0x0150CB
ADDR_OHKOMODE = 0x0150CC
ADDR_SWAPSPRITE = 0x0150CD
ADDR_ENABLEBOOTS = 0x0150CE

-- Init Vars.
CUCCOSTORM = false
CUCCOTIMER = 0
BEES = false
BEETIMER = 0
a = 0
result = ""

-- Sprite IDs to exclude from all sprite substituting functions such as Cucco Storm and Everything is Bees.
-- Required to prevent serious glitches / softlocks, DO NOT MODIFY unless adding new sprites!
-- All affected functions will automatically scale to the size of the array, no further modifications are needed.
BEES_EXCLUDE = {77, 121, 236}
CUCCOSTORM_EXCLUDE = {11, 77, 236}

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
-- Argument quantity (sint): The number of rupees to set.
function editrupees(quantity)
	-- Check if quantity is provided.
	if (quantity) then
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
	else
		console.writeline("ERROR: Function editrupees(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Add Rupees
-- Argument quantity (sint): The number of rupees to give.
function addrupees(quantity)
	-- Check if quantity is provided.
	if (quantity) then
		console.writeline("Value is: "..quantity)
		quantity = tonumber(quantity)
		if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
		-- Check that the function won't cause internal rupee count to rise above 9999.
		if (mainmemory.read_s16_le(ADDR_RUPEES)+quantity > 9999) then
			mainmemory.write_s16_le(ADDR_RUPEES, 9999)
		else
			mainmemory.write_s16_le(ADDR_RUPEES, mainmemory.read_s16_le(ADDR_RUPEES)+quantity)
		end
		gui.addmessage(USER.." gave you "..quantity.." Rupee"..PLURAL.."!")
		return true
	else
		console.writeline("ERROR: Function addrupees(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Take Rupees
-- Argument quantity (sint): The number of rupees to take.
function takerupees(quantity)
	-- Check if quantity is provided.
	if (quantity) then
		quantity = tonumber(quantity)
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
		console.writeline("ERROR: Function takerupees(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Edit Bombs
-- Argument quantity (sint): The number of bombs to set.
function editbombs(quantity)
	-- Check if quantity is provided.
	if (quantity) then
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
	else
		console.writeline("ERROR: Function editbombs(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Add Bombs
-- Argument quantity (sint): The number of bombs to give.
function addbombs(quantity)
	-- Check if quantity is provided.
	if (quantity) then
		quantity = tonumber(quantity)
		if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
		-- Check that the function won't cause internal bomb count to rise above 50.
		if (mainmemory.readbyte(ADDR_BOMBS)+quantity > 50) then
			mainmemory.writebyte(ADDR_BOMBS, 50)
		else
			mainmemory.writebyte(ADDR_BOMBS, mainmemory.readbyte(ADDR_BOMBS)+quantity)
		end
		gui.addmessage(USER.." gave you "..quantity.." Bomb"..PLURAL.."!")
		return true
	else
		console.writeline("ERROR: Function addbombs(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Take Bombs
-- Argument quantity (sint): The number of bombs to take.
function takebombs(quantity)
	if (quantity) then
		quantity = tonumber(quantity)
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
		console.writeline("ERROR: Function takebombs(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Edit Arrows
-- Argument quantity (sint): The number of arrows to set.
function editarrows(quantity)
	-- Check if quantity is provided.
	if (quantity) then
		quantity = tonumber(quantity)
		if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
		-- Check that the amount specified is valid (0-50). Output error if it isn't.
		if (quantity < 0 or quantity > 70) then
			console.writeline("ERROR: Function givearrow(): Quantity provided is not valid (should be 0-70).")
			return false
		else
			mainmemory.writebyte(ADDR_ARROWS, quantity)
			gui.addmessage(USER.." set your Arrow count to "..quantity.." Arrow"..PLURAL.."!")
			return true
		end
	else
		console.writeline("ERROR: Function editbombs(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Add Arrows
-- Argument quantity (sint): The number of arrows to give.
function addarrows(quantity)
	-- Check if quantity is provided.
	if (quantity) then
		quantity = tonumber(quantity)
		if (quantity == 1) then PLURAL = "" else PLURAL = "s" end
		-- Check that the function won't cause internal arrow count to rise above 50.
		if (mainmemory.readbyte(ADDR_ARROWS)+quantity > 70) then
			mainmemory.writebyte(ADDR_ARROWS, 70)
		else
			mainmemory.writebyte(ADDR_ARROWS, mainmemory.readbyte(ADDR_ARROWS)+quantity)
		end
		gui.addmessage(USER.." gave you "..quantity.." Arrows"..PLURAL.."!")
		return true
	else
		console.writeline("ERROR: Function addarrows(): Quantity not provided.")
		return false
	end
end

-- FUNCTION: Take Arrows
-- Argument quantity (sint): The number of arrows to take.
function takearrows(quantity)
	if (quantity) then
		quantity = tonumber(quantity)
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
		console.writeline("ERROR: Function takearrows(): Quantity not provided.")
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
				mainmemory.writebyte(ADDR_AUXSPRITE_NAMES[i], 0)
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
			CUCCOTIMER = 60
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
		gui.addmessage(USER.." gave you a little bit of magic!")
	end
end

-- FUNCTION: Give Big Magic
-- Gives player full magic, equivalent to a big magic jar.
function bigmagic()
	if (mainmemory.readbyte(ADDR_MAGIC) < 32) then
		mainmemory.writebyte(ADDR_FILLMAGIC, 128)
		gui.addmessage(USER.." gave you a lot of magic!")
	end
end

-- FUNCTION: Give Heart
-- Gives player 1 heart.
function heart()
	if (mainmemory.readbyte(ADDR_HEARTS) <= 152) then
		mainmemory.writebyte(ADDR_FILLHEARTS, 8)
		gui.addmessage(USER.." gave you a heart!")
	end
end

-- FUNCTION: Give Fairy
-- Gives player hearts equivalent to one fairy.
function fairy()
	if (mainmemory.readbyte(ADDR_HEARTS) <= 104) then
		mainmemory.writebyte(ADDR_FILLHEARTS, 56)
		gui.addmessage(USER.." sent a fairy to heal you!")
	end
end

-- FUNCTION: Upgrade Sword
function swordup()
	if (mainmemory.readbyte(ADDR_SWORD) > 4) then
		console.writeline("WARNING: Sword already maximum.")
	else
		mainmemory.writebyte(ADDR_SWORD, mainmemory.readbyte(ADDR_SWORD)+1)
		gui.addmessage(USER.." gave you a Sword Upgrade!")
	end
end

-- FUNCTION: Downgrade Sword
function sworddown()
	if (mainmemory.readbyte(ADDR_SWORD) < 0) then
		console.writeline("WARNING: Sword already gone.")
	else
		mainmemory.writebyte(ADDR_SWORD, mainmemory.readbyte(ADDR_SWORD)-1)
		gui.addmessage("Welp, "..USER.." decided you don't deserve a sword that good!")
	end
end

-- FUNCTION: Upgrade Shield
function shieldup()
	if (mainmemory.readbyte(ADDR_SHIELD) > 3) then
		console.writeline("WARNING: Shield already maximum.")
	else
		mainmemory.writebyte(ADDR_SHIELD, mainmemory.readbyte(ADDR_SHIELD)+1)
		gui.addmessage(USER.." gave you a Shield Upgrade!")
	end
end

-- FUNCTION: Downgrade Shield
function shielddown()
	if (mainmemory.readbyte(ADDR_SHIELD) < 0) then
		console.writeline("WARNING: Sword already gone.")
	else
		mainmemory.writebyte(ADDR_SHIELD, mainmemory.readbyte(ADDR_SHIELD)-1)
		gui.addmessage("Welp, "..USER.." decided you don't deserve a shield that good!")
	end
end

-- FUNCTION: Upgrade Mail
function mailup()
	if (mainmemory.readbyte(ADDR_MAIL) > 2) then
		console.writeline("WARNING: Armor already maximum.")
	else
		mainmemory.writebyte(ADDR_MAIL, mainmemory.readbyte(ADDR_MAIL)+1)
		gui.addmessage(USER.." gave you an Armor Upgrade!")
	end
end

-- FUNCTION: Downgrade Mail
function maildown()
	if (mainmemory.readbyte(ADDR_MAIL) < 0) then
		console.writeline("WARNING: Armor already minimum.")
	else
		mainmemory.writebyte(ADDR_MAIL, mainmemory.readbyte(ADDR_MAIL)-1)
		gui.addmessage("Welp, "..USER.." decided you don't deserve armor that good!")
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
			gui.addmessage(USER.." gave you a Piece of Heart!")
			sleep(180)
			mainmemory.writebyte(ADDR_MAXHEARTS, mainmemory.readbyte(ADDR_MAXHEARTS)+8)
			mainmemory.writebyte(ADDR_SFX2, 15)
			gui.addmessage("Sweet, it's enough to make a new Heart Container!")
		else
			mainmemory.writebyte(ADDR_HEARTPIECES, mainmemory.readbyte(ADDR_HEARTPIECES)+1)
			mainmemory.writebyte(ADDR_SFX2, 45)
			gui.addmessage(USER.." gave you a Piece of Heart!")
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
			gui.addmessage(USER.." took a Piece of your Heart!")
			sleep(180)
			mainmemory.writebyte(ADDR_MAXHEARTS, mainmemory.readbyte(ADDR_MAXHEARTS)-8)
			mainmemory.writebyte(ADDR_SFX2, 15)
			gui.addmessage("Uh oh! You lost a Heart Container as a result.")
		else
			mainmemory.writebyte(ADDR_HEARTPIECES, mainmemory.readbyte(ADDR_HEARTPIECES)-1)
			mainmemory.writebyte(ADDR_SFX2, 45)
			gui.addmessage(USER.." took a Piece of your Heart!")
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
		gui.addmessage(USER.." gave you a Heart Container!")
	end
end

-- FUNCTION: Remove Heart Container
function removeheartcontainer()
	if (mainmemory.readbyte(ADDR_MAXHEARTS) < 32) then
		console.writeline("WARNING: Hearts already minimum")
	else
		mainmemory.writebyte(ADDR_MAXHEARTS, mainmemory.readbyte(ADDR_MAXHEARTS)-8)
		mainmemory.writebyte(ADDR_SFX2, 15)
		gui.addmessage(USER.." took a Heart Container!")
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
	gui.addmessage(USER.." refreshed you! Nice!")
end

-- FUNCTION: Create Bees
-- UPDATE: Rabbits that jump out of grass don't like being turned into bees (they crash the game in rage)
-- Exempt the rabbits from beeification. Now they just explode into bees when you talk to them.
-- UPDATE: Now using arrays and for loops to dynamically adjust to the amount of excluded sprites.
function createbees()
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
			if (mainmemory.readbyte(ADDR_INDOORS) < 1) then
				mainmemory.writebyte(ADDR_AUXSPRITE_NAMES[i], 0)
				mainmemory.writebyte(ADDR_SPRITETYPE_NAMES[i], 121)
				mainmemory.writebyte(ADDR_AUXSPRITE_NAMES[i], 0)
			end
		end
		result = ""
	end
end

-- FUNCTION: Everything is Bees!
function bees(enable)
	if (enable > 0) then
		createbees()
		BEETIMER = 60
		BEES = true
		gui.addmessage(USER.." MADE EVERYTHING INTO BEES! RUN!!!")
	else
		if (BEETIMER < 1) then
			gui.addmessage("The rest of the Bees have retreated!")
		else
			gui.addmessage(USER.." has contained the rest of the Bees!")
		end
		BEETIMER = 0
		BEES = false
	end
end

-- FUNCTION: Slippery Floors
function slipperyfloors(enable)
	if (enable > 0) then
		mainmemory.writebyte(ADDR_SLIPPERYFLOORS, 1)
		SLIPPERYTIMER = 60
		SLIPPERYFLOORS = true
		gui.addmessage(USER.." has greased up all the floors!")
	else
		mainmemory.writebyte(ADDR_SLIPPERYFLOORS, 0)
		SLIPPERYTIMER = 0
		SLIPPERYFLOORS = false
		if (SLIPPERYTIMER < 1) then
			gui.addmessage("The grease has disappeared!")
		else
			gui.addmessage(USER.." cleaned up the grease!")
		end
	end
end

-- FUNCTION: Infinite Arrows
function infarrows(enable)
	if (enable > 0) then
		mainmemory.writebyte(ADDR_INFARROWS, 1)
		INFARROWSTIMER = 60
		INFARROWS = true
		gui.addmessage(USER.." granted you all the arrows ever!")
	else
		mainmemory.writebyte(ADDR_INFARROWS, 0)
		INFARROWSTIMER = 0
		INFARROWS = false
		if (INFARROWSTIMER < 1) then
			gui.addmessage("Looks like you're back to limited arrows!")
		else
			gui.addmessage(USER.." took away your unlimited arrows!")
		end
	end
end

-- FUNCTION: Infinite Bombs
function infbombs(enable)
	if (enable > 0) then
		mainmemory.writebyte(ADDR_INFBOMBS, 1)
		INFBOMBSTIMER = 60
		INFBOMBS = true
		gui.addmessage(USER.." granted you all the bombs ever!")
	else
		mainmemory.writebyte(ADDR_INFBOMBS, 0)
		INFBOMBSTIMER = 0
		INFBOMBS = false
		if (INFBOMBSTIMER < 1) then
			gui.addmessage("Looks like you're back to limited bombs!")
		else
			gui.addmessage(USER.." took away your unlimited bombs!")
		end
	end
end

-- FUNCTION: Infinite Magic
function infmagic(enable)
	if (enable > 0) then
		mainmemory.writebyte(ADDR_INFMAGIC, 1)
		INFMAGICTIMER = 60
		INFMAGIC = true
		gui.addmessage(USER.." granted you all the magic ever!")
	else
		mainmemory.writebyte(ADDR_INFMAGIC, 0)
		INFMAGICTIMER = 0
		INFMAGIC = false
		if (INFMAGICTIMER < 1) then
			gui.addmessage("Looks like you're back to limited magic!")
		else
			gui.addmessage(USER.." took away your unlimited magic!")
		end
	end
end

-- FUNCTION: One Hit KO
function ohkomode(enable)
	if (enable > 0) then
		mainmemory.writebyte(ADDR_OHKOMODE, 1)
		OHKOTIMER = 60
		OHKOMODE = true
		gui.addmessage(USER.." made you extremely frail!")
	else
		mainmemory.writebyte(ADDR_OHKOMODE, 0)
		OHKOTIMER = 0
		OHKOMODE = false
		if (OHKOTIMER < 1) then
			gui.addmessage("Your constitution is back to normal!")
		else
			gui.addmessage(USER.." granted you your constitution back!")
		end
	end
end

-- FUNCTION: Infinite Light
function inflight(enable)
		if (enable > 0) then
		mainmemory.writebyte(ADDR_LIGHTLEVEL, 1)
		INFLIGHTTIMER = 60
		INFLIGHT = true
		gui.addmessage(USER..": Let there be light!")
	else
		mainmemory.writebyte(ADDR_LIGHTLEVEL, 0)
		INFLIGHTTIMER = 0
		INFLIGHT = false
		if (INFLIGHTTIMER < 1) then
			gui.addmessage("The light is gone now.")
		else
			gui.addmessage(USER..": Sorry. No light for you!")
		end
	end
end

REFRESH = 60

-- Place all main code inside an always true while loop to maintain indefinite operation.
while true do
	-- Refresh counter expired, time to read the file.
	if (REFRESH <= 0) then
		-- Open file "command" for reading.
		file = io.open("command", "r")
		io.input(file)
		REQUEST = io.read()
		io.close(file)
		-- Open the file again in overwrite mode to erase data from it.
		file = io.open("command", "w+")
		io.close(file)
		-- Split single REQUEST string returned from the server into three parts: Username, IP Address, and Message.
		SPLIT = bizstring.split(REQUEST, ",")
		if (SPLIT[1] == "") then
			USER = "Someone ("..SPLIT[2]..")"
		else
			USER = SPLIT[1]
		end
		IP = SPLIT[2]
		MESSAGE = SPLIT[3]
		VALUE = bizstring.split(MESSAGE, ":")
		VALUE = tonumber(VALUE[2])
		if (bizstring.startswith(MESSAGE, "EDITRUPEES:")) then			
			editrupees(VALUE)
		elseif (bizstring.startswith(MESSAGE, "ADDRUPEES:")) then			
			addrupees(VALUE)
		elseif (bizstring.startswith(MESSAGE, "TAKERUPEES:")) then			
			takerupees(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOMBS:")) then
			editbombs(VALUE)
		elseif (bizstring.startswith(MESSAGE, "ADDBOMBS:")) then
			addbombs(VALUE)
		elseif (bizstring.startswith(MESSAGE, "TAKEBOMBS:")) then
			takebombs(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITARROWS:")) then
			editarrows(VALUE)
		elseif (bizstring.startswith(MESSAGE, "ADDARROWS:")) then
			addarrows(VALUE)
		elseif (bizstring.startswith(MESSAGE, "TAKEARROWS:")) then
			takearrows(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITNORMALBOW:")) then
			editnormalbow(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITSILVERBOW:")) then
			editsilverbow(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOOMERANG:")) then
			editboomerang(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICALBOOMERANG:")) then
			editmagicalboomerang(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMUSHROOM:")) then
			editmushroom(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICPOWDER:")) then
			editmagicpowder(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITSHOVEL:")) then
			editshovel(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITOCARINA:")) then
			editocarina(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITHOOKSHOT:")) then
			edithookshot(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITFIREROD:")) then
			editfirerod(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITICEROD:")) then
			editicerod(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOMBOS:")) then
			editbombos(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITETHER:")) then
			editether(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITQUAKE:")) then
			editquake(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITLAMP:")) then
			editlamp(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICHAMMER:")) then
			editmagichammer(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBUGNET:")) then
			editbugnet(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOOKOFMODURA:")) then
			editbookofmodura(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOTTLE1:")) then
			editbottles(1,VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOTTLE2:")) then
			editbottles(2,VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOTTLE3:")) then
			editbottles(3,VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOTTLE4:")) then
			editbottles(4,VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITCANEOFSOMARIA:")) then
			editcaneofsomaria(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITCANEOFBYRNA:")) then
			editcaneofbyrna(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICCAPE:")) then
			editmagiccape(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICMIRROR:")) then
			editmagicmirror(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITGLOVES:")) then
			editgloves(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITPEGASUSBOOTS:")) then
			editpegasusboots(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITZORASFLIPPERS:")) then
			editzorasflippers(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMOONPEARL:")) then
			editmoonpearl(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICBOOST:")) then
			editmagicboost(VALUE)
		elseif (bizstring.startswith(MESSAGE, "CUCCOSTORM:")) then
			cuccostorm(VALUE)
		elseif (bizstring.startswith(MESSAGE, "INSTADEATH")) then
			instadeath()
		elseif (bizstring.startswith(MESSAGE, "SMLMAGIC")) then
			smlmagic()
		elseif (bizstring.startswith(MESSAGE, "BIGMAGIC")) then
			bigmagic()
		elseif (bizstring.startswith(MESSAGE, "HEART")) then
			heart()
		elseif (bizstring.startswith(MESSAGE, "FAIRY")) then
			fairy()
		elseif (bizstring.startswith(MESSAGE, "SWORDUP")) then
			swordup()
		elseif (bizstring.startswith(MESSAGE, "SWORDDOWN")) then
			sworddown()
		elseif (bizstring.startswith(MESSAGE, "SHIELDUP")) then
			shieldup()
		elseif (bizstring.startswith(MESSAGE, "SHIELDDOWN")) then
			shielddown()
		elseif (bizstring.startswith(MESSAGE, "MAILUP")) then
			mailup()
		elseif (bizstring.startswith(MESSAGE, "MAILDOWN")) then
			maildown()
		elseif (bizstring.startswith(MESSAGE, "GIVEHEARTPIECE")) then
			giveheartpiece()
		elseif (bizstring.startswith(MESSAGE, "REMOVEHEARTPIECE")) then
			removeheartpiece()
		elseif (bizstring.startswith(MESSAGE, "GIVEHEARTCONTAINER")) then
			giveheartcontainer()
		elseif (bizstring.startswith(MESSAGE, "REMOVEHEARTCONTAINER")) then
			removeheartcontainer()
		elseif (bizstring.startswith(MESSAGE, "REFRESH")) then
			refresh()
		elseif (bizstring.startswith(MESSAGE, "BEES:")) then
			bees(VALUE)
		elseif (bizstring.startswith(MESSAGE, "SLIPPERYFLOORS:")) then
			slipperyfloors(VALUE)
		elseif (bizstring.startswith(MESSAGE, "INFARROWS:")) then
			infarrows(VALUE)
		elseif (bizstring.startswith(MESSAGE, "INFBOMBS:")) then
			infbombs(VALUE)
		elseif (bizstring.startswith(MESSAGE, "INFMAGIC:")) then
			infmagic(VALUE)
		elseif (bizstring.startswith(MESSAGE, "OHKOMODE:")) then
			ohkomode(VALUE)
		elseif (bizstring.startswith(MESSAGE, "INFLIGHT:")) then
			inflight(VALUE)
		end
		-- Process ongoing effects.
		if (CUCCOSTORM == true) then
			if (CUCCOTIMER < 1) then
				cuccostorm(0)
			else
				createandangercuccos()
				CUCCOTIMER = CUCCOTIMER-1
			end
		end
		if (BEES == true) then
			if (BEETIMER < 1) then
				bees(0)
			else
				createbees()
				BEETIMER = BEETIMER-1
			end
		end
		if (SLIPPERYFLOORS == true) then
			if (SLIPPERYTIMER < 1) then
				slipperyfloors(0)
			else
				SLIPPERYTIMER = SLIPPERYTIMER-1
			end
		end
		if (INFARROWS == true) then
			if (INFARROWSTIMER < 1) then
				infarrows(0)
			else
				INFARROWSTIMER = INFARROWSTIMER-1
			end
		end
		if (INFBOMBS == true) then
			if (INFBOMBSTIMER < 1) then
				infbombs(0)
			else
				INFBOMBSTIMER = INFBOMBSTIMER-1
			end
		end
		if (INFMAGIC == true) then
			if (INFMAGICTIMER < 1) then
				infmagic(0)
			else
				INFMAGICTIMER = INFMAGICTIMER-1
			end
		end
		if (OHKOMODE == true) then
			if (OHKOTIMER < 1) then
				ohkomode(0)
			else
				OHKOTIMER = OHKOTIMER-1
			end
		end
		if (INFLIGHT == true) then
			if (INFLIGHTTIMER < 1) then
				inflight(0)
			else
				INFLIGHTTIMER = INFLIGHTTIMER-1
			end
		end
		-- Reset the refresh counter back to initial value to begin countdown again.
		REFRESH = 60
	else
		-- Not time yet, decrement one frame from timer.
		REFRESH = REFRESH-1
	end
	-- Once everything is checked, advance BizHawk a frame.
	emu.frameadvance()
end