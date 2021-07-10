#priority 0

recipes.addShapeless(<botania:grassseeds>, 
[<biomesoplenty:mushroom:3>, <minecraft:wheat_seeds>, <primal:iron_workblade>.anyDamage().transformDamage(5)]);

recipes.addShapeless(<botania:grassseeds>, 
[<biomesoplenty:mushroom:3>, <minecraft:wheat_seeds>, <primal:flint_workblade>.anyDamage().transformDamage(5)]);

recipes.addShaped(<primal:sword_crude_flint>, 
[[null, <primal:flint_point>, <primal:flint_knapp>], 
[<primal:flint_point>, <primal:flint_knapp>, null], 
[<primal:dirt_stick>, <primal:plant_cordage>, null]]);

recipes.addShaped(<primal:flint_workblade>, 
[[null, <primal:flint_knapp>, <primal:flint_point>], 
[<primal:flint_knapp>, <ore:cordagePlant>, <primal:flint_knapp>], 
[<primal:dirt_stick>|<minecraft:stick>, <primal:flint_knapp>, null]]);

recipes.addShaped(<primal:flint_shovel>, 
[[null, <primal:flint_knapp>, <primal:flint_knapp>], 
[null, <primal:plant_cordage>, <primal:flint_knapp>], 
[<primal:dirt_stick>, null, null]]);

recipes.addShaped(<primal:flint_saw>, 
[[<primal:flint_knapp>, <ore:cordagePlant>], 
[<primal:flint_knapp>, <primal:dirt_stick>]]);

recipes.addShaped(<primal:flint_hoe>, 
[[<primal:flint_knapp>, <ore:cordagePlant>], 
[<primal:dirt_stick>, null]]);

recipes.addShaped(<primal:flint_hatchet>, 
[[<primal:flint_knapp>, <ore:cordagePlant>], 
[null, <primal:dirt_stick>]]);

recipes.addShaped(<primal:flint_pickaxe>, 
[[<primal:flint_knapp>, <ore:cordagePlant>, <primal:flint_knapp>], 
[<primal:flint_knapp>, <primal:dirt_stick>, <primal:flint_knapp>], 
[null, <primal:dirt_stick>, null]]);

recipes.addShapeless(<minecraft:iron_nugget> * 6, 
[<primal:diamond_workblade>.anyDamage().transformDamage(50), <ore:ingotIron>]);

recipes.addShapeless(<minecraft:iron_nugget> * 6, 
[<primal:emerald_workblade>.anyDamage().transformDamage(50), <ore:ingotIron>]);

recipes.addShapeless(<minecraft:iron_nugget> * 6, 
[<primal:flint_workblade>.anyDamage().transformDamage(50), <ore:ingotIron>]);

recipes.addShapeless(<minecraft:iron_nugget> * 6, 
[<primal:obsidian_workblade>.anyDamage().transformDamage(50), <ore:ingotIron>]);

recipes.addShapeless(<thermalfoundation:material:192> * 9, 
[<primal:flint_workblade>.anyDamage().transformDamage(4), <ore:ingotCopper>]);

recipes.addShapeless(<minecraft:stone_button> * 4, 
[<primal:copper_saw>.anyDamage().transformDamage(5), <ore:stone>, <primal:flint_workblade>.anyDamage().transformDamage(4)]);

recipes.addShapeless(<minecraft:stone_button> * 4, 
[<primal:iron_saw>.anyDamage().transformDamage(5), <ore:stone>, <primal:flint_workblade>.anyDamage().transformDamage(4)]);

recipes.addShapeless(<minecraft:stone_button> * 4, 
[<primal:flint_saw>.anyDamage().transformDamage(5), <ore:stone>, <primal:flint_workblade>.anyDamage().transformDamage(4)]);

recipes.addShapeless(<thermalfoundation:material:32>, 
[<primal:iron_gallagher>.anyDamage().transformDamage(3), <minecraft:iron_ingot>]);

recipes.addShapeless(<thaumcraft:plate:3>, 
[<primal:iron_gallagher>.anyDamage().transformDamage(2), <thaumcraft:ingot:1>]);

recipes.addShapeless(<primal:crude_iron_nugget> * 6, 
[<primal:stone_gallagher>.anyDamage().transformDamage(40), <ore:ingotCrudeIron>]);

recipes.addShapeless(<thermalfoundation:material:768>, 
[<primal:iron_gallagher>.anyDamage().transformDamage(3), <minecraft:coal>.transformReplace(<jaopca:item_dusttinyamber>)]);

recipes.addShapeless(<botania:livingwood:1> * 2, 
[<primal:flint_workblade>.anyDamage().transformDamage(5), <ore:livingwood>]);

recipes.addShaped(<contenttweaker:mesh_lump>, 
[[<primal:stone_gallagher>.anyDamage().transformDamage(5)], [<contenttweaker:mana_mesh>], [<astralsorcery:itemcraftingcomponent>]]);

mods.primal.Blade.addRecipe(
    "vanillastone_to_common_stone",
	<minecraft:stone>,
	<primal:common_stone>
);
mods.primal.Blade.addRecipe(
    "smooth_common_stone",
	<primal:common_stone>,
	<primal:common_stone:1>
);
mods.primal.Blade.addRecipe(
    "chiseled_common_stone",
	<primal:common_stone:1>,
	<primal:common_stone:5>
);
mods.primal.Blade.addRecipe(
    "stone_arcane_brick",
	<thaumcraft:stone_arcane>,
	<thaumcraft:stone_arcane_brick>
);
mods.primal.Gallagher.addRecipe(
    "common_stone_pillar",
	<primal:common_stone:1>,
	<primal:common_stone:7>
);
mods.primal.Blade.addRecipe(
    "immersive_blast_furnace",
	<immersiveengineering:stone_decoration:2>,
	<immersiveengineering:stone_decoration:1>,
	<thermalfoundation:material:352>,[1]
);
mods.primal.Blade.addRecipe(
    "immersive_coke_oven",
	<immersivetech:stone_decoration>,
	<immersiveengineering:stone_decoration>,
	<thermalfoundation:material:352>,[1]
);