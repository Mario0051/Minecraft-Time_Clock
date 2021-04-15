#Add Scoreboards:
scoreboard objectives add constants dummy
scoreboard objectives add daytime dummy
scoreboard objectives add seconds trigger
scoreboard objectives add timeconvention trigger

#Reset All Scores:
scoreboard players reset * constants
scoreboard players reset * daytime

#Set Default Constants:
scoreboard players set 6 constants 6
scoreboard players set 100 constants 100
scoreboard players set 360 constants 360
scoreboard players set 1000 constants 1000