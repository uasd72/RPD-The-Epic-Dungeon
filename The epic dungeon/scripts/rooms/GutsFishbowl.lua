local RPD = require "scripts/lib/commonClasses"

local EPD = require "scripts/lib/dopClasses"

local Treasury = luajava.bindClass("com.nyrds.pixeldungeon.items.Treasury")

local customRoom = {
map = function()
return {
4, 4, 4, 12, 4, 4, 4, 4, 14, 14, 63, 14, 14, 4, 4, 14, 63, 63, 63, 14, 4, 4, 63, 63, 63, 63, 63, 4, 4, 14, 63, 63, 63, 14, 4, 4, 14, 14, 63, 14, 14, 4, 4, 4, 4, 4, 4, 4, 4
}
end,
getHidth = function()
return 7
end,
getWidth = function()
return 7
end,
object2 = function(cell)
end,
locked = function()
return nil
end,
objects = function(cell)
local W = RPD.Dungeon.level:getWidth()
local mob = RPD.MobFactory:mobByName("Piranha")
local level = RPD.Dungeon.level
mob:setPos(cell+W-1)
level:spawnMob(mob);
local mob = RPD.MobFactory:mobByName("Piranha")
local level = RPD.Dungeon.level
mob:setPos(cell+W+1)
level:spawnMob(mob);
local mob = RPD.MobFactory:mobByName("Piranha")
local level = RPD.Dungeon.level
mob:setPos(cell-W)
level:spawnMob(mob);
end
}
return customRoom