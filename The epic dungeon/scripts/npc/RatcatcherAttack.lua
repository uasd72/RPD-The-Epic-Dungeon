--
-- User: mike
-- Date: 25.01.2018
-- Time: 0:26
-- This file is part of Remixed Pixel Dungeon.
--

local RPD = require "scripts/lib/commonClasses"

local mob = require"scripts/lib/mob"

return mob.init{
spawn = function(me, level)
RPD.setAi(me,"RatcatcherAttack")
RPD.topEffect(me:getPos(),"BlueMagicCould")
end
}
