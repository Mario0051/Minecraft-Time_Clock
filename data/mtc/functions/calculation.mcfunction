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
scoreboard players reset @a[scores={seconds=2..}] seconds
scoreboard players reset @a[scores={timeconvention=2..}] timeconvention
execute as @a unless score @s timeconvention matches 1.. unless score @s seconds matches 1.. run function mtc:12hcns
execute as @a[scores={timeconvention=1}] unless score @s seconds matches 1.. run function mtc:24hcns
execute as @a[scores={seconds=1}] unless score @s timeconvention matches 1.. run function mtc:12hcws
execute as @a[scores={timeconvention=1,seconds=1}] run function mtc:24hcws