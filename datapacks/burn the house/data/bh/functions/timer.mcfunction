#timer#
scoreboard objectives add timer_on dummy
scoreboard objectives setdisplay list timer
scoreboard objectives add timer dummy
execute as @a[scores={timer_on=1}] run scoreboard players reset @a timer
execute as @a[scores={timer_on=10}] run scoreboard players add @a timer 1