#priority 9
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
//生火
Recipes.addShaped("exploration",<primal_tech:stick_bundle>, 
[[<ore:stickWood>, <ore:cordageGeneral>, <ore:stickWood>], 
[<ore:stickWood>, <ore:charcoal>, <ore:stickWood>], 
[<ore:stickWood>, <ore:cordageGeneral>, <ore:stickWood>]]);

Recipes.addShaped("exploration",<tetra:duplex_tool_modular>.withTag({"duplex/basic_hammer_right_material": "basic_hammer/log", "duplex/basic_hammer_left_material": "basic_hammer/log", "duplex/handle": "duplex/basic_handle", "duplex/head_left": "duplex/basic_hammer_left", "duplex/basic_handle_material": "basic_handle/stick", "duplex/head_right": "duplex/basic_hammer_right"}), 
[[null, <ore:logWood>, <ore:cordageGeneral>], 
[null, <ore:stickWood>, <ore:logWood>], 
[<ore:stickWood>, null, null]]);

Recipes.addShaped("exploration",<primal:hibachi:3>.withTag({type: "adobe"}), 
[[<primal:adobe_brick_dry>, <primal:slat_iron>, <primal:adobe_brick_dry>], 
[<primal:adobe_brick_dry>, null, <primal:adobe_brick_dry>], 
[<ore:cobblestone>, <primal:adobe_brick_dry>, <ore:cobblestone>]]);

Recipes.addShapeless("exploration",<primal_tech:fire_sticks>, [<ore:tinder>, <ore:stickWood>, <ore:stickWood>,<primal:flint_knapp>]);
//石头
Recipes.addShapeless("exploration",<forestry:propolis:1> * 8, [<primal:dirt_stick>|<ore:stickWood>, <ore:listAllmeatrotten>, <ore:listAllmeatrotten>]);

Recipes.addShaped("exploration",<minecraft:stone_slab:3>, 
[[<forestry:propolis:1>, null], [<ore:rock>, <ore:rock>]]);

Recipes.addShapeless("exploration",<minecraft:stone_slab> * 2, [<primal:flint_saw>.transformDamage(3), <minecraft:stone>]);

Recipes.addShapeless("exploration",<minecraft:clay_ball> * 2, [<ore:stickWood>, <minecraft:dirt>, <minecraft:potion>.withTag({Potion: "minecraft:water"}).transformReplace(<minecraft:glass_bottle>)]);


//工作台
Recipes.addShapeless("exploration",<forestry:wood_pile>, [<ore:logWood>, <ore:logWood>]);

Recipes.addShaped("exploration",<minecraft:wooden_slab> * 2, [[<primal:flint_hatchet:14>.transformDamage(3)], [<minecraft:planks>]]);

Recipes.addShaped("exploration",<primal_tech:work_stump>, [[<ore:slabWoodOak>, <ore:slabWoodOak>], 
[<forestry:wood_pile>, <forestry:wood_pile>]]);

Recipes.addShaped("exploration",<minecraft:crafting_table>, 
[[<ore:dustSandstone>, <ore:slabWoodOak>, <ore:dustSandstone>], 
[<primal:plant_cordage>, <primal_tech:work_stump>, <primal:plant_cordage>], 
[<ore:nuggetIron>|<ore:nuggetCrudeIron>, <ore:plankOak>, <ore:nuggetIron>|<ore:nuggetCrudeIron>]]);

//植物
Recipes.addShapeless("exploration",<ic2:crafting:20> * 3, [<ore:cropWheat>, <botania:grassseeds>, <forestry:fertilizer_bio>]);
Recipes.addShapeless("exploration",<ic2:crafting:20> * 3, [<ore:cropWheat>, <botania:grassseeds>, <forestry:fertilizer_bio>]);
Recipes.addShapeless("exploration",<botania:grassseeds>, [<ore:seedWheat>, <biomesoplenty:mushroom:3>, <ore:pointFlint>]);
Recipes.addShapeless("exploration",<forestry:fertilizer_bio> * 4, [<ore:cropWheat>, <ore:cropWheat>, <ore:dirt>, <ore:dirt>]);
Recipes.addShapeless("exploration",<minecraft:stick>,[<ore:cropWheat>, <primal_tech:rock>.transformDamage(2),<primal_tech:rock>.transformDamage(2)]);

Recipes.addShaped("exploration",<biomesoplenty:sapling_0:5>, 
[[<forestry:fertilizer_bio>, <minecraft:wheat>], 
[<minecraft:stick>, <ic2:crafting:20>]]);

Recipes.addShaped("exploration",<backpack:stick> * 2, 
[[<ore:rock>, <nuclearcraft:gem_dust:11>], 
[<nuclearcraft:gem_dust:11>, <ore:rock>]]);

Recipes.addShaped("exploration",<extrautils2:wateringcan:1000>, 
[[<ore:toolGallagher>.transformDamage(2), null, null], 
[<ore:stickIron>, null, <ore:strandIron>], 
[null, <primal:adobe_brick_dry>, <ceramics:clay_bucket>]]);

Recipes.addShapeless("exploration",<botania:fertilizer>, [<minecraft:dye:15>, <ore:pedalDust>, <ore:pedalDust>, <minecraft:potion>.withTag({Potion: "minecraft:water"}).transformReplace(<minecraft:glass_bottle>)]);

//材料
Recipes.addShapeless("exploration",<minecraft:flint>, [<primal:rock_stone>, <primal:rock_stone>, <primal:rock_stone>]);
Recipes.addShaped("exploration",<primal_tech:flint_block>, [[<ore:itemFlint>, <ore:itemFlint>], [<ore:itemFlint>, <ore:itemFlint>]]);
furnace.addRecipe(<ic2:ingot:2>,<thermalfoundation:ore>,5);
furnace.addRecipe(<thaumcraft:ingot:2>,<ore:dustBrass>,0);

Recipes.addShaped("exploration",<ic2:dust:15>, [[<contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>], [<contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>], [<contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>, <contenttweaker:small_stone_dust>]]);

Recipes.addShapeless("exploration",<contenttweaker:purified_sand>, [<primal:iron_mesh>.reuse(), <nuclearcraft:gem_dust:11>.transformReplace(<contenttweaker:small_stone_dust>)]);

Recipes.addShaped("exploration",<contenttweaker:corner_upgrade>, 
[[<astralsorcery:itemusabledust:1>, <astralsorcery:blockmarble:2>, <astralsorcery:itemusabledust:1>], 
[<astralsorcery:blockmarble:2>, <minecraft:crafting_table>, <astralsorcery:blockmarble:2>], 
[<astralsorcery:itemusabledust:1>, <astralsorcery:blockmarble:2>, <astralsorcery:itemusabledust:1>]]);

Recipes.addShaped("exploration",<minecraft:sand> * 2, 
[[null, <nuclearcraft:gem_dust:11>, null], 
[<nuclearcraft:gem_dust:11>, null, <nuclearcraft:gem_dust:11>], 
[null, <nuclearcraft:gem_dust:11>, null]]);

Recipes.addShaped("exploration",<minecraft:web>, 
[[<minecraft:string>, null, <botania:manaresource:16>], 
[null, <forestry:propolis:1>, null], 
[<botania:manaresource:16>, null, <minecraft:string>]]);

Recipes.addShaped("exploration",<minecraft:bucket>, 
[[<ore:pinIron>, <primal:copper_strand>, <ore:pinIron>], 
[<primal:crude_iron_plate>|<ore:plateIron>, null, <primal:crude_iron_plate>|<ore:plateIron>], 
[<ore:pinIron>, <primal:crude_iron_plate>|<ore:plateIron>, <ore:pinIron>]]);

Recipes.addShaped("exploration",<backpack:stick:1>, 
[[<ore:toolGallagher>.transformDamage(5), null, null], 
[null, <primal:crude_iron_ingot>|<minecraft:iron_ingot>, null], 
[null, null, <ore:toolWorkBlade>.transformDamage(30)]]);

Recipes.addShaped("exploration",<immersiveengineering:metal:30>, 
[[<ore:toolGallagher>.transformDamage(4)], [<ore:ingotCopper>]]);

Recipes.addShapeless("exploration",<ic2:crushed:2>, 
[<ore:toolGallagher>.transformDamage(8), <geolosys:cluster>]);

Recipes.addShaped("exploration",<contenttweaker:light_sand_dust> * 2, 
[[null, <ore:dustSandstone>, null], 
[<ore:dustSandstone>, <astralsorcery:itemconstellationpaper>.reuse(), <ore:dustSandstone>], 
[null, <ore:dustSandstone>, null]]);

Recipes.addShaped("exploration",<minecraft:bookshelf>, 
[[<primal:wood_pin>, <ore:slabWood>, <ore:slabWood>], 
[<minecraft:book>, <minecraft:book>, <minecraft:book>], 
[<primal:wood_pin>, <ore:slabWood>, <ore:slabWood>]]);

Recipes.addShaped("exploration",<minecraft:book>, 
[[<ore:clothPlant>, <ore:paper>], 
[<forestry:propolis:1>, <ore:paper>], 
[<ore:clothPlant>, <ore:paper>]]);

Recipes.addShaped("exploration",<minecraft:iron_bars> * 9, 
[[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], 
[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

Recipes.addShaped("exploration",<chisel:chisel_iron>, 
[[null, null, <ore:plateIron>], 
[null, <ore:plateIron>, null], 
[<ore:logSplit>, null, null]]);

Recipes.addShapeless("exploration",<thermalfoundation:storage_resource>, 
[<ore:charcoal>, <ore:charcoal>, <ore:charcoal>, 
<ore:charcoal>, <ore:charcoal>, <ore:charcoal>, 
<ore:charcoal>, <ore:charcoal>, <ore:charcoal>]);

Recipes.addShapeless("exploration",<minecraft:coal:1>*9, 
[<thermalfoundation:storage_resource>]);

Recipes.addShapeless("exploration",<minecraft:potion>.withTag({Potion: "minecraft:water"}), 
[<contenttweaker:distill_bottle_water_plant>.transformReplace(<contenttweaker:distill_bottle_empty>),<minecraft:glass_bottle>] as IIngredient[],
    null,
    function(out,cInfo,player){
	    player.give(<botany:misc:5>);
    } as IRecipeAction
);
Recipes.addShapeless("exploration",<minecraft:potion>.withTag({Potion: "minecraft:water"}), 
[<contenttweaker:distill_bottle_water_flesh>.transformReplace(<contenttweaker:distill_bottle_empty>),<minecraft:glass_bottle>] as IIngredient[],
    null,
    function(out,cInfo,player){
	    player.give(<actuallyadditions:item_misc:21>);
    } as IRecipeAction
);

Recipes.addShapeless("exploration",<minecraft:potion>.withTag({Potion: "minecraft:poison"}), 
[<contenttweaker:distill_bottle_poison_flesh>.transformReplace(<contenttweaker:distill_bottle_empty>),<minecraft:glass_bottle>] as IIngredient[],
    null,
    function(out,cInfo,player){
	    player.give(<actuallyadditions:item_misc:21>);
    } as IRecipeAction
);

Recipes.addShapeless("exploration",<contenttweaker:distill_bottle_flesh>, 
[<contenttweaker:distill_bottle_empty>, <ore:listAllmeatrotten>]);

Recipes.addShapeless("exploration",<minecraft:glass_bottle>*2, 
[<contenttweaker:distill_bottle_empty>.transformReplace(<primal_tech:plant_fibres>)]);

Recipes.addShaped("exploration",<contenttweaker:distill_bottle_empty>, 
[[<minecraft:wheat>, null], 
[<minecraft:glass_bottle>, <minecraft:glass_bottle>]]);

Recipes.addShaped("exploration",<primal:barrel>, 
[[<primal:thin_slab_oak>, null, <primal:thin_slab_oak>],
[<primal:thin_slab_oak>, <ore:toolSawMetal>.transformDamage(6), <primal:thin_slab_oak>], 
[<primal:wood_pin>, <primal:barrel_oak_lid>, <primal:wood_pin>]]);

Recipes.addShaped("exploration",<primal:barrel:1>, 
[[<primal:thin_slab_spruce>, null, <primal:thin_slab_spruce>],
[<primal:thin_slab_spruce>, <ore:toolSawMetal>.transformDamage(6), <primal:thin_slab_spruce>], 
[<primal:wood_pin>, <primal:barrel_spruce_lid>, <primal:wood_pin>]]);
Recipes.addShaped("exploration",<primal:barrel:2>, 
[[<primal:thin_slab_birch>, null, <primal:thin_slab_birch>],
[<primal:thin_slab_birch>, <ore:toolSawMetal>.transformDamage(6), <primal:thin_slab_birch>], 
[<primal:wood_pin>, <primal:barrel_birch_lid>, <primal:wood_pin>]]);
Recipes.addShaped("exploration",<primal:barrel:3>, 
[[<primal:thin_slab_jungle>, null, <primal:thin_slab_jungle>],
[<primal:thin_slab_jungle>, <ore:toolSawMetal>.transformDamage(6), <primal:thin_slab_jungle>], 
[<primal:wood_pin>, <primal:barrel_jungle_lid>, <primal:wood_pin>]]);
Recipes.addShaped("exploration",<primal:barrel:4>, 
[[<primal:thin_slab_acacia>, null, <primal:thin_slab_acacia>],
[<primal:thin_slab_acacia>, <ore:toolSawMetal>.transformDamage(6), <primal:thin_slab_acacia>], 
[<primal:wood_pin>, <primal:barrel_acacia_lid>, <primal:wood_pin>]]);
Recipes.addShaped("exploration",<primal:barrel:5>, 
[[<primal:thin_slab_bigoak>, null, <primal:thin_slab_bigoak>],
[<primal:thin_slab_bigoak>, <ore:toolSawMetal>.transformDamage(6), <primal:thin_slab_bigoak>], 
[<primal:wood_pin>, <primal:barrel_dark_oak_lid>, <primal:wood_pin>]]);
Recipes.addShaped("exploration",<primal:barrel:6>, 
[[<primal:thin_slab_ironwood>, null, <primal:thin_slab_ironwood>],
[<primal:thin_slab_ironwood>, <ore:toolSawMetal>.transformDamage(6), <primal:thin_slab_ironwood>], 
[<primal:wood_pin>, <primal:barrel_ironwood_lid>, <primal:wood_pin>]]);
Recipes.addShaped("exploration",<primal:barrel:7>, 
[[<primal:thin_slab_yew>, null, <primal:thin_slab_yew>],
[<primal:thin_slab_yew>, <ore:toolSawMetal>.transformDamage(6), <primal:thin_slab_yew>], 
[<primal:wood_pin>, <primal:barrel_yew_lid>, <primal:wood_pin>]]);
Recipes.addShaped("exploration",<primal:barrel:9>, 
[[<primal:thin_slab_lacquer>, null, <primal:thin_slab_lacquer>],
[<primal:thin_slab_lacquer>, <ore:toolSawMetal>.transformDamage(6), <primal:thin_slab_lacquer>], 
[<primal:wood_pin>, <primal:barrel_lacquer_lid>, <primal:wood_pin>]]);

Recipes.addShaped("exploration",<forestry:fertilizer_bio>, 
[[<botany:misc:5>, <botany:misc:5>], 
[<botany:misc:5>, <botany:misc:5>]]);
//flower and dye
Recipes.addShapeless("exploration",<minecraft:dye:1>, [<primal:flint_point>.reuse(), <minecraft:red_flower>]);
Recipes.addShapeless("exploration",<minecraft:dye:11>, [<primal:flint_point>.reuse(), <minecraft:yellow_flower>]);
//magic
Recipes.addShapeless("exploration",<contenttweaker:mana_mesh>, [<contenttweaker:charged_mesh>, <botania:manaresource:23>]);

Recipes.addShaped("exploration",<minecraft:chest>, 
[[<ore:plankWood>, <ore:thinWood>, <ore:plankWood>], 
[<ore:barkWood>, <minecraft:stone_button>, <ore:barkWood>], 
[<ore:logWood>, <ore:barkWood>, <ore:logWood>]]);

Recipes.addShaped("exploration",<minecraft:hopper>, 
[[<ore:ingotCrudeIron>|<ore:ingotIron>, <primal:iron_gallagher:3>.transformDamage(3), <ore:ingotCrudeIron>|<ore:ingotIron>], 
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
Recipes.addShapeless("exploration",<jaopca:item_crushedosmium>, [<ore:toolGallagher>.transformDamage(6), <geolosys:cluster:12>]);
Recipes.addShapeless("exploration",<jaopca:item_crushednickel>, [<ore:toolGallagher>.transformDamage(3), <geolosys:cluster:7>]);
Recipes.addShapeless("exploration",<jaopca:item_crushedaluminium>, [<ore:toolGallagher>.transformDamage(6), <geolosys:cluster:6>]);
Recipes.addShapeless("exploration",<jaopca:item_crushedplatinum>, [<ore:toolGallagher>.transformDamage(5), <geolosys:cluster:8>]);
Recipes.addShapeless("exploration",<ic2:crushed:5>, [<ore:toolGallagher>.transformDamage(4), <geolosys:cluster:3>]);
Recipes.addShapeless("exploration",<ic2:crushed>, [<ore:toolGallagher>.transformDamage(4), <geolosys:cluster:2>]);
Recipes.addShapeless("exploration",<jaopca:item_crushedzinc>, [<ore:toolGallagher>.transformDamage(3), <geolosys:cluster:10>]);
Recipes.addShapeless("exploration",<ic2:crushed:4>, [<ore:toolGallagher>.transformDamage(4), <geolosys:cluster:4>]);
Recipes.addShapeless("exploration",<ic2:crushed:3>, [<ore:toolGallagher>.transformDamage(5), <ore:oreLead>]);
Recipes.addShapeless("exploration",<ic2:crushed:1>, [<ore:toolGallagher>.transformDamage(5), <ore:oreGold>]);
Recipes.addShapeless("exploration",<contenttweaker:crushed_pitchblende>, [<ore:toolGallagher>.transformDamage(4), <contenttweaker:cluster_pitchblende>]);
Recipes.addShapeless("exploration",<contenttweaker:crushed_chalcopyrite>, [<ore:toolGallagher>.transformDamage(3), <contenttweaker:cluster_chalcopyrite>]);
Recipes.addShapeless("exploration",<contenttweaker:crushed_cinnabar>, [<ore:toolGallagher>.transformDamage(3), <thermalfoundation:material:866>]);
