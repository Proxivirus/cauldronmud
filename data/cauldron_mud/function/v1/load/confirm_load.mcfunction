
#> cauldron_mud:v1/load/confirm_load
#
# @within	cauldron_mud:v1/load/secondary
#

tellraw @a[tag=convention.debug] {"text":"[Loaded Cauldron Concrete Powder v1]","color":"green"}

scoreboard players set #cauldron_mud.loaded load.status 1
scoreboard objectives add cauldron_mud.dropped minecraft.custom:minecraft.drop