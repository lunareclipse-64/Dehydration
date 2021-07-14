#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.enderio.AlloySmelter;

AlloySmelter.removeRecipe(<nuclearcraft:alloy:2>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:11>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:1>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:1>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:2>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:5>);
AlloySmelter.removeRecipe(<thermalfoundation:material:165>);

AlloySmelter.addRecipe(<nuclearcraft:alloy:2>*2, [<minecraft:diamond>, <rftools:dimensional_shard>], 4000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:11>*2, [<rockhounding_chemistry:alloy_items_tech:1>, <nuclearcraft:alloy:10>], 4000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:1>*4, [<ore:ingotTitanium>*3, <rockhounding_chemistry:alloy_items_tech:43>], 36000);