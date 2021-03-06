--
-- User: mike
-- Date: 26.05.2018
-- Time: 21:32
-- This file is part of Remixed Pixel Dungeon.
--

local RPD = require "scripts/lib/commonClasses"

local wand = require "scripts/lib/wand"

local EPD = require "scripts/lib/dopClasses"

local storage = require "scripts/lib/storage"

return wand.init{ 
    desc  = function()  
        return {
           image     = 4,
            name      = "Жезл огненных рун",
            info      = "При использовании этот жезл начнёт испускать жидкое пламя. Цена 15 маны."
        }
end, 

    activate = function(self, item, hero)
                RPD.removeBuff(item:getUser(), RPD.Buffs.Light)

        RPD.permanentBuff(item:getUser(), RPD.Buffs.Light)

                RPD.removeBuff(item:getUser(), "Fire")

        RPD.permanentBuff(item:getUser(), "Fire")

    end,

    deactivate = function(self, item, hero)
            RPD.removeBuff(item:getUser(), RPD.Buffs.Light)
                RPD.removeBuff(item:getUser(), "Fire")
    end,

castOnCell = function(self, thisItem, cell,dst,lvl)

RPD.placeBlob( RPD.Blobs.LiquidFlame, dst, 60*(lvl+1))
RPD.zapEffect(thisItem:getUser():getPos(),dst,"Fire")

end,

bag = function(self, item)
        return "WandHolster"
end,

selectType = function()
return "cell"
end,

getMana = function()
return 15
end,

getManaMes = function()
return "-- не хватает маны"
end
}