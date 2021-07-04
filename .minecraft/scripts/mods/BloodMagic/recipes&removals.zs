#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;

recipes.addShaped(<bloodmagic:soul_forge>, 
[[<thaumcraft:stone_arcane>, <ore:manaDiamond>, <thaumcraft:stone_arcane>], 
[<bloodmagic:blood_rune>, <contenttweaker:corner_upgrade>, <bloodmagic:blood_rune>], 
[<ore:stoneCommon>, <bloodmagic:monster_soul>, <ore:stoneCommon>]]);

recipes.addShaped(<bloodmagic:blood_rune>, 
[[<primal:common_stone>, <thaumcraft:slab_arcane_stone>, <primal:common_stone>], 
[<bloodmagic:slate>, <bloodmagic:blood_orb>.withTag({orb: "*"}).reuse(), <bloodmagic:slate>], 
[<primal:common_stone>, <thaumcraft:slab_arcane_stone>, <primal:common_stone>]]);

recipes.addShaped(<bloodmagic:decorative_brick> * 4, 
[[<ore:stoneCommon>, null, <ore:stoneCommon>], 
[null, <bloodmagic:blood_shard>, null], 
[<ore:stoneCommon>, null, <ore:stoneCommon>]]);

recipes.addShapeless(<bloodmagic:sanguine_book>, [<contenttweaker:magical_projector>, <guideapi:bloodmagic-guide>]);

//炼金桌
AlchemyTable.addRecipe(<minecraft:blaze_powder>, 
[<thaumcraft:alumentum>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})], 
500, 40, 1);

AlchemyTable.addRecipe(<primal:adobe_brick>, 
[<primal:adobe_clump>,<primal:adobe_clump>,<primal:adobe_clump>,<primal:adobe_clump>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})], 
1000, 40, 0);

AlchemyTable.addRecipe(<minecraft:blaze_rod>, 
[<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>], 
1500, 40, 2);

AlchemyTable.addRecipe(<primal:ore_cluster_bog_iron>*4, 
[<ic2:crushed:2>*2,<primal:mud_clump>], 
1000, 20, 2);

AlchemyTable.addRecipe(<thaumcraft:flesh_block>, 
[<primal:chum>,<primal:chum>,<primal:tallow>,<primal:chum>,<primal:chum>,<primal:tallow>], 
1000, 60, 3);

AlchemyTable.addRecipe(<botania:spawnerclaw>, 
[<ore:ingotElvenElementium>,<ore:blockPrismarineDark>,<rockhounding_chemistry:probe_items:2>,<rockhounding_chemistry:alloy_parts:84>], 
200, 100, 3);

//血之祭坛
BloodAltar.removeRecipe(<minecraft:iron_sword>);
BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.removeRecipe(<minecraft:book>);
BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.removeRecipe(<bloodmagic:blood_shard>);
BloodAltar.removeRecipe(<minecraft:nether_star>);
BloodAltar.removeRecipe(<minecraft:coal_block>);
BloodAltar.removeRecipe(<minecraft:magma_cream>);
BloodAltar.removeRecipe(<minecraft:obsidian>);
BloodAltar.removeRecipe(<minecraft:ghast_tear>);
BloodAltar.removeRecipe(<minecraft:lapis_block>);

BloodAltar.addRecipe(<guideapi:bloodmagic-guide>,<minecraft:writable_book>,0,1000,10,40);
BloodAltar.addRecipe(<bloodmagic:slate>,<contenttweaker:empty_manarune>,0,1000,10,40);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}),<contenttweaker:mana_crystal>,0,2000,20,40);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}),<contenttweaker:infused_crystal>,1,6000,40,40);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}),<contenttweaker:effulgent_crystal>,2,25000,80,40);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}),<contenttweaker:vivid_crystal>,3,40000,120,40);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}),<contenttweaker:ultimate_crystal>,4,80000,200,40);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:1>.withTag({uses: 10}),<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aqua"}]}),2,1000,10,40);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:2>.withTag({uses: 10}),<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "ignis"}]}),2,1000,10,40);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:3>.withTag({uses: 10}),<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "terra"}]}),2,1000,10,40);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:4>.withTag({uses: 10}),<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aer"}]}),2,1000,10,40);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:5>.withTag({uses: 10}),<ic2:plate:15>,3,3000,40,40);

//狱火熔炉
TartaricForge.removeRecipe([<minecraft:redstone>,<minecraft:gunpowder>,<minecraft:coal:1>,<minecraft:dye:15>]);
TartaricForge.removeRecipe([<minecraft:cauldron>,<minecraft:dye:4>,<minecraft:stone>,<minecraft:diamond>]);
TartaricForge.removeRecipe([<bloodmagic:soul_forge>,<minecraft:dye:4>,<minecraft:stone>,<minecraft:glass>]);
TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>,<minecraft:stone>,<bloodmagic:item_demon_crystal>]);
TartaricForge.removeRecipe([<minecraft:coal:1>]);
TartaricForge.removeRecipe([<bloodmagic:soul_gem:2>,<bloodmagic:slate:3>,<bloodmagic:item_demon_crystal>,<bloodmagic:blood_shard>]);

TartaricForge.addRecipe(<bloodmagic:arcane_ashes>, 
[<thaumcraft:salis_mundus>,<astralsorcery:itemcraftingcomponent:2>,<botania:manaresource:23>,<minecraft:redstone>], 2, 1);

TartaricForge.addRecipe(<bloodmagic:soul_gem:3>, 
[<bloodmagic:soul_gem:2>,<bloodmagic:slate:3>,<bloodmagic:item_demon_crystal:3>,<bloodmagic:blood_shard>], 1000, 200);

TartaricForge.addRecipe(<bloodmagic:demon_pylon>, 
[<thaumcraft:dioptra>,<botanicadds:mana_lapis>,<astralsorcery:blockrituallink>,<bloodmagic:demon_crystal>], 400, 40);

TartaricForge.addRecipe(<modularmachinery:itemmodularium>*3, 
[<astralsorcery:itemcraftingcomponent:1>,<thaumcraft:quicksilver>,<botania:manaresource:23>], 1200, 30);

TartaricForge.addRecipe(<modularmachinery:blockcontroller>, 
[<modularmachinery:blockcasing>,<contenttweaker:magical_projector>,<thaumcraft:plate:3>,<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "Tinctura"}]})], 500, 200);

TartaricForge.addRecipe(<modularmagic:blockmanaproviderinput>, 
[<modularmachinery:blockcasing>,<botania:rune:8>,<contenttweaker:mana_crystal>,<astralsorcery:itemusabledust:1>], 200, 20);

TartaricForge.addRecipe(<modularmachinery:blockenergyoutputhatch>, 
[<modularmachinery:blockcasing>,<botania:manaresource:23>,<extrautils2:ingredients>,<thaumcraft:nugget:7>], 200, 20);

TartaricForge.addRecipe(<modularmagic:blockwillproviderinput>, 
[<modularmachinery:blockcasing>,<bloodmagic:demon_will_gauge>], 200, 20);

TartaricForge.addRecipe(<gugu-utils:aspectinputhatch>, 
[<modularmachinery:blockcasing>,<thaumcraft:tube_oneway>,<thaumcraft:jar_brace>], 200, 20);

TartaricForge.addRecipe(<modularmachinery:blockcasing:3>, 
[<modularmachinery:blockcasing>,<ore:gearSteel>,<ore:stickSteel>,<ore:plateObsidian>], 200, 20);

TartaricForge.addRecipe(<modularmachinery:blockcasing:1>*2, 
[<modularmachinery:blockcasing>,<primal:slat_iron>,<rockhounding_chemistry:misc_items:20>,<ic2:crafting:6>], 200, 20);

TartaricForge.addRecipe(<modularmachinery:blockcasing:4>, 
[<modularmachinery:blockcasing>,<ic2:crafting:3>,<ore:dustGraphite>], 200, 20);

TartaricForge.addRecipe(<modularmachinery:blockcasing:5>, 
[<modularmachinery:blockcasing>,<appliedenergistics2:material:17>,<qmd:beamline>], 200, 20);

TartaricForge.addRecipe(<gugu-utils:environmenthatch>, 
[<modularmachinery:blockcasing>,<minecraft:clock>], 200, 20);

TartaricForge.addRecipe(<gugu-utils:starlightinputhatch:1>, 
[<modularmachinery:blockcasing>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:2>,<contenttweaker:resistance_etching_agent>], 200, 20);

TartaricForge.addRecipe(<gugu-utils:starlightinputhatch:2>, 
[<gugu-utils:starlightinputhatch:1>,<thaumcraft:salis_mundus>,<contenttweaker:strength_etching_agent>], 500, 20);

TartaricForge.addRecipe(<modularmagic:blockgridproviderinput>, 
[<modularmachinery:blockcasing>,<extrautils2:powertransmitter>,<thaumcraft:salis_mundus>,<extrautils2:endershard>], 200, 20);

val rmcut as IItemStack[]=[
    <thermalfoundation:ore:5>,
    <biomesoplenty:gem_ore:2>,
    <astralsorcery:blockcustomsandore>,
    <nuclearcraft:ore:7>,
    <geolosys:cluster:9>,
    <geolosys:cluster:12>,
    <rftools:dimensional_shard_ore>,
    <thermalfoundation:ore:8>,
    <astralsorcery:blockcustomore:1>,
    <biomesoplenty:gem_ore:3>,
    <geolosys:cluster:11>,
    <ic2:resource:3>,
    <nuclearcraft:ore:5>,
    <biomesoplenty:gem_ore>,
    <minecraft:gold_ore>,
    <forestry:resources>,
    <appliedenergistics2:quartz_ore>,
    <libvulpes:ore0>,
    <minecraft:iron_ore>,
    <thermalfoundation:ore:4>,<immersiveengineering:ore:1>,<geolosys:cluster:6>,
    <geolosys:cluster:10>,
    <nuclearcraft:ore:6>,
    <biomesoplenty:gem_ore:7>,
    <minecraft:emerald_ore>,
    <ic2:resource:2>,
    <actuallyadditions:block_misc:3>,
    <biomesoplenty:gem_ore:4>,
    <biomesoplenty:gem_ore:5>,
    <biomesoplenty:gem_ore:1>,
    <minecraft:lapis_ore>,
    <minecraft:diamond_ore>,
    <thermalfoundation:ore:6>,
    <thermalfoundation:ore:2>,
    <thermalfoundation:ore:7>,
    <libvulpes:ore0:8>,
    <minecraft:redstone_ore>,
    <geolosys:cluster:2>,
    <minecraft:quartz_ore>,
    <biomesoplenty:gem_ore:6>,
    <nuclearcraft:ore:3>
];

for item in rmcut{
    AlchemyTable.removeRecipe([item,<bloodmagic:cutting_fluid>]);
}

//炼金矩阵
AlchemyArray.addRecipe(<contenttweaker:infused_crystal>, 
<contenttweaker:mana_crystal>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Spatio"}]}), 
"bloodmagic:textures/models/AlchemyArrays/infusing.png");

AlchemyArray.addRecipe(<contenttweaker:speed_etching_agent>, 
<contenttweaker:speed_gel>, <bloodmagic:slate:1>, 
"bloodmagic:textures/models/AlchemyArrays/etching_speed.png");

AlchemyArray.addRecipe(<contenttweaker:eraesing_etching_agent>, 
<contenttweaker:eraese_gel>, <bloodmagic:slate:1>, 
"bloodmagic:textures/models/AlchemyArrays/etching_clear.png");

AlchemyArray.addRecipe(<contenttweaker:sacrifice_etching_agent>, 
<contenttweaker:instheal_gel>, <bloodmagic:slate:1>, 
"bloodmagic:textures/models/AlchemyArrays/etching_sacrifice.png");

AlchemyArray.addRecipe(<contenttweaker:resistance_etching_agent>, 
<contenttweaker:resistance_gel>, <bloodmagic:slate:2>, 
"bloodmagic:textures/models/AlchemyArrays/etching_resistance.png");

AlchemyArray.addRecipe(<contenttweaker:strength_etching_agent>, 
<contenttweaker:strength_gel>, <bloodmagic:slate:2>, 
"bloodmagic:textures/models/AlchemyArrays/etching_strength.png");

AlchemyArray.addRecipe(<contenttweaker:absorption_etching_agent>, 
<contenttweaker:absorption_gel>, <bloodmagic:slate:3>, 
"bloodmagic:textures/models/AlchemyArrays/etching_absorption.png");

AlchemyArray.addRecipe(<contenttweaker:jumpboost_etching_agent>, 
<contenttweaker:jumpboost_gel>, <bloodmagic:slate:3>,
"bloodmagic:textures/models/AlchemyArrays/etching_jumpBoost.png");

AlchemyArray.addRecipe(<contenttweaker:haste_etching_agent>, 
<contenttweaker:haste_gel>, <bloodmagic:slate:4>, 
"bloodmagic:textures/models/AlchemyArrays/etching_haste.png");

AlchemyArray.addRecipe(<contenttweaker:overload_etching_agent>, 
<contenttweaker:overload_gel>, <bloodmagic:slate:4>, 
"bloodmagic:textures/models/AlchemyArrays/etching_overload.png");
