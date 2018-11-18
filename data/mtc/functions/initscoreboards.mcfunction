#Add Scoreboards:
scoreboard objectives add constants dummy
scoreboard objectives add daytime dummy
scoreboard objectives add seconds trigger
scoreboard objectives add timeconvention trigger

#Reset All Scores:
scoreboard players reset * constants
scoreboard players reset * daytime

#Set Default Trigger Values:
execute as @a at @s unless score @s second matches 0..1 run scoreboard players set @s second 0
execute as @a at @s unless score @s second matches 12..24 run scoreboard players set @s timeconvention 12

#Set Default Constants:
scoreboard players set 6 constants 6
scoreboard players set 10 constants 10
scoreboard players set 36 constants 36
scoreboard players set 100 constants 100
scoreboard players set 1000 constants 1000
scoreboard players set 10000 constants 10000