#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


#bh_set#
scoreboard players add @a bh_set 1
execute as @a[scores={bh_set=5}] run setblock -215 7 -61 minecraft:redstone_block
execute as @a[scores={bh_set=10}] run setblock -215 7 -59 minecraft:sand
execute as @a[scores={bh_set=10}] run setblock -215 7 -61 minecraft:sand
execute as @a[scores={bh_set=10}] run scoreboard players set @a timer_on 10
execute as @a[scores={bh_set=11..}] run function bh:lava
execute as @a[scores={bh_set=11..}] run scoreboard objectives remove bh_set


#bh_spawn#
scoreboard objectives add bh_spawn dummy
execute as @a[scores={bh_spawn=1}] run tp @a -137.46 10.00 71.37
execute as @a[scores={bh_spawn=1}] run scoreboard objectives remove bh_spawn
execute as @a[scores={bh_spawn=2}] run tp @a -205.50 10.00 -36.46 -487.70 89.25
execute as @a[scores={bh_spawn=2}] run scoreboard objectives remove bh_spawn
execute as @a[scores={bh_spawn=3}] run tp @a -192.51 10.00 -39.30 -180.95 3.90
execute as @a[scores={bh_spawn=3}] run scoreboard objectives remove bh_spawn
execute as @a[scores={bh_spawn=4}] run tp @s -205.63 10.00 -53.51 -1440.80 -0.15
execute as @a[scores={bh_spawn=4}] run scoreboard objectives remove bh_spawn


##null##
scoreboard players add @a bh_set_null 1
execute as @a[scores={bh=1}] run scoreboard objectives add bh_set_null dummy
execute as @a[scores={bh_set_null=5}] run setblock -215 7 -61 minecraft:redstone_block
execute as @a[scores={bh_set_null=10}] run setblock -215 7 -59 minecraft:sand
execute as @a[scores={bh_set_null=10}] run setblock -215 7 -61 minecraft:sand
execute as @a[scores={bh_set_null=11..}] run scoreboard objectives remove bh_set_null
execute as @a[scores={bh=1}] run setblock -215 7 -59 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LorenzoG03102000",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:38,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:null",sizeY:38,sizeZ:39,showboundingbox:1b}
execute as @a[scores={bh=1}] run scoreboard players set @a bh_spawn 1
execute as @a[scores={bh=1}] run scoreboard players set @a bh 0


##test_map##
execute as @a[scores={bh=2}] run scoreboard objectives add bh_set dummy
execute as @a[scores={bh=2}] run setblock -215 7 -59 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LorenzoG03102000",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:38,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:test_map",sizeY:38,sizeZ:39,showboundingbox:1b}
execute as @a[scores={bh=2}] run scoreboard players set @a bh_spawn 2
execute as @a[scores={bh=2}] run scoreboard players set @a bh 0


##Warped_house##
execute as @a[scores={bh=3}] run scoreboard objectives add bh_set dummy
execute as @a[scores={bh=3}] run setblock -215 7 -59 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LorenzoG03102000",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:38,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:warped_house",sizeY:38,sizeZ:39,showboundingbox:1b}
execute as @a[scores={bh=3}] run scoreboard players set @a bh_spawn 3
execute as @a[scores={bh=3}] run scoreboard players set @a bh 0


##red_box##
execute as @a[scores={bh=4}] run scoreboard objectives add bh_set dummy
execute as @a[scores={bh=4}] run setblock -215 7 -59 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LorenzoG03102000",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:38,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:red_box",sizeY:38,sizeZ:39,showboundingbox:1b}
execute as @a[scores={bh=4}] run scoreboard players set @a bh_spawn 4
execute as @a[scores={bh=4}] run scoreboard players set @a bh 0