#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Maps
scoreboard players add @a burn_house_tick 1
execute as @a[scores={burn_house_tick=2}] run scoreboard players set @a burn_house -1
execute as @a[scores={burn_house_tick=10..}] run scoreboard objectives remove burn_house_tick


##Spawn Lava
scoreboard players add @a burn_house_lava 1
execute as @a[scores={burn_house_lava=10}] run scoreboard players set @a burn_house_timer_seconds 10
execute as @a[scores={burn_house_lava=11}] run function burn_house:generated_maps/lava
execute as @a[scores={burn_house_lava=12..}] run scoreboard objectives remove burn_house_lava


##Player Death
scoreboard objectives add burn_house dummy
scoreboard objectives add burn_house_reset_maps dummy
scoreboard objectives add burn_house_reset deathCount
execute as @a[scores={burn_house_reset=1..}] run scoreboard players add @a burn_house_reset_maps 1
execute as @a[scores={burn_house_reset=1..}] run scoreboard players set @a burn_house_timer_seconds 1
execute as @a[scores={burn_house_reset_maps=60}] run gamemode spectator @a
execute as @a[scores={burn_house_reset_maps=65}] run tp @a -214 10 -58 -45 0
#execute as @a[scores={burn_house_reset_maps=100}] run gamemode adventure @a
execute as @a[scores={burn_house_reset_maps=100}] run scoreboard players set @a burn_house -1
execute as @a[scores={burn_house_reset_maps=100}] run fill -178 45 -21 -215 41 -59 minecraft:air
execute as @a[scores={burn_house_reset_maps=100}] run tp @a -138 10 71 0 0
execute as @a[scores={burn_house_reset_maps=105}] run scoreboard objectives add burn_house_null dummy
execute as @a[scores={burn_house_reset_maps=120..}] run scoreboard objectives remove burn_house_reset
execute as @a[scores={burn_house_reset_maps=120..}] run scoreboard objectives remove burn_house_reset_maps


##Reset Null
scoreboard players add @a burn_house_null 1
#Debugexecute as @a[scores={burn_house=0}] run scoreboard objectives add burn_house_null dummy
execute as @a[scores={burn_house_null=5}] run place template burn_house:null -215 3 -59
execute as @a[scores={burn_house_null=15..}] run scoreboard objectives remove burn_house_null


##Map - Test Map
scoreboard players add @a burn_house_map1 1
execute as @a[scores={burn_house=1}] run scoreboard objectives add burn_house_tick dummy
execute as @a[scores={burn_house=1}] run scoreboard objectives add burn_house_map1 dummy
execute as @a[scores={burn_house_map1=1}] run scoreboard objectives add burn_house_lava dummy
execute as @a[scores={burn_house_map1=100}] run place template burn_house:test_map -215 3 -59
execute as @a[scores={burn_house_map1=105}] run tp @a -205.50 10.00 -36.46 -487.70 89.25
execute as @a[scores={burn_house_map1=110..}] run scoreboard objectives remove burn_house_map1


##Map - Warped House
scoreboard players add @a burn_house_map2 1
execute as @a[scores={burn_house=2}] run scoreboard objectives add burn_house_tick dummy
execute as @a[scores={burn_house=2}] run scoreboard objectives add burn_house_map2 dummy
execute as @a[scores={burn_house_map2=1}] run scoreboard objectives add burn_house_lava dummy
execute as @a[scores={burn_house_map2=100}] run place template burn_house:warped_house -215 3 -59
execute as @a[scores={burn_house_map2=105}] run tp @p -192.51 10.00 -39.30 -180.95 3.90
execute as @a[scores={burn_house_map2=110..}] run scoreboard objectives remove burn_house_map2


##Map - Red Box
scoreboard players add @a burn_house_map3 1
execute as @a[scores={burn_house=3}] run scoreboard objectives add burn_house_tick dummy
execute as @a[scores={burn_house=3}] run scoreboard objectives add burn_house_map3 dummy
execute as @a[scores={burn_house_map3=1}] run scoreboard objectives add burn_house_lava dummy
execute as @a[scores={burn_house_map3=100}] run place template burn_house:red_box -215 3 -59
execute as @a[scores={burn_house_map3=105}] run tp @p -205.63 10.00 -53.51 -1440.80 -0.15
execute as @a[scores={burn_house_map3=110..}] run scoreboard objectives remove burn_house_map3