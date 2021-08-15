#priority 100
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;

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
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, [<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Tempus"}]}), <enderio:item_alloy_ingot:1>], 4000);

val oreDelete = [
    <libvulpes:ore0>,
    <libvulpes:ore0:8>,
    <libvulpes:ore0:9>,
    <libvulpes:ore0:10>,
    <thermalfoundation:ore:8>,
    <minecraft:sand>,
    <forestry:resources>,
    <astralsorcery:blockcustomore:1>
] as IItemStack[];
for item in oreDelete{
    SagMill.removeRecipe(item);
}
val geolist = [0,1,4,7,8,10,12] as int[];
for i in geolist{
    SagMill.removeRecipe(<geolosys:cluster>.definition.makeStack(i));
}
for i in 0 to 8 {
    SagMill.removeRecipe(<nuclearcraft:ore>.definition.makeStack(i));
    SagMill.removeRecipe(<biomesoplenty:gem_ore>.definition.makeStack(i));
}