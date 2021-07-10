#priority 5
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

recipes.addShapeless(<contenttweaker:vivid_crystal> * 4, [<contenttweaker:vivid_crystal_block>]);
val square2Com = {
    <contenttweaker:energy_crystal_block>:<contenttweaker:mana_crystal>,
    <contenttweaker:infused_crystal_block>:<contenttweaker:infused_crystal>,
    <contenttweaker:effulgent_crystal_block>:<contenttweaker:effulgent_crystal>,
    <contenttweaker:vivid_crystal_block>:<contenttweaker:vivid_crystal>,
    <contenttweaker:ultimate_crystal_block>:<contenttweaker:ultimate_crystal>
} as IItemStack[IItemStack];

for compressed in square2Com{
    recipes.addShaped(compressed, 
    [[square2Com[compressed], square2Com[compressed]],
    [square2Com[compressed], square2Com[compressed]]]);
    recipes.addShapeless(square2Com[compressed] * 4,[compressed]);
}