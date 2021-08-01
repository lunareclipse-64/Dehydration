#priority 6
import mods.recipestages.Recipes;

Recipes.addShaped("discovery",<appliedenergistics2:grindstone>, 
[[<ore:stoneCommon>, <ore:gearWood>, <ore:stoneCommon>], 
[<ore:flake>, <ore:gearStone>, <ore:flake>], 
[<ore:stoneCommon>, <ore:flake>, <ore:stoneCommon>]]);

Recipes.addShapeless("discovery",<immersiveengineering:stone_decoration:2>, 
[<ore:toolGallagher>.transformDamage(5), <ore:plateSteel>, <ore:pinIron>, <immersiveengineering:stone_decoration:1>]);

Recipes.addShapeless("discovery",<immersivetech:stone_decoration>, 
[<ore:toolGallagher>.transformDamage(5), <ore:plateSteel>, <ore:pinIron>, <immersiveengineering:stone_decoration>]);

Recipes.addShapeless("discovery",<contenttweaker:carbon_sulfur_mixture> * 2, 
[<ore:dustSulphur>, <ore:dustCharcoal>|<ore:dustCarbon>, <ore:dustSulphur>]);

Recipes.addShaped("discovery",<nuclearcraft:ingot_block:8>, 
[[<ore:ingotGraphite>, <ore:ingotGraphite>, <ore:ingotGraphite>],
[<ore:ingotGraphite>, <ore:ingotGraphite>, <ore:ingotGraphite>], 
[<ore:ingotGraphite>, <ore:ingotGraphite>, <ore:ingotGraphite>]]);

Recipes.addShaped("discovery",<minecraft:beacon>, 
[[<minecraft:glass_pane>, <astralsorcery:itemcoloredlens:6>, <minecraft:glass_pane>], 
[<minecraft:glass_pane>, <contenttweaker:beacon_emitter>, <minecraft:glass_pane>], 
[<astralsorcery:itemcraftingcomponent:3>, <ic2:plate:15>, <astralsorcery:itemcraftingcomponent:3>]]);

Recipes.addShaped("discovery",<contenttweaker:beacon_emitter>, 
[[<nuclearcraft:rad_shielding>, <qmd:part:10>, <nuclearcraft:rad_shielding>],
[<contenttweaker:ultimate_crystal>, <appliedenergistics2:material:24>, <contenttweaker:ultimate_crystal>], 
[<nuclearcraft:rad_shielding>, <nuclearcraft:rtg_uranium>, <nuclearcraft:rad_shielding>]]);

Recipes.addShaped("discovery",<libvulpes:coil0:4>, 
[[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>],
[<immersiveengineering:wirecoil>, <ore:ingotIron>, <immersiveengineering:wirecoil>], 
[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]]);

Recipes.addShaped("discovery",<contenttweaker:combustion_chamber>, 
[[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:5>],
[<contenttweaker:igniter>, null, <minecraft:brick>], 
[<ic2:casing:5>, <minecraft:brick>, <ic2:casing:5>]]);

Recipes.addShaped("discovery",<contenttweaker:magnetic_refrigerator>, 
[[<ore:ingotStainlessSteel>, <ore:servo>, <ore:ingotStainlessSteel>],
[<ore:ingotNib>, <ore:dustGadolinium>, <ore:ingotNib>], 
[<ore:ingotStainlessSteel>, <toughasnails:temperature_coil>, <ore:ingotStainlessSteel>]]);

Recipes.addShaped("discovery",<minecraft:piston>, 
[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
[<ic2:casing:3>, <ore:stickIron>, <ic2:casing:3>], 
[<ic2:casing:3>, <immersiveengineering:material:8>, <ic2:casing:3>]]);