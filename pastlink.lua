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
		REQUEST = readcommand()
		-- Split single REQUEST string returned from the server into three parts: Username, IP Address, and Message.
		SPLIT = bizstring.split(REQUEST, ",")
		if (SPLIT[0] == "") then
			USER = "Unknown ("..SPLIT[1]..")"
		else
			USER = SPLIT[0]
		end
		IP = SPLIT[1]
		MESSAGE = SPLIT[2]
		VALUE = bizstring.split(MESSAGE, ":")
		VALUE = VALUE[1]
		if (bizstring.startswith(MESSAGE, "EDITRUPEES:")) then			
			RESULT = editrupees(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOMBS:")) then
			RESULT = editbombs(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITARROWS:")) then
			RESULT = editarrows(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITNORMALBOW:")) then
			RESULT = editnormalbow(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITSILVERBOW:")) then
			RESULT = editsilverbow(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOOMERANG:")) then
			RESULT = editboomerang(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICALBOOMERANG:")) then
			RESULT = editmagicalboomerang(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMUSHROOM:")) then
			RESULT = editmushroom(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICPOWDER:")) then
			RESULT = editmagicpowder(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITSHOVEL:")) then
			RESULT = editshovel(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITOCARINA:")) then
			RESULT = editocarina(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITHOOKSHOT:")) then
			RESULT = edithookshot(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITFIREROD:")) then
			RESULT = editfirerod(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITICEROD:")) then
			RESULT = editicerod(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOMBOS:")) then
			RESULT = editbombos(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITETHER:")) then
			RESULT = editether(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITQUAKE:")) then
			RESULT = editquake(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITLAMP:")) then
			RESULT = editlamp(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICHAMMER:")) then
			RESULT = editmagichammer(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBUGNET:")) then
			RESULT = editbugnet(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOOKOFMODURA:")) then
			RESULT = editbookofmodura(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOTTLE1:")) then
			RESULT = editbottles(1,VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOTTLE2:")) then
			RESULT = editbottles(2,VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOTTLE3:")) then
			RESULT = editbottles(3,VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITBOTTLE4:")) then
			RESULT = editbottles(4,VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITCANEOFSOMARIA:")) then
			RESULT = editcaneofsomaria(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITCANEOFBYRNA:")) then
			RESULT = editcaneofbyrna(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICCAPE:")) then
			RESULT = editmagiccape(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICMIRROR:")) then
			RESULT = editmagicmirror(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITGLOVES:")) then
			RESULT = editgloves(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITPEGASUSBOOTS:")) then
			RESULT = editpegasusboots(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITZORASFLIPPERS:")) then
			RESULT = editzorasflippers(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMOONPEARL:")) then
			RESULT = editmoonpearl(VALUE)
		elseif (bizstring.startswith(MESSAGE, "EDITMAGICBOOST:")) then
			RESULT = editmagicboost(VALUE)
		elseif (bizstring.startswith(MESSAGE, "CUCCOSTORM:")) then
			RESULT = cuccostorm(VALUE)
		elseif (bizstring.startswith(MESSAGE, "INSTADEATH")) then
			RESULT = instadeath()
		elseif (bizstring.startswith(MESSAGE, "SMLMAGIC")) then
			smlmagic()
		elseif (bizstring.startswith(MESSAGE, "BIGMAGIC")) then
			bigmagic()
		elseif (bizstring.startswith(MESSAGE, "HEART")) then
			heart()
		elseif (bizstring.startswith(MESSAGE, "FAIRY")) then
			fairy()
		-- The following commented lines are functions that are not yet implemented into the Randomizer.
		--elseif (bizstring.startswith(MESSAGE, "UPSWORD1M")) then
			--upsword1m()
		--elseif (bizstring.startswith(MESSAGE, "DOWNSWORD1M")) then
			--downsword1m()
		--elseif (bizstring.startswith(MESSAGE, "UPARMOR1M")) then
			--uparmor1m()
		--elseif (bizstring.startswith(MESSAGE, "DOWNARMOR1M")) then
			--downarmor1m()
		--elseif (bizstring.startswith(MESSAGE, "UPMAGIC1M")) then
			--upmagic1m()
		--elseif (bizstring.startswith(MESSAGE, "UPMAGIC1M")) then
			--downmagic1m()
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
		end
		-- Process ongoing effects.
		if (CUCCOSTORM == true) then
			if (CUCCOTIMER < 1) then
				cuccostorm(0)
			else
				createandangercuccos()
				CUCCOTIMER = CUCCOTIMER - 1
			end
		end
		-- Reset the refresh counter back to initial value to begin countdown again.
		REFRESH = REFRESHTIME
	else
		-- Not time yet, decrement one frame from timer.
		REFRESH = REFRESH - 1
	end
	-- Once everything is checked, advance BizHawk a frame.
	emu.frameadvance()
end