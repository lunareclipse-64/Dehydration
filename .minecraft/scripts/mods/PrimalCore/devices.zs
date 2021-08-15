#priority 110
#loader crafttweaker reloadableevents
import mods.primal.Smelter;
import mods.primal.Cauldron;
import mods.primal.DryingRack;
import mods.primal.Quern;

//移除
mods.primal.Quern.removeAll();
Cauldron.removeRecipe("primal:glass");
val removeSmeterRecipes as string[] = [
    "primal:sand",
    "primal:iron",
    "primal:ore_good_iron",
    "primal:ore_fair_iron",
    "primal:ore_sand_iron",
    "primal:thaumcraft_cluster_iron",
    "primal:ore_good_copper",
    "primal:ore_fair_copper",
    "primal:ore_sand_copper",
    "primal:thaumcraft_cluster_copper",
    "primal:ore_good_lead",
    "primal:ore_fair_lead",
    "primal:ore_sand_lead",
    "primal:thaumcraft_cluster_lead",
    "primal:ore_good_gold",
    "primal:ore_fair_gold",
    "primal:ore_sand_gold",
    "primal:thaumcraft_cluster_gold",
    "primal:ore_good_silver",
    "primal:ore_fair_silver",
    "primal:ore_sand_silver",
    "primal:thaumcraft_cluster_silver",
    "primal:ore_good_zinc",
    "primal:ore_fair_zinc",
    "primal:ore_sand_zinc",
    "primal:thaumcraft_cluster_zinc",
    "primal:ore_good_tin",
    "primal:ore_fair_tin",
    "primal:ore_sand_tin",
    "primal:ore_good_uranium",
    "primal:ore_fair_uranium",
    "primal:ore_sand_uranium",
    "primal:ore_good_osmium",
    "primal:ore_fair_osmium",
    "primal:ore_sand_osmium",
    "primal:ore_good_thoium",
    "primal:ore_fair_thoium",
    "primal:ore_sand_thoium",
    "primal:ore_good_aluminum",
    "primal:ore_fair_aluminum",
    "primal:ore_sand_aluminum",
    "primal:ore_good_platinum",
    "primal:ore_fair_platinum",
    "primal:ore_sand_platinum",
    "primal:ore_good_thorinum",
    "primal:ore_fair_thorinum",
    "primal:ore_sand_thorinum",
    "primal:ore_good_magnesium",
    "primal:ore_fair_magnesium",
    "primal:ore_sand_magnesium",
    "primal:ore_good_lithium",
    "primal:ore_fair_lithium",
    "primal:ore_sand_lithium",
    "primal:plate_lithium",
    "primal:dust_lithium",
    "primal:ore_fair_nickel",
    "primal:ore_good_nickel",
    "primal:ore_sand_nickel",
	"primal:ore_good_boron",
	"primal:ore_sand_boron",
	"primal:ore_fair_boron",
	"primal:zinc_lime_good",
	"primal:zinc_lime_high",
	"primal:ore_fair_thorium",
	"primal:ore_sand_thorium",
	"primal:ore_good_thorium",
	"primal:alloy_bronze",
	"primal:alloy_constantan"
];
for item in removeSmeterRecipes{Smelter.removeRecipe(item);}


DryingRack.addNonRottingRecipe(
    "dry_rush_stem",
    8,
	<primal:rush_stems>,
    <contenttweaker:dry_rush_stem>
);
DryingRack.addNonRottingRecipe(
    "light_dust",
    12,
	<contenttweaker:light_sand_dust>,
    <astralsorcery:itemusabledust>
);
DryingRack.addNonRottingRecipe(
    "wand_activating",
    24,
	<contenttweaker:unc_wand>,
    <astralsorcery:itemwand>.withTag({astralsorcery: {}})
);
DryingRack.addNonRottingRecipe(
    "water_distill_leaves",
    9,
	<contenttweaker:distill_bottle_leaves>,
    <contenttweaker:distill_bottle_water_plant>
);
DryingRack.addRottingRecipe(
    "water_distill_flesh",
    9,
	90,
	<contenttweaker:distill_bottle_flesh>,
    <contenttweaker:distill_bottle_poison_flesh>,
    <contenttweaker:distill_bottle_water_flesh>
);


Cauldron.addRecipe(
    "paper_plup_water",
	2,
	<liquid:water>*100,
	[<contenttweaker:dry_rush_stem>],
	[<primal:plant_fiber_pulp>]
);

Cauldron.addRecipe(
    "paper_plup_purified",
	2,
	<liquid:purified_water>*100,
	[<contenttweaker:dry_rush_stem>],
	[<primal:plant_fiber_pulp>]
);

Cauldron.addRecipe(
    "sulfur_from_lava",
	3,
	<liquid:lava>*1000,
	<liquid:magma_basaltic>*1000,
	[<toughasnails:ice_cube>],
	[<rockhounding_chemistry:chemical_dusts:45>*4]
);

Cauldron.addRecipe(
    "vanillapaper_purified",
	2,
	<liquid:purified_water>*100,
	[<primal:plant_papyrus>*4,<ore:dustSulfur>],
	[<minecraft:paper>*4]
);

Cauldron.addRecipe(
    "astral_starlight_produce",
	4,
	<liquid:purified_water>*1000,
	<liquid:astralsorcery.liquidstarlight>*2000,
	[<botania:manaresource:23>*2,<astralsorcery:itemusabledust:1>*4],
	[]
);

Cauldron.addRecipe(
    "astral_rockcrystal",
	4,
	<liquid:astralsorcery.liquidstarlight>*1000,
	[<astralsorcery:itemcraftingcomponent>*3,<contenttweaker:soda>*2],
	[<contenttweaker:crystal_nucleus>*3]
);

Cauldron.addRecipe(
    "amber_from_dust",
	2,
	null,
	[<jaopca:item_dustamber>*2],
	[<thaumcraft:amber>*2]
);

Cauldron.addRecipe(
    "amber_from_tinydust",
	2,
	null,
	[<jaopca:item_dusttinyamber>*18],
	[<thaumcraft:amber>*2]
);

Cauldron.addRecipe(
    "vanilla_sugar",
	2,
	null,
	[<harvestcraft:applejuiceitem>*2],
	[<minecraft:sugar>*2]
);

Cauldron.addRecipe(
    "slime_transformation",
	3,
	<liquid:purified_water>*1000,
	[<forestry:propolis:1>*8,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})*4],
	[<minecraft:slime_ball>]
);

//冶炼炉
Smelter.addRecipe(
    "vanilla_iron_from_crude",
	5,
	[<primal:crude_iron_ingot>,<primal:charcoal_mote>*2,<ore:slackLime>],
	[<minecraft:iron_ingot>]
);
Smelter.addRecipe(
    "vanilla_glass_created",
	2,
	[<ore:charcoal>,<contenttweaker:soda>,<primal:carbonate_slack>,<contenttweaker:purified_sand>*4],
	[<minecraft:glass>*3]
);
Smelter.addRecipe(
    "crude_iron_from_6nugget",
	1,
	[<primal:crude_iron_nugget>*9,<primal:charcoal_mote>],
	[<primal:crude_iron_ingot>]
);
Smelter.addRecipe(
    "vanilla_iron_from_nugget",
	1,
	[<minecraft:iron_nugget>*9,<primal:charcoal_mote>],
	[<minecraft:iron_ingot>]
);
Smelter.addRecipe(
    "glass_pane",
	2,
	[<minecraft:glass>*2,<primal_tech:rock>,<primal:charcoal_mote>],
	[<minecraft:glass_pane>*4,<primal_tech:rock>]
);

Smelter.addRecipe(
    "salt_from_nature_salt",
	2,
	[<rockhounding_chemistry:misc_blocks_a:12>*2,<primal:charcoal_mote>*2],
	[<primal:salt_dust_netjry>*4]
);

Smelter.addRecipe(
    "gold_from_ore",
	4,
	[<ic2:crushed:1>*2,<primal:charcoal_mote>,<primal:carbonate_slack>*4],
	[<minecraft:gold_ingot>*2]
);

Smelter.addRecipe(
    "silver_from_ore",
	4,
	[<ic2:crushed:4>*2,<primal:charcoal_mote>,<primal:carbonate_slack>*4],
	[<thermalfoundation:material:130>*2]
);

Smelter.addRecipe(
    "copper_from_crashed_fair",
	10,
	[<ic2:crushed>*2,<primal:charcoal_fair>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:11>*2]
);

Smelter.addRecipe(
    "copper_from_crashed_good",
	10,
	[<ic2:crushed>*2,<primal:charcoal_good>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:11>*2,<thermalfoundation:material:192>*2]
);

Smelter.addRecipe(
    "copper_from_crashed_high",
	10,
	[<ic2:crushed>*2,<primal:charcoal_high>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:11>*2,<thermalfoundation:material:192>*4]
);

Smelter.addRecipe(
    "lead_from_crashed_fair",
	12,
	[<ic2:crushed:3>*2,<primal:charcoal_fair>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:5>*2]
);

Smelter.addRecipe(
    "lead_from_crashed_good",
	12,
	[<ic2:crushed:3>*2,<primal:charcoal_good>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:5>*2,<thermalfoundation:material:195>*2]
);

Smelter.addRecipe(
    "lead_from_crashed_high",
	12,
	[<ic2:crushed:3>*2,<primal:charcoal_high>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:5>*2,<thermalfoundation:material:195>*4]
);

Smelter.addRecipe(
    "tin_from_crashed_fair",
	9,
	[<ic2:crushed:5>*2,<primal:charcoal_fair>*2,<primal:carbonate_slack>*4],
	[<thermalfoundation:material:129>*2]
);

Smelter.addRecipe(
    "tin_from_crashed_good",
	9,
	[<ic2:crushed:5>*2,<primal:charcoal_good>*2,<primal:carbonate_slack>*4],
	[<thermalfoundation:material:129>*2,<thermalfoundation:material:193>*2]
);

Smelter.addRecipe(
    "tin_from_crashed_high",
	9,
	[<ic2:crushed:5>*2,<primal:charcoal_high>*2,<primal:carbonate_slack>*4],
	[<thermalfoundation:material:129>*2,<thermalfoundation:material:193>*4]
);

Smelter.addRecipe(
    "mercury_from_crashed_fair",
	8,
	[<contenttweaker:crushed_cinnabar>*2,<primal:charcoal_fair>*2,<primal:carbonate_slack>*4],
	[<thaumcraft:quicksilver>*2]
);

Smelter.addRecipe(
    "mercury_from_crashed_good",
	8,
	[<contenttweaker:crushed_cinnabar>*2,<primal:charcoal_good>*2,<primal:carbonate_slack>*4],
	[<thaumcraft:quicksilver>*2,<thaumcraft:nugget:5>*2]
);

Smelter.addRecipe(
    "mercury_from_crashed_high",
	8,
	[<contenttweaker:crushed_cinnabar>*2,<primal:charcoal_high>*2,<primal:carbonate_slack>*4],
	[<thaumcraft:quicksilver>*2,<thaumcraft:nugget:5>*4]
);

Smelter.addRecipe(
    "zinc_from_crashed_fair",
	10,
	[<jaopca:item_crushedzinc>*2,<primal:charcoal_fair>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:9>*2]
);

Smelter.addRecipe(
    "zinc_from_crashed_good",
	10,
	[<jaopca:item_crushedzinc>*2,<primal:charcoal_good>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:9>*2,<primal:zinc_nugget>*2]
);

Smelter.addRecipe(
    "zinc_from_crashed_high",
	10,
	[<jaopca:item_crushedzinc>*2,<primal:charcoal_high>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:9>*2,<primal:zinc_nugget>*4]
);

Smelter.addRecipe(
    "nickel_from_crashed_fair",
	8,
	[<jaopca:item_crushednickel>*2,<primal:charcoal_fair>*2,<primal:carbonate_slack>*4],
	[<thermalfoundation:material:162>*2]
);

Smelter.addRecipe(
    "nickel_from_crashed_good",
	8,
	[<jaopca:item_crushednickel>*2,<primal:charcoal_good>*2,<primal:carbonate_slack>*4],
	[<thermalfoundation:material:162>*2,<thermalfoundation:material:226>*2]
);

Smelter.addRecipe(
    "nickel_from_crashed_high",
	8,
	[<jaopca:item_crushednickel>*2,<primal:charcoal_high>*2,<primal:carbonate_slack>*4],
	[<thermalfoundation:material:162>*2,<thermalfoundation:material:226>*4]
);

Smelter.addRecipe(
    "chalcopyrite_crushed",
	7,
	[<contenttweaker:crushed_chalcopyrite>*2,<primal:charcoal_mote>*2,<primal:carbonate_slack>*4],
	[<rockhounding_chemistry:metal_items:11>*2]
);

Smelter.addRecipe(
    "chalcopyrite_purified",
	6,
	[<contenttweaker:purified_chalcopyrite>*2,<primal:charcoal_mote>*2],
	[<rockhounding_chemistry:metal_items:11>*2]
);

Smelter.addRecipe(
    "bloodalloyblock_1",
	4,
	[<minecraft:iron_ingot>*2,<primal:charcoal_mote>*2,<bloodmagic:item_demon_crystal>*4],
	[<bloodmagic:demon_extras:10>]
);

Smelter.addRecipe(
    "bloodalloyblock_2",
	4,
	[<minecraft:iron_ingot>*2,<primal:charcoal_mote>*2,<bloodmagic:item_demon_crystal:1>*4],
	[<bloodmagic:demon_extras:11>]
);
Smelter.addRecipe(
    "bloodalloyblock_3",
	4,
	[<minecraft:iron_ingot>*2,<primal:charcoal_mote>*2,<bloodmagic:item_demon_crystal:2>*4],
	[<bloodmagic:demon_extras:12>]
);
Smelter.addRecipe(
    "bloodalloyblock_4",
	4,
	[<minecraft:iron_ingot>*2,<primal:charcoal_mote>*2,<bloodmagic:item_demon_crystal:3>*4],
	[<bloodmagic:demon_extras:13>]
);
Smelter.addRecipe(
    "bloodalloyblock_5",
	4,
	[<minecraft:iron_ingot>*2,<primal:charcoal_mote>*2,<bloodmagic:item_demon_crystal:4>*4],
	[<bloodmagic:demon_extras:14>]
);
Smelter.addRecipe(
    "bronze_alloy",
	3,
	[<ore:ingotCopper>*3,<ore:ingotTin>,<ore:charcoal>],
	[<ic2:ingot:1>*4]
);
Smelter.addRecipe(
    "constantan_alloy",
	4,
	[<ore:ingotCopper>,<ore:ingotZinc>,<ore:charcoal>],
	[<immersiveengineering:metal:6>*2]
);
Smelter.addRecipe(
    "electrum_alloy",
	4,
	[<ore:ingotGold>,<ore:ingotSilver>,<ore:charcoal>],
	[<immersiveengineering:metal:7>*2]
);
Smelter.addRecipe(
    "star_metal",
	4,
	[<jaopca:item_crushedastralstarmetal>,<ore:slackLime>*2,<ore:charcoalMote>],
	[<astralsorcery:itemcraftingcomponent:1>]
);
//磨
Quern.addRecipe(
    "primal:urushi_ground_quern", 
    6, 
    [<ore:barkWood>,<primal:slag>,<primal:thatching_wet>], 
    [<primal:urushi_ground>*2]
);
Quern.addRecipe(
    "primal:tannin_ground_quern", 
    5, 
    [<ore:barkWood>,<primal:carbonate_slack>], 
    [<primal:tannin_ground>]
);
Quern.addRecipe(
    "minecraft:bone_quern", 
    3, 
    [<minecraft:bone>], 
    [<minecraft:dye:15>*4]
);
Quern.addRecipe(
    "minecraft:skeleton_skull_quern", 
    3, 
    [<minecraft:skull>], 
    [<minecraft:dye:15>*4]
);
Quern.addRecipe(
    "minecraft:bone_block_quern", 
    7, 
    [<minecraft:bone_block>], 
    [<minecraft:dye:15>*9]
);
