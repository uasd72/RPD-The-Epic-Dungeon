---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by mike.
--- DateTime: 04.08.18 18:14
---

local RPD = require "scripts/lib/commonClasses"

local actor = require "scripts/lib/actor"

return actor.init({
    actionTime = function()
        return 1
    end,
    activate = function()
local effect = RPD.MobFactory:mobByName("effects/Light")
effect:setPos(32)
RPD.Dungeon.level:spawnMob(effect)
effect:move(2)
local effect = RPD.MobFactory:mobByName("effects/Light")
effect:setPos(39)
RPD.Dungeon.level:spawnMob(effect)
effect:move(2)
    end

})