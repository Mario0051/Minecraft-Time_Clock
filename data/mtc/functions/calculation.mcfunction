#Enable Players Use of the Trigger for the "timeconvention" Scoreboard:
scoreboard players enable @a timeconvention
scoreboard players enable @a seconds

#Main Calculation:
execute store result score daytime daytime run time query daytime
scoreboard players operation hour daytime = daytime daytime
scoreboard players operation hour daytime /= 1000 constants
scoreboard players operation minute daytime = daytime daytime
scoreboard players operation minute daytime %= 1000 constants
scoreboard players operation minute daytime *= 6 constants
scoreboard players operation minute daytime /= 100 constants
execute as @a run execute unless score @s seconds matches 0 unless score @s seconds matches 1 run tellraw @s ["",{"text":"Invalid Integer. The integer must be 0 (clock without seconds) or 1 (clock with seconds).","color":"red"}]
execute as @a run execute unless score @s seconds matches 0 unless score @s seconds matches 1 run scoreboard players set @s seconds 0
execute as @a run execute unless score @s timeconvention matches 12 unless score @s timeconvention matches 24 run tellraw @s ["",{"text":"Invalid Integer. The integer must be 12 (12-hour clock) or 24 (24-hour clock).","color":"red"}]
execute as @a run execute unless score @s timeconvention matches 12 unless score @s timeconvention matches 24 run scoreboard players set @s timeconvention 12
execute as @a[scores={timeconvention=12,seconds=0}] run function mtc:12hcns
execute as @a[scores={timeconvention=24,seconds=0}] run function mtc:24hcns
execute as @a[scores={timeconvention=12,seconds=1}] run function mtc:12hcws
execute as @a[scores={timeconvention=24,seconds=1}] run function mtc:24hcws