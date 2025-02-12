
#> cauldron_mud:v1/second
#
# @within	cauldron_mud:v1/tick
#

# Reset timer
scoreboard players set #second cauldron_mud.data 0

# If need someone dropped, run function
execute if score #check cauldron_mud.dropped matches 1.. run function cauldron_mud:v1/check_dropped

# Reset player dropped score and turn #check to 1 or more
execute store result score #check cauldron_mud.dropped run scoreboard players reset @a[scores={cauldron_mud.dropped=1..}] cauldron_mud.dropped
