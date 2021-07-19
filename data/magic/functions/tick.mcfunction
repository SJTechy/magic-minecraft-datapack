## Staffs
# Fire Staff
execute as @a[scores={use_staff=1..},nbt={SelectedItem:{tag:{tag:["firestaff"]}}, OnGround: 1b}] at @s run function magic:fire_bolt
# Ice Staff
execute as @a[scores={use_staff=1..},nbt={SelectedItem:{tag:{tag:["icestaff"]}}}] at @s run function magic:ice_floor

## Spells
# Lightning Spell
execute as @a[scores={use_staff=1..},nbt={SelectedItem:{tag:{tag:["wand"]}},Inventory:[{Slot:-106b,tag:{spelloflightning:1b}}]}] at @s run function magic:lightning_bolt
# Levitation Spell
execute as @a[scores={use_staff=1..},nbt={SelectedItem:{tag:{tag:["wand"]}},Inventory:[{Slot:-106b,tag:{spelloflevitation:1b}}]}] at @s run function magic:levitation_spell

## Armor
# Plate of Amethyst
execute as @a[nbt={Inventory:[{Slot:102b, tag:{plateofamethyst:1b}}]},nbt=!{ActiveEffects:[{Id:21b,Amplifier:4b}]}] at @s run effect give @s health_boost 120 4 false
execute as @a[nbt={Inventory:[{Slot:102b, tag:{plateofamethyst:1b}}]},nbt=!{ActiveEffects:[{Id:10b,Amplifier:2b}]}] at @s run effect give @s regeneration 10 2

## Recipes
# Fire Staff
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:4b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:2b}},distance=0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Fire Staff","color":"dark_red","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:323456,tag:["firestaff","craft"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:4b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:2b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft","firestaff"]}}}] at @s run function magic:recipes/firestaff_recipe
# Ice Staff
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_ice",Count:32b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:2b}},distance=0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Ice Staff","color":"dark_blue","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:987654,tag:["icestaff","craft"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blue_ice",Count:32b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:2b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft","icestaff"]}}}] at @s run function magic:recipes/icestaff_recipe
# Blue Wand
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_dye",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},distance=0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Blue Wand","color":"dark_blue","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:892746,tag:["wand","craft","bluewand"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:blue_dye",Count:1b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft","bluewand"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft","wand","bluewand"]}}}] at @s run function magic:recipes/bluewand_recipe
# Green Wand
execute as @e[type=item,nbt={Item:{id:"minecraft:green_dye",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},distance=0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Green Wand","color":"dark_green","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:858432,tag:["wand","craft","greenwand"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:green_dye",Count:1b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{tag:["craft","wand","greenwand"]}}}] at @s run function magic:recipes/greenwand_recipe
# Spell of Levitation
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b}},distance=0..1,limit=1,sort=nearest] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}},distance=0..1,limit=1,sort=nearest] run summon item ~ ~ ~ {Item:{id:"minecraft:book",Count:1b,tag:{Enchantments:[{}],display:{Name:'{"text":"Spell of Levitation","color":"#003478","bold":true,"italic":false}',Lore:['{"text":"Place this spell in your off-hand and use a wand","bold":false,"italic":true}']},Unbreakable:1b,tag:["spelloflevitation","craft"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b}},limit=1,sort=nearest,distance=0..1,nbt=!{Item:{tag:{tag:["spelloflevitation"]}}}]
execute as @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b,tag:{tag:["craft"]}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:feather",Count:1b}},limit=1,sort=nearest,distance=0..1]
execute as @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b,tag:{tag:["craft","spelloflevitation"]}}}] at @s run function magic:recipes/levitation_recipe



execute as @a[scores={use_staff=1..}] run scoreboard players set @s use_staff 0