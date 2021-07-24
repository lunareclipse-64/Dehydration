#priority 7
import mods.recipestages.Recipes;

Recipes.addShapeless("yours",<botania:manaresource:18> * 6, 
[<primal:diamond_workblade>.anyDamage().transformDamage(6), <ore:ingotTerrasteel>]);

Recipes.addShaped("yours",<contenttweaker:speed_gel>*4, 
[[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <minecraft:rotten_flesh>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})], 
[null, <minecraft:slime_ball>, null], 
[null, <botania:brewvial>.withTag({brewKey: "speed"}).transformReplace(<botania:vial>), null]]);

Recipes.addShaped("yours",<contenttweaker:eraese_gel>*4, 
[[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <minecraft:rotten_flesh>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})], 
[null, <minecraft:slime_ball>, null], 
[null, <botania:brewvial>.withTag({brewKey: "clear"}).transformReplace(<botania:vial>), null]]);

Recipes.addShaped("yours",<contenttweaker:instheal_gel>*4, 
[[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), <minecraft:rotten_flesh>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})], 
[null, <minecraft:slime_ball>, null], 
[null, <botania:brewvial>.withTag({brewKey: "healing"}).transformReplace(<botania:vial>), null]]);

Recipes.addShaped("yours",<minecraft:brewing_stand>, 
[[null, <ic2:treetap>, null], 
[<ic2:treetap>, <ore:rodBlaze>, <ic2:treetap>], 
[<minecraft:stone_pressure_plate>, <minecraft:stone_pressure_plate>, <minecraft:stone_pressure_plate>]]);

furnace.addRecipe(<contenttweaker:zirconium_dioxide>, <ore:dustZirconium>);