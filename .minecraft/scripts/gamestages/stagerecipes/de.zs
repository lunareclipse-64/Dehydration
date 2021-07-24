#priority 10
//Startgame tweak
import crafttweaker.item.IItemStack;
import mods.recipestages.Recipes;
//about dirt
Recipes.addShapeless("desperation",<biomesoplenty:dirt>,[<biomesoplenty:dirt:8>, <primal_tech:rock:2>.anyDamage().transformDamage(4)]);
Recipes.addShapeless("desperation",<biomesoplenty:dirt:2>,[<biomesoplenty:dirt:10>, <primal_tech:rock:2>.anyDamage().transformDamage(4)]);
Recipes.addShapeless("desperation",<biomesoplenty:dirt:1>,[<biomesoplenty:dirt:9>, <primal_tech:rock:2>.anyDamage().transformDamage(4)]);
Recipes.addShapeless("desperation",<minecraft:dirt>*2,[<biomesoplenty:dirt:1>, <biomesoplenty:dirt:2>, <primal_tech:rock:2>.anyDamage().transformDamage(5),<biomesoplenty:dirt>]);
//dirt ingredients
Recipes.addShapeless("desperation",<nuclearcraft:gem_dust:11>, [<ore:rock>.reuse(), <ore:sandstone>]);
Recipes.addShapeless("desperation",<biomesoplenty:dirt:10> * 2, [<minecraft:rotten_flesh>, <ore:sand>,<minecraft:dye:15>, <primal_tech:rock>.anyDamage().transformDamage(3)]);
Recipes.addShapeless("desperation",<biomesoplenty:dirt:8> * 2, [<primal_tech:rock:2>.anyDamage().transformDamage(3),<primal:dirt_stick>|<minecraft:stick>, <biomesoplenty:dirt:9>, <biomesoplenty:dirt:10>]);
Recipes.addShapeless("desperation",<primal:dirt_stick>,[<ore:dustSandstone>,<ore:dustSandstone>,<primal_tech:rock:2>.anyDamage().transformDamage(2),<primal_tech:rock:2>.anyDamage().transformDamage(2)]);
Recipes.addShapeless("desperation",<minecraft:dye:15> * 2, [<ore:bone>, <ore:rock>]);
//sands
Recipes.addShapeless("desperation",<minecraft:sand>, [<ore:dustSandstone>, <ore:dustSandstone>, <primal_tech:rock>.anyDamage().transformDamage(4), <nuclearcraft:gem_dust:11>]);
//stoneplate
Recipes.addShapeless("desperation",<primal_tech:rock>, [<primal:rock_stone>, <ore:dustSandstone>, <ore:dustSandstone>, <ore:dustSandstone>]);
//basefood
Recipes.addShapeless("desperation",<ic2:filled_tin_can>, [<ic2:crafting:10>, <harvestcraft:stockitem>]);
Recipes.addShapeless("desperation",<ic2:filled_tin_can>, [<ic2:crafting:10>, <harvestcraft:driedsoupitem>]);
Recipes.addShapeless("desperation",<ic2:filled_tin_can>, [<ic2:crafting:10>, <ore:listAllmeatrotten>]);
Recipes.addShapeless("desperation",<ic2:filled_tin_can>, [<ic2:crafting:10>, <ore:foodPoison>]);

Recipes.addShaped("desperation",<contenttweaker:tech>, 
[[<contenttweaker:technology1>, <contenttweaker:technology2>, <contenttweaker:technology3>], 
[<contenttweaker:technology8>, <contenttweaker:technology9>, <contenttweaker:technology4>], 
[<contenttweaker:technology7>, <contenttweaker:technology6>, <contenttweaker:technology5>]]);