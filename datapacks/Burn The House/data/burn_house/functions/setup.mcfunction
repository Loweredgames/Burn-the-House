#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup
recipe take @a *
difficulty peaceful
defaultgamemode adventure
spawnpoint @a -173 11 32
setworldspawn -173 11 32
xp set @a 0 levels
xp set @a 0 points
advancement grant @a everything
effect give @a minecraft:saturation 21 250 true
effect give @a minecraft:night_vision 21 250 true
kill @e[type=bat]


##Gamerules
#da fare


##Functions Setup
function burn_house:changelog/building
function burn_house:changelog/nightly_building
function burn_house:generated_maps/maps
function burn_house:timer