clicked = false
bufferlength = 8
buffer = 0
sfx = 0
while true do
	inputs = joypad.get(1)
	if (inputs["L"] == true) then
		if (buffer < 1) then
			if (sfx > 0) then sfx = sfx - 1 end
			gui.addmessage("Prev <: "..sfx)
			buffer = bufferlength
		end
	elseif (inputs["R"] == true) then
		if (buffer < 1) then
			if (sfx < 511) then sfx = sfx + 1 end
			gui.addmessage("Next >: "..sfx)
			buffer = bufferlength
		end
	elseif (inputs["X"] == true) then
		if (clicked == false) then
			if (clicked == false) then
				if (sfx > 255) then
					mainmemory.writebyte(0x00012F, sfx-255)
				else
					mainmemory.writebyte(0x00012E, sfx)
				end
				gui.addmessage("Play: "..sfx)
				clicked = true
			end
		end
	elseif (inputs["L"] == false) then
		if (inputs["R"] == false) then
			if (inputs["X"] == false) then
				clicked = false
				buffer = 0
			end
		end
	end
	if (buffer > 0) then buffer = buffer - 1 end
	emu.frameadvance()
end