#Display 24-Hour Clock (With Seconds) in the Action Bar to Players Holding a Clock With the Value of Scoreboard Objective "timeconvention" Being 24:
scoreboard players operation second daytime = daytime daytime
scoreboard players operation second daytime %= 6 constants
scoreboard players operation second daytime *= 114 constants
scoreboard players operation second daytime /= 25 constants
execute if score hour daytime matches 0..9 run scoreboard players set leading0h daytime 0
execute if score minute daytime matches 0..9 run scoreboard players set leading0m daytime 0
execute if score second daytime matches 0..9 run scoreboard players set leading0s daytime 0
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"}}] run title @s actionbar ["",{"text":"Time: ","color":"dark_green","bold":true},{"score":{"name":"leading0h","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"hour_original","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"name":"leading0m","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"minute","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"name":"leading0s","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"second","objective":"daytime"},"color":"dark_aqua","bold":true}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] run title @s actionbar ["",{"text":"Time: ","color":"dark_green","bold":true},{"score":{"name":"leading0h","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"hour_original","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"name":"leading0m","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"minute","objective":"daytime"},"color":"dark_aqua","bold":true},{"text":":","color":"dark_aqua","bold":true},{"score":{"name":"leading0s","objective":"daytime"},"color":"dark_aqua","bold":true},{"score":{"name":"second","objective":"daytime"},"color":"dark_aqua","bold":true}]
scoreboard players reset leading0h daytime
scoreboard players reset leading0m daytime
scoreboard players reset leading0s daytime