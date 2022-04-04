-- PastLink is currently in Alpha and NOT READY FOR RELEASE, use only for testing until further notice.
-- UPDATE: URL and Key variables are removed; HTTP GET connections are now handled by Ground Control and no longer by the Lua script.
-- UPDATE: Configuration moved to config.lua
-- UPDATE: Functions moved to functions.lua

-- Include Required Files
require "config.lua"
require "functions.lua"

-- Place all main code inside an always true while loop to maintain indefinite operation.
while true do
	-- Refresh counter expired, time to read the file.
	if (REFRESH <= 0) then
		REQUEST = fromfile() -- TODO: Create actual function
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
		-- Reset the refresh counter back to initial value to begin countdown again.
		REFRESH = REFRESHTIME
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