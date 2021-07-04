#priority 8

recipes.addShaped(<thaumcraft:phial> * 2, 
[[<extrautils2:glasscutter>.anyDamage().transformDamage(2)], 
[<minecraft:clay_ball>], [<ore:blockGlassColorless>]]);

recipes.addShaped(<minecraft:glass_bottle>, 
[[<extrautils2:glasscutter>.anyDamage().transformDamage(2)], 
[<primal:wood_pin>], [<ore:blockGlassColorless>]]);

recipes.addShapeless(<thermalfoundation:material:33>, 
[<ore:ingotGold>, <primal:iron_gallagher>.anyDamage().transformDamage(2)]);

recipes.addShapeless(<primal:crude_iron_dust>, 
[<ore:ingotCrudeIron>, <primal:iron_gallagher>.anyDamage().transformDamage(10)]);

recipes.addShaped(<minecraft:rail> * 4, 
[[<ore:stickIron>, <primal:slat_oak>, <ore:stickIron>], 
[<primal:iron_pin>, <primal:iron_gallagher>.anyDamage().transformDamage(7), <primal:iron_pin>], 
[<ore:stickIron>, <primal:slat_oak>, <ore:stickIron>]]);

recipes.addShapeless(<minecraft:stone_slab> * 2, 
[<primal:diamond_saw>.anyDamage().transformDamage(5), <minecraft:stone>]);

recipes.addShaped(<chisel:voidstone> * 4, 
[[null, <astralsorcery:itemusabledust:1>, null], 
[<minecraft:obsidian>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}), <minecraft:obsidian>], 
[null, <astralsorcery:itemusabledust:1>, null]]);

recipes.addShaped(<minecraft:stone_pressure_plate>*2, 
[[null, <primal:iron_gallagher:3>.anyDamage().transformDamage(2), null], 
[<primal:common_stone:1>, <primal:common_stone:1>, <primal:common_stone:1>]]);

recipes.addShaped(<minecraft:dispenser>, 
[[null, <ore:powderMana>, null], 
[<ore:cropFlax>, <minecraft:dropper>, <ore:cropFlax>], 
[null, <ore:cropFlax>, null]]);

recipes.addShaped(<minecraft:dropper>, 
[[<primal:common_stone:1>, <primal:common_stone:1>, <primal:common_stone:1>], 
[<primal:common_stone:1>, null, <primal:common_stone:1>], 
[<primal:common_stone:1>, <ore:powderMana>, <primal:common_stone:1>]]);

recipes.addShaped(<minecraft:glass_pane> * 2, 
[[<extrautils2:glasscutter>.anyDamage().transformDamage(5)], 
[<minecraft:glass>], 
[<primal_tech:rock>.anyDamage().transformDamage(2)]]);