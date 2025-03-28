
#> cauldron_mud:v1/load/enumerate
#
# @within	#cauldron_mud:enumerate
#

# If current major is too low, set it to the current major
execute unless score #cauldron_mud.major load.status matches 1.. run scoreboard players set #cauldron_mud.major load.status 1

# If current minor is too low, set it to the current minor (only if major is correct)
execute if score #cauldron_mud.major load.status matches 1 unless score #cauldron_mud.minor load.status matches 3.. run scoreboard players set #cauldron_mud.minor load.status 3

# If current patch is too low, set it to the current patch (only if major and minor are correct)
execute if score #cauldron_mud.major load.status matches 1 if score #cauldron_mud.minor load.status matches 3 unless score #cauldron_mud.patch load.status matches 0.. run scoreboard players set #cauldron_mud.patch load.status 0
