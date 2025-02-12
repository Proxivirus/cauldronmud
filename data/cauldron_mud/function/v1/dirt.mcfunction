
#> cauldron_mud:v1/dirt
#
# @within	cauldron_mud:v1/check_dropped
#

# Switch case
scoreboard players set #success cauldron_mud.dropped 0
execute if score #success cauldron_mud.dropped matches 0 store success score #success cauldron_mud.dropped if items entity @s contents dirt run data modify entity @s Item.id set value "minecraft:mud"
execute if score #success cauldron_mud.dropped matches 0 store success score #success cauldron_mud.dropped if items entity @s contents coarse_dirt run data modify entity @s Item.id set value "minecraft:mud"
execute if score #success cauldron_mud.dropped matches 0 store success score #success cauldron_mud.dropped if items entity @s contents rooted_dirt run data modify entity @s Item.id set value "minecraft:mud"


# If success, remove water
execute if score #success cauldron_mud.dropped matches 1 store result score #count cauldron_mud.dropped run data get entity @s Item.count
execute if score #success cauldron_mud.dropped matches 1 if score #count cauldron_mud.dropped matches 16.. run function cauldron_mud:v1/remove_water

# Reset success and count
scoreboard players reset #success cauldron_mud.dropped
scoreboard players reset #count cauldron_mud.dropped
