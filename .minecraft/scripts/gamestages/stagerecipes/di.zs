#priority 6

recipes.addShaped(<appliedenergistics2:grindstone>, 
[[<ore:stoneCommon>, <ore:gearWood>, <ore:stoneCommon>], 
[<ore:flake>, <ore:gearStone>, <ore:flake>], 
[<ore:stoneCommon>, <ore:flake>, <ore:stoneCommon>]]);

recipes.addShapeless(<immersiveengineering:stone_decoration:2>, 
[<primal:stone_gallagher>.anyDamage().transformDamage(5), <ore:plateSteel>, <ore:pinIron>, <immersiveengineering:stone_decoration:1>]);

recipes.addShapeless(<immersivetech:stone_decoration>, 
[<primal:stone_gallagher>.anyDamage().transformDamage(5), <ore:plateSteel>, <ore:pinIron>, <immersiveengineering:stone_decoration>]);

recipes.addShapeless(<contenttweaker:carbon_sulfur_mixture> * 2, 
[<ore:dustSulphur>, <ore:dustCharcoal>|<ore:dustCarbon>, <ore:dustSulphur>]);

recipes.addShaped(<nuclearcraft:ingot_block:8>, 
[[<ore:ingotGraphite>, <ore:ingotGraphite>, <ore:ingotGraphite>],
[<ore:ingotGraphite>, <ore:ingotGraphite>, <ore:ingotGraphite>], 
[<ore:ingotGraphite>, <ore:ingotGraphite>, <ore:ingotGraphite>]]);

recipes.addShaped(<minecraft:beacon>, 
[[<minecraft:glass_pane>, <astralsorcery:itemcoloredlens:6>, <minecraft:glass_pane>], 
[<minecraft:glass_pane>, <contenttweaker:beacon_emitter>, <minecraft:glass_pane>], 
[<astralsorcery:itemcraftingcomponent:3>, <ic2:plate:15>, <astralsorcery:itemcraftingcomponent:3>]]);

recipes.addShaped(<contenttweaker:beacon_emitter>, 
[[<nuclearcraft:rad_shielding>, <qmd:part:10>, <nuclearcraft:rad_shielding>],
[<contenttweaker:ultimate_crystal>, <appliedenergistics2:material:24>, <contenttweaker:ultimate_crystal>], 
[<nuclearcraft:rad_shielding>, <nuclearcraft:rtg_uranium>, <nuclearcraft:rad_shielding>]]);

recipes.addShaped(<libvulpes:coil0:4>, 
[[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>],
[<immersiveengineering:wirecoil>, <ore:ingotIron>, <immersiveengineering:wirecoil>], 
[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]]);

recipes.addShaped(<contenttweaker:combustion_chamber>, 
[[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:5>],
[<contenttweaker:igniter>, null, <minecraft:brick>], 
[<ic2:casing:5>, <minecraft:brick>, <ic2:casing:5>]]);