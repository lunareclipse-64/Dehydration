#priority 9
//Exploration tweak
//生火
recipes.addShaped(<primal_tech:stick_bundle>, 
[[<ore:stickWood>, <ore:cordageGeneral>, <ore:stickWood>], 
[<ore:stickWood>, <ore:charcoal>, <ore:stickWood>], 
[<ore:stickWood>, <ore:cordageGeneral>, <ore:stickWood>]]);

recipes.addShaped(<tetra:duplex_tool_modular>.withTag({"duplex/basic_hammer_right_material": "basic_hammer/log", "duplex/basic_hammer_left_material": "basic_hammer/log", "duplex/handle": "duplex/basic_handle", "duplex/head_left": "duplex/basic_hammer_left", "duplex/basic_handle_material": "basic_handle/stick", "duplex/head_right": "duplex/basic_hammer_right"}), 
[[null, <ore:logWood>, <ore:cordageGeneral>], 
[null, <ore:stickWood>, <ore:logWood>], 
[<ore:stickWood>, null, null]]);

recipes.addShaped(<primal:hibachi:3>.withTag({type: "adobe"}), 
[[<primal:adobe_brick_dry>, <primal:slat_iron>, <primal:adobe_brick_dry>], 
[<primal:adobe_brick_dry>, null, <primal:adobe_brick_dry>], 
[<ore:cobblestone>, <primal:adobe_brick_dry>, <ore:cobblestone>]]);

recipes.addShapeless(<primal_tech:fire_sticks>, [<ore:tinder>, <ore:stickWood>, <ore:stickWood>,<primal:flint_knapp>]);
//石头
recipes.addShapeless(<forestry:propolis:1> * 8, [<primal:dirt_stick>|<ore:stickWood>, <ore:listAllmeatrotten>, <ore:listAllmeatrotten>]);

recipes.addShaped(<minecraft:stone_slab:3>, 
[[<forestry:propolis:1>, null], [<ore:rock>, <ore:rock>]]);

recipes.addShapeless(<minecraft:stone_slab> * 2, [<primal:flint_saw>.anyDamage().transformDamage(3), <minecraft:stone>]);

recipes.addShapeless(<minecraft:clay_ball> * 2, [<ore:stickWood>, <minecraft:dirt>, <minecraft:potion>.withTag({Potion: "minecraft:water"}).transformReplace(<minecraft:glass_bottle>)]);


//工作台
recipes.addShapeless(<forestry:wood_pile>, [<ore:logWood>, <ore:logWood>]);

recipes.addShaped(<minecraft:wooden_slab> * 2, [[<primal:flint_hatchet:14>.anyDamage().transformDamage(3)], [<minecraft:planks>]]);

recipes.addShaped(<primal_tech:work_stump>, [[<ore:slabWoodOak>, <ore:slabWoodOak>], 
[<forestry:wood_pile>, <forestry:wood_pile>]]);

recipes.addShaped(<minecraft:crafting_table>, 
[[<ore:dustSandstone>, <ore:slabWoodOak>, <ore:dustSandstone>], 
[<primal:plant_cordage>, <primal_tech:work_stump>, <primal:plant_cordage>], 
[<ore:nuggetIron>|<ore:nuggetCrudeIron>, <ore:plankOak>, <ore:nuggetIron>|<ore:nuggetCrudeIron>]]);

//植物
recipes.addShapeless(<ic2:crafting:20> * 3, [<ore:cropWheat>, <botania:grassseeds>, <forestry:fertilizer_bio>]);
recipes.addShapeless(<ic2:crafting:20> * 3, [<ore:cropWheat>, <botania:grassseeds>, <forestry:fertilizer_bio>]);
recipes.addShapeless(<botania:grassseeds>, [<ore:seedWheat>, <biomesoplenty:mushroom:3>, <ore:pointFlint>]);
recipes.addShapeless(<forestry:fertilizer_bio> * 4, [<ore:cropWheat>, <ore:cropWheat>, <ore:dirt>, <ore:dirt>]);
recipes.addShapeless(<minecraft:stick>,

[<ore:cropWheat>, <primal_tech:rock>.anyDamage().transformDamage(2),<primal_tech:rock>.anyDamage().transformDamage(2)]);

recipes.addShaped(<biomesoplenty:sapling_0:5>, 
[[<forestry:fertilizer_bio>, <minecraft:wheat>], 
[<minecraft:stick>, <ic2:crafting:20>]]);

recipes.addShaped(<backpack:stick> * 2, 
[[<ore:rock>, <nuclearcraft:gem_dust:11>], 
[<nuclearcraft:gem_dust:11>, <ore:rock>]]);

recipes.addShaped(<extrautils2:wateringcan:1000>, 
[[<primal:stone_gallagher>.transformDamage(2), null, null], 
[<ore:stickIron>, null, <ore:strandIron>], 
[null, <primal:adobe_brick_dry>, <ceramics:clay_bucket>]]);

recipes.addShapeless(<botania:fertilizer>, [<minecraft:dye:15>, <ore:pedalDust>, <ore:pedalDust>, <minecraft:potion>.withTag({Potion: "minecraft:water"}).transformReplace(<minecraft:glass_bottle>)]);

//材料
recipes.addShapeless(<minecraft:flint>, [<primal:rock_stone>, <primal:rock_stone>, <primal:rock_stone>]);
recipes.addShaped(<primal_tech:flint_block>, [[<ore:itemFlint>, <ore:itemFlint>], [<ore:itemFlint>, <ore:itemFlint>]]);
furnace.addRecipe(<ic2:ingot:2>,<thermalfoundation:ore>,5);
furnace.addRecipe(<thaumcraft:ingot:2>,<ore:dustBrass>,0);

recipes.addShaped(<ic2:dust:15>, [[<contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>], [<contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>], [<contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>]]);

recipes.addShapeless(<contenttweaker:purified_sand>, [<primal:iron_mesh>.reuse(), <nuclearcraft:gem_dust:11>.transformReplace(<contenttweaker:small_stone_dust>)]);

recipes.addShaped(<contenttweaker:corner_upgrade>, 
[[<astralsorcery:itemusabledust:1>, <astralsorcery:blockmarble:2>, <astralsorcery:itemusabledust:1>], 
[<astralsorcery:blockmarble:2>, <minecraft:crafting_table>, <astralsorcery:blockmarble:2>], 
[<astralsorcery:itemusabledust:1>, <astralsorcery:blockmarble:2>, <astralsorcery:itemusabledust:1>]]);

recipes.addShaped(<minecraft:sand> * 2, 
[[null, <nuclearcraft:gem_dust:11>, null], 
[<nuclearcraft:gem_dust:11>, null, <nuclearcraft:gem_dust:11>], 
[null, <nuclearcraft:gem_dust:11>, null]]);

recipes.addShaped(<minecraft:web>, 
[[<minecraft:string>, null, <botania:manaresource:16>], 
[null, <forestry:propolis:1>, null], 
[<botania:manaresource:16>, null, <minecraft:string>]]);

recipes.addShaped(<minecraft:bucket>, 
[[<ore:pinIron>, <primal:copper_strand>, <ore:pinIron>], 
[<primal:crude_iron_plate>|<ore:plateIron>, null, <primal:crude_iron_plate>|<ore:plateIron>], 
[<ore:pinIron>, <primal:crude_iron_plate>|<ore:plateIron>, <ore:pinIron>]]);

recipes.addShaped(<backpack:stick:1>, 
[[<primal:iron_gallagher>.anyDamage().transformDamage(5), null, null], 
[null, <primal:crude_iron_ingot>|<minecraft:iron_ingot>, null], 
[null, null, <primal:flint_workblade:100>.anyDamage().transformDamage(30)]]);

recipes.addShaped(<immersiveengineering:metal:30>, 
[[<primal:stone_gallagher>.anyDamage().transformDamage(4)], [<ore:ingotCopper>]]);

recipes.addShapeless(<ic2:crushed:2>, 
[<primal:stone_gallagher>.anyDamage().transformDamage(8), <geolosys:cluster>]);

recipes.addShaped(<contenttweaker:light_sand_dust> * 2, 
[[null, <ore:dustSandstone>, null], 
[<ore:dustSandstone>, <astralsorcery:itemconstellationpaper>.reuse(), <ore:dustSandstone>], 
[null, <ore:dustSandstone>, null]]);

recipes.addShaped(<minecraft:bookshelf>, 
[[<primal:wood_pin>, <ore:slabWood>, <ore:slabWood>], 
[<minecraft:book>, <minecraft:book>, <minecraft:book>], 
[<primal:wood_pin>, <ore:slabWood>, <ore:slabWood>]]);

recipes.addShaped(<minecraft:book>, 
[[<ore:clothPlant>, <ore:paper>], 
[<forestry:propolis:1>, <ore:paper>], 
[<ore:clothPlant>, <ore:paper>]]);

recipes.addShaped(<minecraft:iron_bars> * 9, 
[[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], 
[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

recipes.addShaped(<chisel:chisel_iron>, 
[[null, null, <ore:plateIron>], 
[null, <ore:plateIron>, null], 
[<ore:logSplit>, null, null]]);

recipes.addShaped(<actuallyadditions:block_misc:5>, 
[[<ore:itemCharcoal>, <ore:itemCharcoal>, <ore:itemCharcoal>], 
[<ore:itemCharcoal>, <ore:itemCharcoal>, <ore:itemCharcoal>], 
[<ore:itemCharcoal>, <ore:itemCharcoal>, <ore:itemCharcoal>]]);


//flower and dye
recipes.addShapeless(<minecraft:dye:1>, [<primal:flint_point>.reuse(), <minecraft:red_flower>]);
recipes.addShapeless(<minecraft:dye:11>, [<primal:flint_point>.reuse(), <minecraft:yellow_flower>]);
//magic
recipes.addShapeless(<contenttweaker:mana_mesh>, [<contenttweaker:charged_mesh>, <botania:manaresource:23>]);

recipes.addShaped(<minecraft:chest>, 
[[<ore:plankWood>, <ore:thinWood>, <ore:plankWood>], 
[<ore:barkWood>, <minecraft:stone_button>, <ore:barkWood>], 
[<ore:logWood>, <ore:barkWood>, <ore:logWood>]]);

recipes.addShaped(<minecraft:hopper>, 
[[<ore:ingotCrudeIron>|<ore:ingotIron>, <primal:iron_gallagher:3>.anyDamage().transformDamage(3), <ore:ingotCrudeIron>|<ore:ingotIron>], 
[<ore:ingotCrudeIron>|<ore:ingotIron>, <ore:chest>, <ore:ingotCrudeIron>|<ore:ingotIron>], 
[null, <ore:ringIron>, null]]);
//all dust to ingot re-add
furnace.addRecipe(<thermalfoundation:material:128>,<ore:dustCopper>);
furnace.addRecipe(<minecraft:iron_ingot>,<ore:dustIron>);
furnace.addRecipe(<thermalfoundation:material:129>,<ore:dustTin>);
furnace.addRecipe(<minecraft:gold_ingot>,<ore:dustGold>);
furnace.addRecipe(<thermalfoundation:material:130>,<ore:dustSilver>);
furnace.addRecipe(<thermalfoundation:material:132>,<ore:dustAluminum>);
furnace.addRecipe(<thermalfoundation:material:132>,<ore:dustAluminium>);
furnace.addRecipe(<thermalfoundation:material:133>,<ore:dustNickel>);
furnace.addRecipe(<primal:zinc_ingot>,<ore:dustZinc>);
furnace.addRecipe(<libvulpes:productingot:9>,<ore:dustAluminum>);
furnace.addRecipe(<libvulpes:productingot:9>,<ore:dustAluminium>);
furnace.addRecipe(<thermalfoundation:material:131>,<ore:dustLead>);

//all ores crushed
recipes.addShapeless(<jaopca:item_crushedosmium>, [<primal:iron_gallagher>.anyDamage().transformDamage(6), <geolosys:cluster:12>]);
recipes.addShapeless(<jaopca:item_crushednickel>, [<primal:iron_gallagher>.anyDamage().transformDamage(3), <geolosys:cluster:7>]);
recipes.addShapeless(<jaopca:item_crushedaluminium>, [<primal:iron_gallagher>.anyDamage().transformDamage(6), <geolosys:cluster:6>]);
recipes.addShapeless(<jaopca:item_crushedplatinum>, [<primal:iron_gallagher>.anyDamage().transformDamage(5), <geolosys:cluster:8>]);
recipes.addShapeless(<ic2:crushed:5>, [<primal:iron_gallagher>.anyDamage().transformDamage(4), <geolosys:cluster:3>]);
recipes.addShapeless(<ic2:crushed>, [<primal:iron_gallagher>.anyDamage().transformDamage(4), <geolosys:cluster:2>]);
recipes.addShapeless(<jaopca:item_crushedzinc>, [<primal:iron_gallagher>.anyDamage().transformDamage(3), <geolosys:cluster:10>]);
recipes.addShapeless(<ic2:crushed:4>, [<primal:iron_gallagher>.anyDamage().transformDamage(4), <geolosys:cluster:4>]);
recipes.addShapeless(<ic2:crushed:3>, [<primal:iron_gallagher>.anyDamage().transformDamage(5), <ore:oreLead>]);
recipes.addShapeless(<ic2:crushed:1>, [<primal:iron_gallagher>.anyDamage().transformDamage(5), <ore:oreGold>]);
recipes.addShapeless(<contenttweaker:crushed_pitchblende>, [<primal:iron_gallagher>.anyDamage().transformDamage(4), <contenttweaker:cluster_pitchblende>]);
recipes.addShapeless(<contenttweaker:crushed_chalcopyrite>, [<primal:iron_gallagher>.anyDamage().transformDamage(3), <contenttweaker:cluster_chalcopyrite>]);
recipes.addShapeless(<contenttweaker:crushed_cinnabar>, [<primal:iron_gallagher>.anyDamage().transformDamage(3), <thermalfoundation:material:866>]);
