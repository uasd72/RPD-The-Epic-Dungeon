local table = 
{
kind = "Womb",
Entrance = "CavesEntrance",
EntranceDebag = "EntranceDebag",
Exit = "CavesExit",
ExitHeigth = 4,
ExitWidth = 4,
RoomHeigth = 7,
RoomWidth = 7, 
RandRooms = {"GooRoom","GooSloth","GooBalls","GooLibrary","BigGooLibrary","GooArmory","GooEye","GooChaos","GooWarehause","GooChasm","GooTomb","GooFishbowl","GooStatue","GooTeeth","GooBestRoom"},
--RandRooms = {"SpinnerNest"},
HasBase = false,
Items = {"Ration"},
Water = true,
WaterMin = 1,
WaterMax = 3,
WaterChanse = 0.0005,
Grass = true,
GrassChanse = 0.0001,
GrassMin = 1,
GrassMax = 2,
Traps = {
"ToxicTrap",
"FireTrap",
"PoisonTrap",
"AlaramTrap",
"GrippingTrap",
"LightingTrap",
"ParalyticTrap",
"SecretToxicTrap",
"SecretFireTrap",
"SecretPoisonTrap",
"SecretAlaramTrap",
"SecretGrippingTrap",
"SecretLightingTrap",
"SecretParalyticTrap"
},
ChanseTrap = 0.1,
Shop = "GooShop",
LevelShop = 21,
ShopWidth = 7,
ShopHeigth = 7,
NPC = nil,
levelNPC = 22,
NPCRoom = "GooWitchRoom",
NPCRoomWidth = 7,
NPCRoomHeigth = 7,
Range = 10000,
GinFactor = 20,
RoomFactor = 0,
MiniBoss = "GooHashRoom",
LevelMiniBoss = 24,
WombFactor = 2,
WombFactorChanse = 60,
WombSeed = 4
}

return table