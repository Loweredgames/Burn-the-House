#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Burning Blocks Setup
scoreboard objectives add burn_house_fire dummy
scoreboard players add @a burn_house_fire 1


#Player Burn (fare limite)
execute as @a[scores={burn_house_fire=100000..}] run damage @p 10 minecraft:on_fire


#Chiseled Bookshelf
execute at @a[scores={burn_house_fire=9000..}] if block ~ ~-1 ~ minecraft:chiseled_bookshelf run setblock ~ ~-1 ~ minecraft:bookshelf
execute at @a[scores={burn_house_fire=9000..}] if block ~ ~2 ~ minecraft:chiseled_bookshelf run setblock ~ ~2 ~ minecraft:bookshelf


#Barrel
execute at @a[scores={burn_house_fire=6000..7000}] if block ~ ~-1 ~ minecraft:barrel run setblock ~ ~-1 ~ minecraft:smooth_basalt
execute at @a[scores={burn_house_fire=6000..7000}] if block ~ ~2 ~ minecraft:barrel run setblock ~ ~2 ~ minecraft:smooth_basalt
execute at @a[scores={burn_house_fire=9500..}] if block ~ ~-1 ~ minecraft:smooth_basalt run setblock ~ ~-1 ~ minecraft:coal_block
execute at @a[scores={burn_house_fire=9500..}] if block ~ ~2 ~ minecraft:smooth_basalt run setblock ~ ~2 ~ minecraft:coal_block
execute at @a[scores={burn_house_fire=10000..}] if block ~ ~-1 ~ minecraft:coal_block run setblock ~ ~-1 ~ minecraft:black_wool
execute at @a[scores={burn_house_fire=10000..}] if block ~ ~2 ~ minecraft:coal_block run setblock ~ ~2 ~ minecraft:black_wool


#Jukebox
execute at @a[scores={burn_house_fire=20000..}] if block ~ ~-1 ~ minecraft:jukebox run setblock ~ ~-1 ~ minecraft:black_concrete_powder
execute at @a[scores={burn_house_fire=20000..}] if block ~ ~2 ~ minecraft:jukebox run setblock ~ ~2 ~ minecraft:black_concrete_powder