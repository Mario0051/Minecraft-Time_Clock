#Enable Players Use of the Trigger for the "timeconvention" Scoreboard:
scoreboard players enable @a timeconvention

#Main Calculation:
execute store result score daytime daytime run time query daytime
scoreboard players operation hour daytime = daytime daytime
scoreboard players operation hour daytime /= 1000 constants
scoreboard players operation hour_original daytime = daytime daytime
scoreboard players operation hour_original daytime /= 1000 constants
scoreboard players operation daytime_rounded daytime = hour_original daytime
scoreboard players operation daytime_rounded daytime *= 1000 constants
scoreboard players operation daytime_subtracted daytime = daytime daytime
scoreboard players operation daytime_subtracted daytime -= daytime_rounded daytime
scoreboard players operation minute daytime = daytime_subtracted daytime
scoreboard players operation minute daytime *= 100 constants
scoreboard players operation minute daytime *= 6 constants
scoreboard players operation minute daytime /= 10000 constants
execute as @a[scores={timeconvention=24}] at @s run function mtc:24hc
execute as @a[scores={timeconvention=12}] at @s run function mtc:12hc