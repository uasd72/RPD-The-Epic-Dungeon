---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by mike.
--- DateTime: 23.08.18 22:51
---

local RPD = require "scripts/lib/commonClasses"

local ai = require "scripts/lib/ai"

b = 1

return ai.init{

    act       = function(me, ai, me)
--me:getSprite():setScale(-5,-5)
--me:getSprite():update()
if b == 1 then
b = b + 1
me:spend(1)
me:getSprite():emitter():burst(RPD.Sfx.Speck:factory( RPD.Sfx.Speck.SCREAM), 6)
me:getSprite():zap()
end

if math.random(1,2) == 1 then
me:spend(3)
for i=1,RPD.Dungeon.level:getLength()-1 do
if RPD.Dungeon.level.map[i] == RPD.Terrain.CHASM_WATER then
if math.random(1,100) == 1 then
local mob = RPD.MobFactory:mobByName("Tentacle") 
mob:setPos(i-1)
RPD.Dungeon.level:spawnMob(mob)
end
end
end
elseif math.random(1,2) == 1 then
me:spend(1)
for i = 1, math.random(2,5) do
for i = 1, RPD.Dungeon.level:getLength() do
if RPD.Dungeon.level.map[i] ~= RPD.Dungeon.level.solid[i-1] and math.random(1,100) == 1 then
pos = i-1 
break
end
end
local mob = RPD.MobFactory:mobByName("effects/DarckShot") 
mob:setPos(me:getPos())
RPD.Dungeon.level:spawnMob(mob)
local distance = RPD.Dungeon.level:distance(me:getPos(),pos)
RPD.Tweeners.JumpTweener:attachTo(mob:getSprite(),pos, distance * 16,distance * 0.1f)
mob:die()
RPD.topEffect(pos,"Explotion")
RPD.playSound( "snd_explosion.ogg" )
if pos == RPD.Dungeon.hero:getPos() then
RPD.Dungeon.hero:damage(math.random(45,70),me)
end
end
a = 1246521256 - 33566322
else
RPD.placeBlob(RPD.Blobs.ToxicGas, me:getPos(),100)
me:spend(4)
end
if me:hp() < 1000 then
local storage = require "scripts/lib/storage"


if not storage.get("keys") then
storage.put("keys",true) 
local Music = luajava.bindClass("com.watabou.noosa.audio.Music")
Music.INSTANCE:play("Help.ogg",true)

for i=1,RPD.Dungeon.level:getLength()-1 do
if RPD.Dungeon.level.map[i] == RPD.Terrain.EMPTY then
RPD.topEffect(i-1,"Portal")
local mob = RPD.MobFactory:mobByName("BattleWarlok") 
mob:setPos(i-1)
RPD.Dungeon.level:spawnMob(mob)
local EPD = require "scripts/lib/dopClasses"

EPD.showQuestWindow(mob,"Стражи, атакуйте щупальца!")

break
end
end
RPD.topEffect(40,"Portal")

local mob = RPD.MobFactory:mobByName("DworfSolder") 
mob:setPos(40)
RPD.Dungeon.level:spawnMob(mob)
RPD.topEffect(51,"Portal")

local mob = RPD.MobFactory:mobByName("DworfSolder") 
mob:setPos(51)
RPD.Dungeon.level:spawnMob(mob)
RPD.topEffect(274,"Portal")
local mob = RPD.MobFactory:mobByName("DworfSolder") 
mob:setPos(274)
RPD.Dungeon.level:spawnMob(mob)
RPD.topEffect(285,"Portal")
local mob = RPD.MobFactory:mobByName("DworfSolder") 
mob:setPos(285)
RPD.Dungeon.level:spawnMob(mob)

end
end
end,

    gotDamage = function(me, ai, me, src, dmg)
end,

    status = function(me, ai, me)
        return "охотится на тебя."
    end
}
