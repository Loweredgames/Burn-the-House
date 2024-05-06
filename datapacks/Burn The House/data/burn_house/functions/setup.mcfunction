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


##Functions Setup
function burn_house:changelog/building
function burn_house:changelog/nightly_building


##Player Death
scoreboard objectives add burn_house dummy
scoreboard objectives add burn_house_reset_maps dummy
scoreboard objectives add burn_house_reset deathCount
execute as @a[scores={burn_house_reset=1..}] run scoreboard players add @a burn_house_reset_maps 1
execute as @a[scores={burn_house_reset=1..}] run scoreboard players set @a burn_house_timer_seconds 1
execute as @a[scores={burn_house_reset_maps=60}] run gamemode spectator @a
execute as @a[scores={burn_house_reset_maps=65}] run tp @a -214 10 -58 -44 0
execute as @a[scores={burn_house_reset_maps=100}] run gamemode adventure @a
execute as @a[scores={burn_house_reset_maps=100}] run scoreboard players set @a burn_house 1
execute as @a[scores={burn_house_reset_maps=100}] run fill -178 46 -21 -215 46 -59 minecraft:air
execute as @a[scores={burn_house_reset_maps=104..}] run scoreboard objectives remove burn_house_reset
execute as @a[scores={burn_house_reset_maps=104..}] run scoreboard objectives remove burn_house_reset_maps