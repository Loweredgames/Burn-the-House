#setup#
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


#kill#
scoreboard objectives add bh dummy
scoreboard objectives add reset_maps dummy
scoreboard objectives add reset deathCount
execute as @a[scores={reset=1..}] run scoreboard players add @a reset_maps 1
execute as @a[scores={reset=1..}] run scoreboard players set @a timer_on 1
execute as @a[scores={reset_maps=60}] run gamemode spectator @a
execute as @a[scores={reset_maps=65}] run tp @a -214 10 -58 -44 0
execute as @a[scores={reset_maps=100}] run gamemode adventure @a
execute as @a[scores={reset_maps=100}] run scoreboard players set @a bh 1
execute as @a[scores={reset_maps=100}] run fill -178 46 -21 -215 46 -59 minecraft:air
execute as @a[scores={reset_maps=104..}] run scoreboard objectives remove reset
execute as @a[scores={reset_maps=104..}] run scoreboard objectives remove reset_maps
kill @e[type=bat]


#function#
function bh:maps
function bh:timer