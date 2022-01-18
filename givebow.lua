-- Prototype script for giving an item to player. In this example, a Normal Bow.
if (mainmemory.readbyte(0x00F38E) == 224) then
-- Player has both bows already. Do nothing.
else if (mainmemory.readbyte(0x00F38E) == 128) then
-- Player has Normal Bow already. Do nothing.
else if (mainmemory.readbyte(0x00F38E) == 96) then
-- Player has only a Silver Bow. Give Normal Bow and adjust Bitmask.
	-- Check amount of arrows and give Bow appropriate icon.
	if (mainmemory.readbyte(0x00F377) >= 1) then
		mainmemory.writebyte(0x00F340, 2)
	else
		mainmemory.writebyte(0x00F340, 1)
	end
	mainmemory.writebyte(0x00F38E, 224)
else if (mainmemory.readbyte(0x00F38E) == 0) then
-- Player has no bows. Give Normal Bow and adjust Bitmask.
	-- Check amount of arrows and give Bow appropriate icon.
	if (mainmemory.readbyte(0x00F377) >= 1) then
		mainmemory.writebyte(0x00F340, 2)
	else
		mainmemory.writebyte(0x00F340, 1)
	end
	mainmemory.writebyte(0x00F38E, 128)
else
-- Bitmask is invalid. Fix it.
	mainmemory.writebyte(0x00F38E, 0)
end