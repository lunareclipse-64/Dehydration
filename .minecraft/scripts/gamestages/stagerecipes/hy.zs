#priority 8
#loader crafttweaker reloadableevents
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

Recipes.addShaped("hypothesis",<thaumcraft:phial> * 2, 
[[<extrautils2:glasscutter>.transformDamage(2)], 
[<minecraft:clay_ball>], [<ore:blockGlassColorless>]]);

Recipes.addShaped("hypothesis",<minecraft:glass_bottle>, 
[[<extrautils2:glasscutter>.transformDamage(2)], 
[<primal:wood_pin>], [<ore:blockGlassColorless>]]);

Recipes.addShapeless("hypothesis",<thermalfoundation:material:33>, 
[<ore:ingotGold>, <ore:toolGallagher>.transformDamage(2)]);

Recipes.addShaped("hypothesis",<minecraft:rail> * 4, 
[[<ore:stickIron>, <primal:slat_oak>, <ore:stickIron>], 
[<primal:iron_pin>, <ore:toolGallagher>.transformDamage(7), <primal:iron_pin>], 
[<ore:stickIron>, <primal:slat_oak>, <ore:stickIron>]]);

Recipes.addShapeless("hypothesis",<minecraft:stone_slab> * 2, 
[<ore:toolSawMetal>.transformDamage(5), <minecraft:stone>]);

Recipes.addShaped("hypothesis",<chisel:voidstone> * 4, 
[[null, <astralsorcery:itemusabledust:1>, null], 
[<minecraft:obsidian>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <minecraft:obsidian>], 
[null, <astralsorcery:itemusabledust:1>, null]]);

Recipes.addShaped("hypothesis",<minecraft:stone_pressure_plate>*2, 
[[null, <ore:toolGallagher>.transformDamage(2), null], 
[<primal:common_stone:1>, <primal:common_stone:1>, <primal:common_stone:1>]]);

Recipes.addShaped("hypothesis",<minecraft:dispenser>, 
[[null, <ore:powderMana>, null], 
[<ore:cropFlax>, <minecraft:dropper>, <ore:cropFlax>], 
[null, <ore:cropFlax>, null]]);

Recipes.addShaped("hypothesis",<minecraft:dropper>, 
[[<primal:common_stone:1>, <primal:common_stone:1>, <primal:common_stone:1>], 
[<primal:common_stone:1>, null, <primal:common_stone:1>], 
[<primal:common_stone:1>, <ore:powderMana>, <primal:common_stone:1>]]);

Recipes.addShaped("hypothesis",<minecraft:glass_pane>*2, 
[[<extrautils2:glasscutter>.anyDamage().transformDamage(5)], 
[<minecraft:glass>], 
[<primal_tech:rock>.anyDamage().transformDamage(2)]]);

Recipes.addShaped("hypothesis",<minecraft:piston>, 
[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
[<ic2:casing:3>, <ore:stickIron>, <ic2:casing:3>], 
[<ic2:casing:3>, <thaumcraft:mechanism_simple>, <ic2:casing:3>]]);