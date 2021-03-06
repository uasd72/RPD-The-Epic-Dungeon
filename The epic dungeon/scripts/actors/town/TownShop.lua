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
effect:setPos(137)
RPD.Dungeon.level:spawnMob(effect)
effect:move(2)
RPD.createLevelObject({
    kind="Deco",
    object_desc="CandleOnTable"
}
,137)
RPD.createLevelObject({
    kind="Deco",
    object_desc="Table2"
}
,138) 
        local levelSize = RPD.Dungeon.level:getLength()
        for i = 0 , levelSize - 1 do
            if RPD.Dungeon.level.map[i] == RPD.Terrain.EMPTY and math.random(1,3) == 1 then
                local emitter = RPD.Sfx.CellEmitter:get(i-1)
                emitter:pour(RPD.Sfx.WindParticle.FACTORY, 16)
            end
        end

    end

})