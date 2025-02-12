
#> cauldron_mud:v1/check_dropped
#
# @within	cauldron_mud:v1/second
#

# Seek for items in cauldrons
execute as @e[type=item,predicate=cauldron_mud:v1/mud_in_cauldron] if data entity @s Thrower at @s run function cauldron_mud:v1/dirt

# Remove loop check
scoreboard players reset #check cauldron_mud.dropped
