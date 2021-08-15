#priority 5
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes;

Recipes.addShapeless("renaissance",<contenttweaker:vivid_crystal> * 4, [<contenttweaker:vivid_crystal_block>]);
val square2Com = {
    <contenttweaker:energy_crystal_block> : <contenttweaker:mana_crystal>,
    <contenttweaker:infused_crystal_block> : <contenttweaker:infused_crystal>,
    <contenttweaker:effulgent_crystal_block> : <contenttweaker:effulgent_crystal>,
    <contenttweaker:vivid_crystal_block> : <contenttweaker:vivid_crystal>,
    <contenttweaker:ultimate_crystal_block> : <contenttweaker:ultimate_crystal>
} as IItemStack[IItemStack];

for compressed in square2Com{
    Recipes.addShaped("renaissance",compressed, 
    [[square2Com[compressed], square2Com[compressed]],
    [square2Com[compressed], square2Com[compressed]]]);
    Recipes.addShapeless("renaissance",square2Com[compressed] * 4,[compressed]);
}

Recipes.addShapeless("renaissance",<actuallyadditions:block_laser_relay_fluids>,[<actuallyadditions:block_laser_relay_item_whitelist>]);
Recipes.addShapeless("renaissance",<actuallyadditions:block_laser_relay_item_whitelist>,[<actuallyadditions:block_laser_relay_fluids>]);