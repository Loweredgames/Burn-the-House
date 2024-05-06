#Copyright (C) Loweredgames (Lorenzo Giannini) 
#Contacted:<https://github.com/Loweredgames>
#This Source Code Form is subject to the terms of the License.
#NOT OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG STUDIO.
#READING THE COPYRIGHT (C): <https://www.minecraft.net/en-us/terms>


##Setup Timer
scoreboard objectives add burn_house_timer_seconds dummy
scoreboard objectives setdisplay list burn_house_timer
scoreboard objectives add burn_house_timer dummy
execute as @a[scores={burn_house_timer_seconds=1}] run scoreboard players reset @a burn_house_timer
execute as @a[scores={burn_house_timer_seconds=10}] run scoreboard players add @a burn_house_timer 1