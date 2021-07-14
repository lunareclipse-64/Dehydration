#priority 1050

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes;
var allStages as string[] = [
	"desperation",
	"exploration",
	"hypothesis",
	"yours",
	"discovery",
	"renaissance",
	"automation",
    "transmission",
    "it",
    "outspace",
    "default"
];
Recipes.setPackageStage("appeng", allStages);
//mod阶段化
mods.recipestages.Recipes.setPrintContainers(true);
var modsS0 as string[] = [
	"biomesoplenty",
	"toughasnails"
];

for mod in modsS0{
	mods.ItemStages.stageModItems("desperation", mod);
}


var modsS1 as string[] = [
    "primal",
    "botania",
    "botania_tweaks",
    "botanicadds",
	"forge",
	"astralsorcery",
    "primal_tech",
    "tetra",
    "geolosys",
    "harvestcraft",
    "cookingforblockheads",
    "ceramics",
    "jaffa",
    "ironchest",
    "wopper",
    "contenttweaker",
    "chisel"
];

for mod in modsS1{
	mods.ItemStages.stageModItems("exploration", mod);
}


var modsS2 as string[] = [
    "thaumcraft",
    "planarartifice",
    "jaopca",
    "chisel",
    "backpack"
];

for mod in modsS2{
	mods.ItemStages.stageModItems("hypothesis", mod);
}
mods.ItemStages.stageModItems("hypothesis", "thaumcraft");

var modsS3 as string[] = [
    "bloodmagic",
    "modularmachinery",
    "modulardiversity",
    "modularmagic"
];

for mod in modsS3{
	mods.ItemStages.stageModItems("yours", mod);
}


var modsS4 as string[] = [
    "ic2",
    "immersiveengineering",
    "rockhounding_core",
    "rockhounding_chemistry",
    "gbook",
    "thermalfoundation",
    "nuclearcraft"
];

for mod in modsS4{
	mods.ItemStages.stageModItems("discovery", mod);
}


var modsS5 as string[] = [
    "forestry",
    "extrautils2",
    "rftools",
    "binniecore",
    "extrabees",
    "extratrees",
    "botany",
    "genetics",
    "compactmachines3",
    "rftoolscontrol"
];

for mod in modsS5{
	mods.ItemStages.stageModItems("renaissance", mod);
}

//重定向物品阶段
var redirectS0 as IIngredient[] = [
    <forestry:resources>,
    <ic2:crafting:10>,
    <ic2:filled_tin_can>,
    <nuclearcraft:gem_dust:11>,
    <primal:dirt_stick>,
    <primal:flint_pickaxe>,
    <primal:rock_stone>,
    <primal:sword_crude_flint>,
    <primal_tech:rock>
];
for item in redirectS0{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("desperation", item);
    mods.recipestages.Recipes.setRecipeStage("desperation", item);
}

var redirectS1 as IIngredient[] = [
    <actuallyadditions:block_misc:5>,
    <backpack:stick:1>,
    <chisel:marble:*>,
    <chisel:marble1:*>,
    <forestry:apatite>,
    <forestry:ash>,
    <forestry:fertilizer_bio>,
    <forestry:fertilizer_compound>,
    <forestry:loam>,
    <forestry:propolis:1>,
    <forestry:wood_pile>,
    <forestry:wood_pile_decorative>,
    <ic2:crafting:20>,
    <ic2:crushed>,
    <ic2:crushed:2>,
    <ic2:crushed:5>,
    <ic2:dust:15>,
    <immersiveengineering:material:25>,
    <jaopca:item_dusttinyamber>,
    <minecraft:bucket>,
    <rockhounding_chemistry:machines_a:13>,
    <rockhounding_chemistry:misc_blocks_a:12>,
    <rockhounding_chemistry:uninspected_mineral>,
    <thaumcraft:amber>,
    <thaumcraft:crystal_aer>,
    <thaumcraft:crystal_aqua>,
    <thaumcraft:crystal_ignis>,
    <thaumcraft:crystal_perditio>,
    <thaumcraft:crystal_ordo>,
    <thaumcraft:crystal_terra>,
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}),
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}),
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}),
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}),
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),
    <thaumcraft:salis_mundus>,
    <thaumcraft:thaumonomicon>,
    <thermalfoundation:material:32>,
    <thermalfoundation:material:128>,
    <thermalfoundation:material:192>,
    <thermalfoundation:material:768>,
    <thermalfoundation:storage_resource>
];
for item in redirectS1{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("exploration", item);
    mods.recipestages.Recipes.setRecipeStage("exploration", item);
}

var redirectS2 as IIngredient[] = [
    <contenttweaker:crushed_cinnabar>,
    <contenttweaker:empty_manarune>,
    <contenttweaker:infused_crystal>,
    <contenttweaker:magical_projector>,
    <contenttweaker:memento2>,
    <contenttweaker:saligia_rune>,
    <contenttweaker:wing_upgrade>,
    <extrautils2:glasscutter>,
    <extrautils2:ingredients>,
    <ic2:crushed:1>,
    <ic2:crushed:3>,
    <ic2:ingot:3>,
    <nuclearcraft:gem>,
    <nuclearcraft:gem:2>,
    <bloodmagic:dagger_of_sacrifice>,
    <primal_tech:charcoal_block>,
    <thermalfoundation:material:33>,
    <thermalfoundation:material:866>
];
for item in redirectS2{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("hypothesis", item);
    mods.recipestages.Recipes.setRecipeStage("hypothesis", item);
}

var redirectS3 as IIngredient[] = [
    <botania:alfheimportal>,
    <botania:manaresource:4>,
    <botania:terraplate>,
    <contenttweaker:edge_upgrade>,
    <contenttweaker:effulgent_crystal>,
    <contenttweaker:forbidden_fragment>,
    <contenttweaker:infernal_furnace_discovery>,
    <contenttweaker:memento3>,
    <ic2:te:115>,
    <minecraft:redstone_ore>,
    <minecraft:slime_ball>
];
for item in redirectS3{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("yours", item);
    mods.recipestages.Recipes.setRecipeStage("yours", item);
}

var redirectS4 as IIngredient[] = [
    <appliedenergistics2:quartz_ore>,
	<bigreactors:blockmetals:5>,
	<bigreactors:turbinehousing>,
	<bigreactors:turbinebearing>,
	<bigreactors:turbinerotorblade>,
	<bigreactors:turbinerotorshaft>,
    <contenttweaker:beacon_emitter>,
    <contenttweaker:cluster_chalcopyrite>,
    <contenttweaker:cluster_pitchblende>,
    <contenttweaker:crushed_chalcopyrite>,
    <contenttweaker:crushed_pitchblende>,
    <contenttweaker:memento4>,
    <extrautils2:endershard>,
    <extrautils2:powerbattery>,
    <extrautils2:powertransmitter>,
    <extrautils2:passivegenerator>,
    <extrautils2:passivegenerator:1>,
    <minecraft:beacon>,
    <nuclearcraft:part:6>
];
for item in redirectS4{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("discovery", item);
    mods.recipestages.Recipes.setRecipeStage("discovery", item);
}

var redirectS5 as IIngredient[] = [
    <astralsorcery:blockcelestialgateway>,
];
for item in redirectS5{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("renaissance", item);
    mods.recipestages.Recipes.setRecipeStage("renaissance", item);
}
//JEI合成区阶段化
var catS1 as string[] = [
    "minecraft.smelting",
    "minecraft.anvil",
    "primal.flake",
    "primal.gallagher",
    "primal.blade",
    "primal.axe",
    "primal.shovel",
    "primal.hoe",
    "primal.brick",
    "primal.drying_rack",
    "primal.hibachi",
    "primal.quern",
    "primal.smelter",
    "primal.cauldron",
    "rockhounding_chemistry.seasoning_rack",
    "astralsorcery.lightwell",
    "astralsorcery.grindstone",
    "astralsorcery.infuser",
    "astralsorcery.lightTransmutation",
    "astralsorcery.altar.discovery",
    "astralsorcery.altar.attunement",
    "jeresources.plant",
    "jeresources.mob",
    "chisel.chiseling",
    "inworldcrafting.itemtransform",
    "forestry.charcoal.pile",
    "primal_tech.water_saw_recipes",
    "primal_tech.stone_anvil_recipes",
    "primal_tech.wooden_basin_recipes",
    "botania.petals"
];
for cat in catS1{
    mods.ItemStages.stageRecipeCategory("exploration", cat);
}
var catS2 as string[] = [
    "minecraft.brewing",
    "astralsorcery.infuser",
    "astralsorcery.altar.constellation",
    "botania.brewery",
    "jeresources.enchantment",
    "THAUMCRAFT_ASPECT_COMPOUND",
    "THAUMCRAFT_ASPECT_FROM_ITEMSTACK"
];
for cat in catS2{
    mods.ItemStages.stageRecipeCategory("hypothesis", cat);
}

var catS3 as string[] = [
];
for cat in catS3{
    mods.ItemStages.stageRecipeCategory("yours", cat);
}

var catS4 as string[] = [
    "immersivepetroleum.distillation",
    "it.distiller",
    "it.boiler",
    "it.solarTower"
];
for cat in catS4{
    mods.ItemStages.stageRecipeCategory("discovery", cat);
}

var catS5 as string[] = [
    "compactmachines3.MultiblockMiniaturization",
    "cookingforblockheads.cowjar",
    "extrautils2.blockPatterns",
    "extrautils2.terraformer",
    "extrautils2.resonator"
];
for cat in catS5{
    mods.ItemStages.stageRecipeCategory("renaissance", cat);
}

var catS6 as string[] = [
];
for cat in catS6{
    mods.ItemStages.stageRecipeCategory("automation", cat);
}

//重定向配方阶段
var recS1 as string[] = [
    "forestry:ash_to_fertilizer",
    "forestry:sand_to_fertilizer"
];
for recipe in recS1{
    mods.recipestages.Recipes.setRecipeStage("exploration", recipe);
}

var recS2 as string[] = [
];
for recipe in recS2{
    mods.recipestages.Recipes.setRecipeStage("hypothesis", recipe);
}

var recS3 as string[] = [
];
for recipe in recS3{
    mods.recipestages.Recipes.setRecipeStage("yours", recipe);
}

var recS4 as string[] = [
];
for recipe in recS4{
    mods.recipestages.Recipes.setRecipeStage("discovery", recipe);
}

var recS5 as string[] = [
];
for recipe in recS5{
    mods.recipestages.Recipes.setRecipeStage("automation", recipe);
}

//删除物品
var banneditem as IIngredient[] = [
    <actuallyadditions:block_misc:3>,
    <advancedrocketry:arcfurnace>,
    <advancedrocketry:centrifuge>, 
	<advancedrocketry:platepress>,
    <astralsorcery:blockbore>,
	<astralsorcery:itemchargedcrystalaxe>,
	<astralsorcery:itemchargedcrystalpickaxe>,
	<astralsorcery:itemchargedcrystalshovel>,
	<astralsorcery:itemchargedcrystalsword>,
	<astralsorcery:itemcrystalaxe>,
	<astralsorcery:itemcrystalpickaxe>,
	<astralsorcery:itemcrystalshovel>,
	<astralsorcery:itemcrystalsword>,
    <bigreactors:brore:*>,
    <bigreactors:ingotmetals:5>,
    <botania:floatingspecialflower>.withTag({type: "orechid"}),
	<botania:specialflower>.withTag({type: "orechid"}),
	<enderio:block_reservoir>,
    <enderio:block_simple_alloy_smelter>,
	<enderio:item_dark_steel_crook>,
    <extrautils2:teleporter>,
	<extrautils2:teleporter:1>,
    <fluid:hard_carbon>,
    <forestry:bottler>,
    <forestry:ingot_bronze>,
	<forestry:ingot_tin>,
    <forestry:ingot_copper>,
	<forestry:resources:1>,
    <forestry:resources:2>,
    <geolosys:ore:5>,
    <geolosys:ore_vanilla:1>,
    <gugu-utils:starlightinputhatch>,
    <ic2:dust>,
	<ic2:ingot:2>,
    <ic2:ingot:3>,
    <ic2:ingot:4>,
    <ic2:ingot:5>,
    <ic2:ingot:6>,
    <ic2:misc_resource:1>,
	<ic2:plate:2>,
	<ic2:refractory_bricks>,
	<ic2:te:46>,
	<ic2:te:52>,
	<ic2:te:56>,
	<ic2:te:100>,
	<ic2:te:101>,
	<ic2:te:102>,
	<immersiveengineering:metal>,
    <immersiveengineering:metal_decoration0>,
	<immersiveengineering:metal:1>,
	<immersiveengineering:metal:2>,
	<immersiveengineering:metal:3>,
	<immersiveengineering:metal:4>,
    <immersiveengineering:metal:8>,
	<immersiveengineering:metal:29>,
	<immersiveengineering:metal:39>,
	<immersiveengineering:metal_device0:5>,
	<immersiveengineering:storage:8>,
	<jaopca:item_clusteraluminium>,
	<jaopca:item_clusterastralstarmetal>,
	<jaopca:item_clusterboron>,
	<jaopca:item_clusteriridium>,
	<jaopca:item_clusterlithium>,
	<jaopca:item_clustermagnesium>,
	<jaopca:item_clustermithril>,
	<jaopca:item_clusternickel>,
	<jaopca:item_clusterosmium>,
	<jaopca:item_clusterplatinum>,
	<jaopca:item_clusterthorium>,
	<jaopca:item_clustertitanium>,
	<jaopca:item_clusteruranium>,
	<jaopca:item_clusteryellorium>,
	<jaopca:item_clusterzinc>,
    <libvulpes:coalgenerator>,
	<libvulpes:ore0>,
	<libvulpes:ore0:4>,
	<libvulpes:ore0:5>,
	<libvulpes:ore0:8>,
	<libvulpes:ore0:9>,
	<libvulpes:ore0:10>,
    <libvulpes:productboule:3>,
	<libvulpes:productingot:3>,
	<libvulpes:productingot:4>,
	<libvulpes:productingot:5>,
	<libvulpes:productingot:6>,
	<libvulpes:productingot:7>,
	<libvulpes:productingot:9>,
	<libvulpes:productingot:10>,
    <libvulpes:productfan:6>,
    <logisticspipes:chip_basic_raw>,
    <logisticspipes:chip_advanced_raw>,
    <logisticspipes:chip_fpga_raw>,
    <minecraft:diamond_ore>,
    <minecraft:emerald_ore>,
    <minecraft:furnace_minecart>,
    <minecraft:gold_ore>,
    <minecraft:iron_ore>,
    <minecraft:lapis_ore>,
    <minecraft:quartz_ore>,
    <nuclearcraft:alloy>,
    <nuclearcraft:alloy:5>,
    <nuclearcraft:alloy:7>,
    <nuclearcraft:fluid_hard_carbon>,
	<nuclearcraft:ingot>,
	<nuclearcraft:ingot:1>,
	<nuclearcraft:ingot:2>,
	<nuclearcraft:ingot:4>,
	<nuclearcraft:ingot:10>,
	<nuclearcraft:ingot:12>,
	<nuclearcraft:ingot:13>,
    <nuclearcraft:manufactory>,
	<primal:aluminum_ingot>,
    <primal:brass_ingot>,
	<primal:brass_plate>,
    <primal:bronze_dust>,
    <primal:bronze_ingot>,
	<primal:bone_saw>,
	<primal:copper_ingot>,
	<primal:fire_bow>,
    <primal:flint_saw>,
	<primal:gold_plate>,
	<primal:iron_plate>,
	<primal:lead_ingot>,
	<primal:nickel_ingot>,
	<primal:platinum_ingot>,
    <primal:shibuichi_ingot>,
	<primal:silver_ingot>,
    <primal:steel_ingot>,
	<primal:tin_ingot>,
	<primal:vanadium_ingot>,
    <primal_tech:clay_kiln>,
    <primal_tech:stone_club>,
	<primal_tech:stone_grill>,
    <qmd:ingot:3>,
    <qmd:ingot:4>,
    <qmd:ingot:5>,
    <qmd:ingot:7>,
    <qmd:ingot:10>,  
	<rockhounding_chemistry:machines_e:2>,
	<rockhounding_chemistry:metal_items:2>,
	<rockhounding_chemistry:metal_items:3>,
	<rockhounding_chemistry:metal_items:5>,
    <rockhounding_chemistry:metal_items:6>,
	<rockhounding_chemistry:metal_items:9>,
	<rockhounding_chemistry:metal_items:11>,
    <rockhounding_chemistry:metal_items:13>,
    <rockhounding_chemistry:misc_items:19>,
    <thermalfoundation:material:161>,
    <thermalfoundation:material:163>,
    <thermalfoundation:material:164>,
	<thermalfoundation:tool.bow_copper>,
	<thermalfoundation:tool.fishing_rod_copper>,
	<thaumcraft:cluster>,
	<thaumcraft:cluster:1>,
	<thaumcraft:cluster:2>,
	<thaumcraft:cluster:3>,
	<thaumcraft:cluster:4>,
	<thaumcraft:cluster:5>,
	<thaumcraft:cluster:6>,
	<thaumcraft:cluster:7>,
	<thaumcraft:nugget>,
	<thaumcraft:plate:1>,
    <toughasnails:campfire>
];

for item in banneditem{
    mods.ItemStages.removeItemStage(item);
    mods.ItemStages.addItemStage("impossible", item);
    mods.jei.JEI.removeAndHide(item);
    furnace.remove(item);
}