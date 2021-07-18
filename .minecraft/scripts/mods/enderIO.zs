#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.enderio.AlloySmelter;

recipes.addShaped(<enderio:block_wireless_charger_extension>, 
[[null, <enderio:item_material:65>, null],
[<enderio:item_material:65>, <enderio:item_alloy_ingot:4>, <enderio:item_material:65>], 
[null, <enderio:item_material:65>, null]]);

recipes.addShaped(<enderio:block_enhanced_wireless_charger>, 
[[null, <enderio:block_wireless_charger_extension>, null], 
[<ore:plateBasic>, <ore:ingotExtreme>, <ore:plateBasic>]]);

AlloySmelter.removeRecipe(<nuclearcraft:alloy:2>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:11>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:1>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:1>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:2>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:5>);
AlloySmelter.removeRecipe(<thermalfoundation:material:165>);

AlloySmelter.addRecipe(<nuclearcraft:alloy:2>*2, [<minecraft:diamond>, <rftools:dimensional_shard>], 4000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:11>*2, [<rockhounding_chemistry:alloy_items_tech:1>, <nuclearcraft:alloy:2>], 4000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:1>*4, [<ore:ingotTitanium>*3, <rockhounding_chemistry:alloy_items_tech:43>], 36000);