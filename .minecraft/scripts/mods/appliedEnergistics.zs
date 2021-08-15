#priority 100
#loader crafttweaker reloadableevents
import mods.appliedenergistics2.Inscriber;
import mods.appliedenergistics2.Grinder;
import mods.recipestages.Recipes;

Recipes.addShaped("discovery",<appliedenergistics2:inscriber>, 
[[<ore:plateSteel>, <ore:piston>, <ore:plateSteel>],
[<ore:blockStoneHardened>, <contenttweaker:mana_crystal>, <ore:blockStoneHardened>], 
[<ore:plateSteel>, <ore:piston>, <ore:plateSteel>]]);

Recipes.addShaped("automation",<appliedenergistics2:interface>, 
[[<ore:plateSteel>, <ore:plateDimensionalShard>, <ore:plateSteel>],
[<appliedenergistics2:material:43>, <ore:chassis>, <appliedenergistics2:material:44>], 
[<ore:plateSteel>, <ore:actuator>, <ore:plateSteel>]]);

Recipes.addShaped("automation",<appliedenergistics2:drive>, 
[[<ore:plateElite>, <ore:processorElite>, <ore:plateElite>],
[<ic2:plating>, <rockhounding_chemistry:misc_blocks_a>, <ic2:plating>], 
[<ore:plateElite>, <nuclearcraft:alloy:1>, <ore:plateElite>]]);

Recipes.addShaped("automation",<appliedenergistics2:fluid_interface>, 
[[<ore:plateInvar>, <rftools:dimensional_shard>, <ore:plateInvar>],
[<appliedenergistics2:material:43>, <nuclearcraft:part:10>, <appliedenergistics2:material:44>], 
[<ore:plateInvar>, <nuclearcraft:part:9>, <ore:plateInvar>]]);

Recipes.addShaped("automation",<enderio:block_electric_light>*2, 
[[null, <appliedenergistics2:quartz_glass>, null],
[null, <minecraft:glowstone_dust>, null], 
[<ic2:casing:3>, <qmd:semiconductor:3>, <ic2:casing:3>]]);

Recipes.addShaped("automation",<appliedenergistics2:part:180>, 
[[null, <ic2:casing:5>, null],
[<appliedenergistics2:part:140>, <enderio:block_electric_light>, <appliedenergistics2:material:8>], 
[null, <ic2:casing:5>, null]]);

Recipes.addShapeless("automation",<rftools:screen>, 
[<appliedenergistics2:part:180>,<rockhounding_chemistry:misc_items:1>]);

Recipes.addShaped("automation",<appliedenergistics2:energy_cell>, 
[[<rockhounding_chemistry:alloy_parts:79>, <contenttweaker:mana_crystal>, <rockhounding_chemistry:alloy_parts:79>],
[<appliedenergistics2:part:16>, <nuclearcraft:part:12>, <appliedenergistics2:part:16>], 
[<rockhounding_chemistry:alloy_parts:79>, <contenttweaker:mana_crystal>, <rockhounding_chemistry:alloy_parts:79>]]);

Inscriber.removeRecipe(<appliedenergistics2:material:17>);
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
Inscriber.removeRecipe(<appliedenergistics2:material:24>);

Inscriber.addRecipe(<appliedenergistics2:material:18>, <ore:plateGold>, true, <appliedenergistics2:material:15>);
Inscriber.addRecipe(<appliedenergistics2:material:17>, <ore:platePlatinum>, true, <appliedenergistics2:material:14>);
Inscriber.addRecipe(<appliedenergistics2:material:20>, <qmd:semiconductor:3>, true, <appliedenergistics2:material:19>);
Inscriber.addRecipe(<compactmachines3:wallbreakable>*4, <ic2:resource:11>, false, <thaumcraft:plate:3>,<nuclearcraft:part>);
Inscriber.addRecipe(<compactmachines3:wallbreakable>*4 , <ic2:resource:11>, false, <jaopca:item_platedimensionalshard>,<nuclearcraft:part>);
Inscriber.addRecipe(<compactmachines3:wallbreakable>*8, <ic2:resource:11>, false, <thaumcraft:plate:3>,<nuclearcraft:part:1>);
Inscriber.addRecipe(<compactmachines3:wallbreakable>*8 , <ic2:resource:11>, false, <jaopca:item_platedimensionalshard>,<nuclearcraft:part:1>);
Inscriber.addRecipe(<nuclearcraft:rad_shielding>, <nuclearcraft:part>, false, <rockhounding_chemistry:gr_catalyst>, <rockhounding_chemistry:fe_catalyst>);
Inscriber.addRecipe(<nuclearcraft:rad_shielding:1>, <nuclearcraft:part:1>, false, <rockhounding_chemistry:gr_catalyst>, <rockhounding_chemistry:ni_catalyst>);
Inscriber.addRecipe(<nuclearcraft:rad_shielding:2>, <nuclearcraft:part:3>, false, <rockhounding_chemistry:gr_catalyst>, <rockhounding_chemistry:os_catalyst>);

Grinder.addRecipe(<nuclearcraft:compound:7>, <rockhounding_chemistry:borate_shards>, 2);
Grinder.removeRecipe(<minecraft:quartz_ore>);
Grinder.removeRecipe(<minecraft:obsidian>);
Grinder.removeRecipe(<thermalfoundation:material:163>);
Grinder.removeRecipe(<forestry:ingot_bronze>);
Grinder.removeRecipe(<thermalfoundation:material:161>);
Grinder.removeRecipe(<appliedenergistics2:sky_stone_block>);
Grinder.removeRecipe(<nuclearcraft:alloy>);
Grinder.removeRecipe(<primal:bronze_ingot>);