---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by mike.
--- DateTime: 23.08.18 22:51
---

local RPD = require "scripts/lib/commonClasses"

local ai = require "scripts/lib/ai"

return ai.init{

act       = function(self, ai, me)
me:getSprite():idle()

if RPD.Dungeon.level:distance(RPD.Dungeon.hero:getPos(),me:getPos()) < 6 then
me:getSprite():attack(1)
RPD.playSound( "snd_zap.mp3" )
local mob = RPD.MobFactory:mobByName("effects/Boll") 
mob:setPos(me:getPos())
RPD.Dungeon.level:spawnMob(mob)

local from = me:getPos()
local to = RPD.Ballistica:cast(from,RPD.Dungeon.hero:getPos(),true,true,true)

local factor = RPD.Dungeon.level:distance(from,to)+1

RPD.Tweeners.JumpTweener:attachTo(mob:getSprite(),to, factor * 10,factor * 0.1f)
mob:getSprite():emitter():start(RPD.Sfx.ShadowParticle.UP, 0.01,factor*10)

mob:destroy()

local mob = RPD.MobFactory:mobByName("effects/Boll") 
mob:setPos(me:getPos())
RPD.Dungeon.level:spawnMob(mob)

local from = me:getPos()
local to = RPD.Ballistica:cast(from,RPD.Dungeon.hero:getPos(),true,true,true)

local factor = RPD.Dungeon.level:distance(from,to)+1

RPD.Tweeners.JumpTweener:attachTo(mob:getSprite(),to, factor * 10*-1,factor * 0.1f)
mob:getSprite():emitter():start(RPD.Sfx.ShadowParticle.UP, 0.01,factor*10)

mob:destroy()

local enemy = RPD.Actor:findChar(to)
if enemy and enemy ~= me then
enemy:damage(math.random(30,50),me)
end
end

me:spend(1)

end,

    gotDamage = function(self, ai, me, src, dmg)

    end,

    status = function(self, ai, me)
        return "охотится на тебя"
    end
}