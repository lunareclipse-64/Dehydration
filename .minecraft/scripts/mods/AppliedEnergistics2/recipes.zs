#priority 100
import mods.appliedenergistics2.Inscriber;
import mods.appliedenergistics2.Grinder;

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