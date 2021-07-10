#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;

#remove
val rmaw as IItemStack[] = [
    <thaumcraft:thaumometer>,
    <thaumcraft:caster_basic>,
    <thaumcraft:vis_resonator>,
    <thaumcraft:smelter_basic>,
    <thaumcraft:jar_normal>,
    <thaumcraft:infusion_matrix>,
    <thaumcraft:recharge_pedestal>,
    <thaumcraft:arcane_workbench_charger>,
    <thaumcraft:pedestal_arcane>,
    <thaumcraft:dioptra>,
    <thaumcraft:essentia_input>,
    <thaumcraft:essentia_output>,
    <thaumcraft:filter>,
    <planarartifice:alkimium_smeltery>,
    <planarartifice:alkimium_smeltery_thaumium>,
    <planarartifice:alkimium_smeltery_void>,
    <thaumcraft:smelter_thaumium>,
    <thaumcraft:metal_alchemical>,
	<thaumcraft:goggles>,
    <planarartifice:alchemical_alkimium_construct>,
	<thaumcraft:matrix_cost>,
	<thaumcraft:matrix_speed>,
	<planarartifice:teleporter_matrix>
];
for item in rmaw{
	ArcaneWorkbench.removeRecipe(item);
}

val rmc as IItemStack[] = [
	<thaumcraft:ingot:2>,
    <thaumcraft:everfull_urn>,
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
	<thaumcraft:cluster>,
	<thaumcraft:cluster:1>,
	<thaumcraft:cluster:2>,
	<thaumcraft:cluster:3>,
	<thaumcraft:cluster:4>,
	<thaumcraft:cluster:5>,
	<thaumcraft:cluster:6>,
	<thaumcraft:cluster:7>
];
for item in rmc{
	Crucible.removeRecipe(item);
}

Infusion.removeRecipe(<thaumcraft:lamp_growth>);
Infusion.removeRecipe(<thaumcraft:elemental_sword>);
Infusion.removeRecipe(<thaumcraft:elemental_axe>);
Infusion.removeRecipe(<thaumcraft:elemental_pick>);
Infusion.removeRecipe(<thaumcraft:elemental_shovel>);
Infusion.removeRecipe(<thaumcraft:elemental_hoe>);
Infusion.removeRecipe(<thaumcraft:lamp_fertility>);
Infusion.removeRecipe(<thaumcraft:turret:2>);
Infusion.removeRecipe(<planarartifice:dimensional_singularity>);


//工作台
recipes.addShaped(<thaumcraft:salis_mundus>*2, 
[[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <astralsorcery:itemcraftingcomponent:2>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]})], 
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <botania:pestleandmortar>.reuse(), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})], 
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}), <botania:manaresource:23>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]})]]);

recipes.addShapeless(<thaumcraft:plate>, 
[<primal:iron_gallagher>.anyDamage().transformDamage(3), <primal:brass_ingot>|<thaumcraft:ingot:2>]);

recipes.addShapeless(<thaumcraft:plate:2>, 
[<primal:iron_gallagher>.anyDamage().transformDamage(3), <thaumcraft:ingot>]);

recipes.addShapeless(<planarartifice:alkimium_plate>, 
[<primal:iron_gallagher>.anyDamage().transformDamage(3), <planarartifice:alkimium_ingot>]);

recipes.addShapeless(<thaumcraft:scribing_tools>, 
[<thaumcraft:phial>, <contenttweaker:dry_rush_stem>, <ore:dyeBlack>]);

recipes.addShaped(<thaumcraft:stone_arcane> * 4, 
[[null, <botania:livingrock>, null], 
[<botania:livingrock>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <botania:livingrock>], 
[null, <botania:livingrock>, null]]);

recipes.addShaped(<thaumcraft:table_stone>, 
[[<ore:pinIron>, <primal:iron_gallagher>.anyDamage().transformDamage(5), <ore:pinIron>], 
[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>], 
[<primal:common_stone:7>, null, <primal:common_stone:7>]]);

recipes.addShaped(<thaumcraft:table_wood>, 
[[<ore:pinWood>, <primal:stone_gallagher>.anyDamage().transformDamage(5), <ore:pinWood>], 
[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], 
[<ore:plankWood>, null, <ore:plankWood>]]);

recipes.addShaped(<minecraft:cauldron>, 
[[<primal:crude_iron_plate>|<ore:plateIron>, null, <primal:crude_iron_plate>|<ore:plateIron>], 
[<primal:crude_iron_plate>|<ore:plateIron>, <primal:stone_gallagher>.anyDamage().transformDamage(4), <primal:crude_iron_plate>|<ore:plateIron>], 
[<ore:plateCrudeIron>|<ore:plateIron>, <minecraft:iron_ingot>|<primal:crude_iron_ingot>, <primal:crude_iron_plate>|<ore:plateIron>]]);

recipes.addShapeless(<contenttweaker:empty_celestial_note>, 
[<thaumcraft:thaumometer>.reuse(), <primal:plant_papyrus>|<minecraft:paper>, <thaumcraft:scribing_tools>.anyDamage().transformDamage(1)]);

recipes.addShaped(<thaumcraft:candle_white> * 2, 
[[<ore:string>], [<thaumcraft:tallow>], [<primal:tallow>]]);

recipes.addShaped(<thaumcraft:thaumium_chest>, [
[<thaumcraft:plate:2>, null, <thaumcraft:plate:2>], 
[<thaumcraft:plate:2>, <thaumcraft:plate:2>, <thaumcraft:plate:2>], 
[<thaumcraft:plate:2>, <thaumcraft:plate:2>, <thaumcraft:plate:2>]]);

recipes.addShaped(<thaumcraft:thaumium_legs>, [
[<thaumcraft:plate:2>, <thaumcraft:plate:2>, <thaumcraft:plate:2>], 
[<thaumcraft:plate:2>, null, <thaumcraft:plate:2>], 
[<thaumcraft:plate:2>, null, <thaumcraft:plate:2>]]);

recipes.addShaped(<thaumcraft:thaumium_boots>, [
[<thaumcraft:plate:2>, null, <thaumcraft:plate:2>], 
[<thaumcraft:plate:2>, null, <thaumcraft:plate:2>]]);

recipes.addShaped(<thaumcraft:thaumium_helm>, [
[<thaumcraft:plate:2>, <thaumcraft:plate:2>, <thaumcraft:plate:2>], 
[<thaumcraft:plate:2>, null, <thaumcraft:plate:2>]]);

recipes.addShaped(<thaumcraft:thaumium_hoe>, 
[[<ore:plateThaumium>, <ore:ingotThaumium>], 
[null, <ore:stickWood>], [null, <ore:stickWood>]]);

recipes.addShaped(<thaumcraft:thaumium_sword>, 
[[<ore:plateThaumium>], [<ore:plateThaumium>], [<ore:stickWood>]]);

recipes.addShaped(<thaumcraft:thaumium_shovel>, 
[[<ore:plateThaumium>], [<ore:stickWood>], [<ore:stickWood>]]);

recipes.addShaped(<thaumcraft:thaumium_axe>, 
[[<ore:plateThaumium>, <ore:ingotThaumium>], 
[<ore:plateThaumium>, <ore:stickWood>], 
[null, <ore:stickWood>]]);

recipes.addShaped(<thaumcraft:thaumium_pick>, 
[[<ore:plateThaumium>, <ore:ingotThaumium>, <ore:plateThaumium>], 
[null, <ore:stickWood>, null], 
[null, <ore:stickWood>, null]]);


//坩埚
Crucible.registerRecipe("alk_brass","BASEALCHEMY",
<thaumcraft:ingot:2>,<ore:ingotCopper>,
[<aspect:alkimia>*2,<aspect:ignis>*2,<aspect:potentia>*2]);

Crucible.registerRecipe("magical_ironingot","!thaumcraft:ingot2",
<minecraft:iron_ingot>,<primal:crude_iron_ingot>,
[<aspect:ordo>*2,<aspect:ignis>,<aspect:metallum>]);

Crucible.registerRecipe("string_to_feather","BASEALCHEMY",
<minecraft:feather>,<minecraft:string>,
[<aspect:fabrico>*5,<aspect:ordo>*5,<aspect:vacuos>*5]);

Crucible.registerRecipe("paperforV","BASEALCHEMY",
<minecraft:paper>,<primal:plant_papyrus>,
[<aspect:fabrico>,<aspect:ignis>]);

Crucible.registerRecipe("daggar_of_sacrifice","ELEMENTALTOOLS",
<bloodmagic:dagger_of_sacrifice>,<thaumcraft:elemental_sword>,
[<aspect:aversio>*40,<aspect:potentia>*30,<aspect:permutatio>*20,<aspect:tenebrae>*20,<aspect:mortuus>*20,<aspect:vitreus>*15]);

Crucible.registerRecipe("soul_snare","ELEMENTALTOOLS",
<bloodmagic:soul_snare>*5,<minecraft:web>,
[<aspect:potentia>*10,<aspect:metallum>*10]);

Crucible.registerRecipe("infernal_furnace_discovery","BASEALCHEMY",
<contenttweaker:infernal_furnace_discovery>,<contenttweaker:forbidden_fragment>,
[<aspect:cognitio>*12,<aspect:ignis>*25,<aspect:auram>*10,<aspect:machina>*15]);

Crucible.registerRecipe("blueprint1","BASEALCHEMY",
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:thaum_generator_1"}),<enderio:item_material:77>,
[<aspect:praecantatio>*10,<aspect:alkimia>*10,<aspect:potentia>*20]);

Crucible.registerRecipe("blueprint2","BASEALCHEMY",
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:blood_generator_1"}),<enderio:item_material:77>,
[<aspect:victus>*10,<aspect:aversio>*10,<aspect:potentia>*20]);

Crucible.registerRecipe("blueprint3","BASEALCHEMY",
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:bot_generator_1"}),<enderio:item_material:77>,
[<aspect:herba>*10,<aspect:aqua>*10,<aspect:potentia>*20]);

Crucible.registerRecipe("blueprint4","BASEALCHEMY",
<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:astral_generator_1"}),<enderio:item_material:77>,
[<aspect:lux>*10,<aspect:tenebrae>*10,<aspect:potentia>*20]);

Crucible.registerRecipe("crystal_2","BASEALCHEMY",
<contenttweaker:infused_crystal>,<astralsorcery:itemcraftingcomponent>,
[<aspect:alkimia>*20,<aspect:vitreus>*15,<aspect:praecantatio>*5]);

Crucible.registerRecipe("crystal_4","BASEALCHEMY",
<contenttweaker:vivid_crystal>,<contenttweaker:effulgent_crystal>,
[<aspect:victus>*40,<aspect:auram>*20,<aspect:ignis>*40]);

Crucible.registerRecipe("silicon_seed","BASEALCHEMY",
<contenttweaker:silicon_seed>*3,<nuclearcraft:gem:6>,
[<aspect:ordo>*3,<aspect:ignis>*4]);

Crucible.registerRecipe("tetra:geode","BASEALCHEMY",
<tetra:geode>*2,<rockhounding_chemistry:uninspected_mineral>,
[<aspect:desiderium>*5,<aspect:vitreus>*10]);


//注魔
Infusion.registerRecipe("astralsorcery:itemusabledust:1", "INFUSION", 
<astralsorcery:itemusabledust:1>, 1, 
[<aspect:tenebrae>*3,<aspect:potentia>*4], 
<astralsorcery:itemusabledust>, 
[<ore:dyeBlack>]);

Infusion.registerRecipe("magical_projector", "DIOPTRA", 
<contenttweaker:magical_projector>, 3, 
[<aspect:lux>*15,<aspect:auram>*10,<aspect:potentia>*10], 
<thaumcraft:vis_resonator>, 
[<astralsorcery:itemusabledust>,<thaumcraft:nitor_yellow>,<astralsorcery:itemusabledust>,<thermalfoundation:material:33>]);

Infusion.registerRecipe("botania_rune_spring", "INFUSION", 
<botania:rune:4>, 4, 
[<aspect:terra>*15,<aspect:victus>*10,<aspect:herba>*10], 
<botania:rune>, 
[<thaumcraft:nitor_pink>,<ore:treeSapling>,<minecraft:wheat_seeds>,<ore:treeSapling>]);

Infusion.registerRecipe("botania_rune_summer", "INFUSION", 
<botania:rune:5>, 4, 
[<aspect:aer>*15,<aspect:lux>*10,<aspect:aversio>*10], 
<botania:rune:1>, 
[<thaumcraft:nitor_lightblue>,<ore:listAllsmoothie>,<minecraft:blaze_powder>,<ore:listAllsmoothie>]);

Infusion.registerRecipe("botania_rune_autumn", "INFUSION", 
<botania:rune:6>, 4, 
[<aspect:ignis>*15,<aspect:permutatio>*10,<aspect:fabrico>*10], 
<botania:rune:2>, 
[<thaumcraft:nitor_yellow>,<minecraft:wheat>,<botania:grassseeds:4>,<minecraft:wheat>]);

Infusion.registerRecipe("botania_rune_winter", "INFUSION", 
<botania:rune:7>, 4, 
[<aspect:aqua>*15,<aspect:mortuus>*10,<aspect:gelum>*10], 
<botania:rune:3>, 
[<thaumcraft:nitor_white>,<minecraft:snow>,<astralsorcery:itemcraftingcomponent:2>,<minecraft:snow>]);

Infusion.registerRecipe("wing_upgrade", "!contenttweaker:corner_upgrade0", 
<contenttweaker:wing_upgrade>, 4, 
[<aspect:fabrico>*20,<aspect:Spatio>*8,<aspect:machina>*15], 
<contenttweaker:corner_upgrade>, 
[<astralsorcery:blockmarble:2>,<thermalfoundation:material:33>,<astralsorcery:blockmarble:2>,<minecraft:blaze_powder>,<astralsorcery:blockmarble:2>,<thaumcraft:plate>,<astralsorcery:blockmarble:2>,<thaumcraft:nitor_yellow>]);

Infusion.registerRecipe("balze_from_alumentum", "INFUSION", 
<minecraft:blaze_powder>, 2, 
[<aspect:ignis>*10,<aspect:ordo>*8,<aspect:alkimia>*6], 
<thaumcraft:alumentum>, 
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<astralsorcery:itemusabledust>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<botania:manaresource:23>]);

Infusion.registerRecipe("saligia_rune", "INFUSION", 
<contenttweaker:saligia_rune>, 8, 
[<aspect:vitium>*10,<aspect:aversio>*10,<aspect:tenebrae>*10,<aspect:alienis>*10], 
<contenttweaker:empty_manarune>, 
[<botania:manaresource:2>,<botania:grassseeds:8>,<botania:manaresource:2>,<minecraft:gunpowder>]);

Infusion.registerRecipe("lamp_growth", "LAMPGROWTH", 
<thaumcraft:lamp_growth>, 2, 
[<aspect:herba>*20,<aspect:lux>*10,<aspect:victus>*10,<aspect:instrumentum>*15], 
<thaumcraft:lamp_arcane>, 
[<minecraft:gold_ingot>,<botania:fertilizer>,<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "herba"}]}),<botania:rune:4>,<botania:grassseeds>,<astralsorcery:itemcraftingcomponent:4>]);

Infusion.registerRecipe("elemental_sword", "ELEMENTALTOOLS", 
<thaumcraft:elemental_sword>.withTag({infench: [{lvl: 2 as short, id: 5 as short}]}), 2, 
[<aspect:aer>*30,<aspect:potentia>*20,<aspect:aversio>*20,<aspect:volatus>*10], 
<astralsorcery:itemchargedcrystalsword>, 
[<botania:rune:3>,<thaumcraft:nugget:10>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),<botania:manaresource>,<minecraft:diamond>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "potentia"}]})]);

Infusion.registerRecipe("elemental_axe", "ELEMENTALTOOLS", 
<thaumcraft:elemental_axe>.withTag({infench: [{lvl: 1 as short, id: 2 as short}, {lvl: 1 as short, id: 0 as short}]}), 2, 
[<aspect:aqua>*30,<aspect:motus>*20,<aspect:instrumentum>*20,<aspect:permutatio>*10], 
<astralsorcery:itemchargedcrystalaxe>, 
[<botania:rune>,<thaumcraft:nugget:10>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}),<botania:manaresource>,<minecraft:diamond>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]})]);

Infusion.registerRecipe("elemental_pick", "ELEMENTALTOOLS", 
<thaumcraft:elemental_pick>.withTag({infench: [{lvl: 1 as short, id: 4 as short}, {lvl: 2 as short, id: 3 as short}]}), 2, 
[<aspect:ignis>*30,<aspect:sensus>*20,<aspect:lux>*20,<aspect:desiderium>*10], 
<astralsorcery:itemchargedcrystalpickaxe>, 
[<botania:rune:1>,<thaumcraft:nugget:10>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<botania:manaresource>,<minecraft:diamond>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sensus"}]})]);

Infusion.registerRecipe("elemental_shovel", "ELEMENTALTOOLS", 
<thaumcraft:elemental_shovel>.withTag({infench: [{lvl: 1 as short, id: 1 as short}]}), 2, 
[<aspect:terra>*30,<aspect:Spatio>*20,<aspect:machina>*20,<aspect:fabrico>*10], 
<astralsorcery:itemchargedcrystalshovel>, 
[<botania:rune:2>,<thaumcraft:nugget:10>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}),<botania:manaresource>,<minecraft:diamond>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Spatio"}]})]);

Infusion.registerRecipe("elemental_hoe", "ELEMENTALTOOLS", 
<thaumcraft:elemental_hoe>, 2, 
[<aspect:ordo>*30,<aspect:perditio>*20,<aspect:herba>*20,<aspect:victus>*10], 
<thaumcraft:thaumium_hoe>, 
[<botania:rune:4>,<thaumcraft:nugget:10>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}),<botania:manaresource>,<minecraft:diamond>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]})]);

Infusion.registerRecipe("bloodmagic_magic", "ELEMENTALTOOLS", 
<bloodmagic:altar>, 6, 
[<aspect:victus>*25,<aspect:vacuos>*20,<aspect:mortuus>*15,<aspect:alkimia>*15], 
<thaumcraft:crucible>, 
[<astralsorcery:itemcoloredlens:6>,<thermalfoundation:material:33>,<thaumcraft:slab_arcane_stone>,<minecraft:redstone_block>,<thaumcraft:essentia_output>,<thermalfoundation:material:33>,<thaumcraft:slab_arcane_stone>,<thaumcraft:salis_mundus>]);

Infusion.registerRecipe("botania_pylon_1", "ELEMENTALTOOLS", 
<botania:pylon:1>, 4, 
[<aspect:terra>*30,<aspect:praecantatio>*20,<aspect:alkimia>*10], 
<botania:pylon>, 
[<botania:manaresource:18>,<botania:livingwood:5>,<minecraft:ender_eye>,<botania:manaresource:18>,<botania:livingwood:5>,<contenttweaker:infused_crystal>]);

Infusion.registerRecipe("thaumcraft:curio:6", "!CrimsonCultist", 
<thaumcraft:curio:6>, 6, 
[<aspect:vitium>*20,<aspect:tenebrae>*20], 
<bloodmagic:sanguine_book>, 
[<contenttweaker:forbidden_fragment>,<contenttweaker:forbidden_fragment>,<contenttweaker:forbidden_fragment>,<contenttweaker:forbidden_fragment>]);

Infusion.registerRecipe("contenttweaker:forbidden_fragment", "INFUSION", 
<contenttweaker:forbidden_fragment>, 6, 
[<aspect:alienis>*10,<aspect:mortuus>*10,<aspect:cognitio>*15], 
<contenttweaker:empty_celestial_note>, 
[<bloodmagic:blood_shard>,<thaumcraft:brain>]);

Infusion.registerRecipe("bloodmagic:demon_crystallizer", "INFUSION", 
<bloodmagic:demon_crystallizer>, 5, 
[<aspect:vitreus>*20,<aspect:exanimis>*20,<aspect:spiritus>*15], 
<bloodmagic:soul_forge>, 
[<thaumcraft:essentia_output>,<contenttweaker:crystal_nucleus>,<botanicadds:mana_lapis_block>,<botania:sparkupgrade:1>]);

Infusion.registerRecipe("bloodmagic:demon_crucible", "INFUSION", 
<bloodmagic:demon_crucible>, 5, 
[<aspect:Spatio>*20,<aspect:auram>*20,<aspect:spiritus>*15], 
<thaumcraft:crucible>, 
[<thaumcraft:essentia_input>,<thaumcraft:salis_mundus>,<botanicadds:mana_lapis_block>,<botania:sparkupgrade>]);

Infusion.registerRecipe("astralsorcery:blockcustomore", "METALPURIFICATION", 
<astralsorcery:blockcustomore>, 2, 
[<aspect:lux>*10,<aspect:vitreus>*10], 
<contenttweaker:crystal_nucleus>, 
[<geolosys:cluster>,<primal:common_stone>,<astralsorcery:itemusabledust>,<botania:manaresource:23>]);

Infusion.registerRecipe("botania:pool", "INFUSION", 
<botania:pool>, 2, 
[<aspect:Spatio>*40,<aspect:praecantatio>*30,<aspect:vacuos>*20], 
<botania:pool:2>, 
[<botania:manaresource:8>,<botania:rune:8>]);

Infusion.registerRecipe("nuclearcraft:decay_generator", "INFUSION", 
<nuclearcraft:decay_generator>, 5, 
[<aspect:Tempus>*128],
<nuclearcraft:part:10>, 
[<rockhounding_chemistry:misc_items:11>,<thaumcraft:ingot:1>,<bloodmagic:component:18>,<extrautils2:ingredients>]);


//奥术工作台
ArcaneWorkbench.registerShapedRecipe(
"modularmachinery:itemmodularium_of_thaum", "INFUSION", 100,
[<aspect:aer>,<aspect:ignis>,<aspect:aqua>],
<modularmachinery:itemmodularium>*3,
[[null,<bloodmagic:item_demon_crystal:2>,null],
[null,<botania:manaresource:7>,null],
[null,<astralsorcery:itemusabledust>,null]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:pedestal_arcane","INFUSION",30,
[<aspect:aer>],
<thaumcraft:pedestal_arcane>,[
[<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>],
[null,<thaumcraft:stone_arcane>,null],
[<thaumcraft:stairs_arcane>,<botania:manaresource:23>,<thaumcraft:stairs_arcane>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:goggles","UNLOCKARTIFICE",40,
[<aspect:ignis>],
<thaumcraft:goggles>,[
[<thaumcraft:fabric>,<thaumcraft:ingot:2>,<thaumcraft:fabric>],
[<ore:cordagePlant>,null,<ore:cordagePlant>],
[<thaumcraft:thaumometer>,<thaumcraft:ingot:2>,<thaumcraft:thaumometer>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:goggles2","UNLOCKARTIFICE",40,
[<aspect:ignis>],
<thaumcraft:goggles>,[
[<botania:manaresource:22>,<thaumcraft:ingot:2>,<botania:manaresource:22>],
[<ore:cordagePlant>,null,<ore:cordagePlant>],
[<thaumcraft:thaumometer>,<thaumcraft:ingot:2>,<thaumcraft:thaumometer>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:filter","ESSENTIASMELTER",20,
[<aspect:aqua>],
<thaumcraft:filter>*2,[
[null,<thaumcraft:plank_silverwood>,null],
[<thermalfoundation:material:33>,<contenttweaker:mana_mesh>,<thermalfoundation:material:33>],
[null,<thaumcraft:plank_silverwood>,null]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:metal_alchemical","TUBE",80,
[<aspect:aer>,<aspect:aqua>,<aspect:ordo>],
<thaumcraft:metal_alchemical>,[
[<ore:plateIron>,<thaumcraft:tube_oneway>,<ore:plateIron>],
[<thaumcraft:tube_valve>,<botania:livingwood:5>,<thaumcraft:tube_filter>],
[<ore:plateIron>,<thaumcraft:tube_restrict>,<ore:plateIron>]]);

ArcaneWorkbench.registerShapedRecipe(
"planarartifice:alchemical_alkimium_construct","ALKIMIUMAPPLICATIONS",120,
[<aspect:aer>,<aspect:aqua>,<aspect:perditio>],
<planarartifice:alchemical_alkimium_construct>,[
[<planarartifice:alkimium_plate>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}),<planarartifice:alkimium_plate>],
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "instrumentum"}]}),<thaumcraft:metal_alchemical>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "permutatio"}]})],
[<planarartifice:alkimium_plate>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "machina"}]}),<planarartifice:alkimium_plate>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:caster_basic","[#]408125240",100,
[<aspect:aer>,<aspect:aqua>,<aspect:ignis>,<aspect:terra>,<aspect:ordo>,<aspect:perditio>],
<thaumcraft:caster_basic>,[
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
[<thaumcraft:fabric>,<thaumcraft:vis_resonator>,<thaumcraft:fabric>],
[<thaumcraft:fabric>,<thaumcraft:thaumometer>,<thaumcraft:fabric>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:caster_basic2","[#]408125240",100,
[<aspect:aer>,<aspect:aqua>,<aspect:ignis>,<aspect:terra>,<aspect:ordo>,<aspect:perditio>],
<thaumcraft:caster_basic>,[
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
[<botania:manaresource:22>,<thaumcraft:vis_resonator>,<botania:manaresource:22>],
[<botania:manaresource:22>,<thaumcraft:thaumometer>,<botania:manaresource:22>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:vis_resonator","[#]408125240",30,
[<aspect:aer>,<aspect:ordo>],
<thaumcraft:vis_resonator>,[
[null, <primal:iron_ring>, null], 
[<primal:iron_ring>, <astralsorcery:itemcraftingcomponent:3>, <primal:iron_ring>], 
[null, <primal:iron_ring>, null]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:thaumometer","FIRSTSTEPS",100,
[<aspect:aer>,<aspect:aqua>,<aspect:ignis>,<aspect:terra>,<aspect:ordo>,<aspect:perditio>],
<thaumcraft:thaumometer>,[
[null, <ore:plateGold>, null], 
[<ore:plateGold>, <astralsorcery:itemcraftingcomponent:3>, <ore:plateGold>], 
[null, <ore:plateGold>, null]]);

ArcaneWorkbench.registerShapedRecipe(
"astralsorcery:itemcraftingcomponent:3","FIRSTSTEPS",20,
[<aspect:ordo>],
<astralsorcery:itemcraftingcomponent:3>,[
[null, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitreus"}]}), null], 
[null, <ore:paneGlassColorless>, null], 
[null, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitreus"}]}), null]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:recharge_pedestal","RECHARGEPEDESTAL",100,
[<aspect:aer>,<aspect:ordo>],
<thaumcraft:recharge_pedestal>,[
[null, <thaumcraft:vis_resonator>, null], 
[<minecraft:diamond>, <thermalfoundation:material:33>, <minecraft:diamond>], 
[<thaumcraft:stairs_arcane_brick>, <astralsorcery:itemrockcrystalsimple>, <thaumcraft:stairs_arcane_brick>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:smelter_basic","ESSENTIASMELTER",50,
[<aspect:aer>,<aspect:ignis>,<aspect:ordo>],
<thaumcraft:smelter_basic>,[
[<thaumcraft:plate>, <thaumcraft:crucible>, <thaumcraft:plate>], 
[<ore:plateIron>, <primal:smelter:3>.withTag({type: "adobe"}), <ore:plateIron>], 
[<ore:plateIron>, <primal:obsidian_plate>, <ore:plateIron>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:jar_normal","WARDEDJARS",10,
[<aspect:aer>],
<thaumcraft:jar_normal>,[
[<ore:paneGlass>, <thaumcraft:slab_greatwood>, <ore:paneGlass>], 
[<ore:paneGlass>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}), <ore:paneGlass>], 
[<ore:paneGlass>, <primal:obsidian_plate>, <ore:paneGlass>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:infusion_matrix","INFUSION",514,
[<aspect:aer>,<aspect:aqua>,<aspect:ignis>,<aspect:terra>,<aspect:ordo>,<aspect:perditio>],
<thaumcraft:infusion_matrix>,[
[<chisel:energizedvoidstone:4>, <botania:rune>, <chisel:energizedvoidstone:4>], 
[<botania:rune:3>, <thaumcraft:nitor_magenta>, <botania:rune:1>], 
[<chisel:energizedvoidstone:4>, <botania:rune:2>, <chisel:energizedvoidstone:4>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:arcane_workbench_charger","WORKBENCHCHARGER",150,
[<aspect:aer>,<aspect:aqua>,<aspect:ignis>,<aspect:terra>,<aspect:ordo>,<aspect:perditio>],
<thaumcraft:arcane_workbench_charger>,[
[null, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "auram"}]}), null], 
[<botania:manaresource:3>, <thaumcraft:vis_resonator>, <botania:manaresource:3>], 
[<thaumcraft:plank_greatwood>, <thaumcraft:salis_mundus>, <thaumcraft:plank_greatwood>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:dioptra","DIOPTRA",50,
[<aspect:aer>,<aspect:aqua>,<aspect:ignis>],
<thaumcraft:dioptra>,[
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "auram"}]}), <contenttweaker:magical_projector>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]})], 
[<thaumcraft:stone_arcane>, <thaumcraft:thaumometer>, <thaumcraft:stone_arcane>], 
[<ore:plateIron>, <thaumcraft:slab_arcane_stone>, <ore:plateIron>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:essentia_input","ESSENTIATRANSPORT",120,
[<aspect:aer>,<aspect:ordo>],
<thaumcraft:essentia_input>,[
[null, <minecraft:dispenser>, null], 
[<thaumcraft:plate>, <planarartifice:alchemical_alkimium_construct>, <thaumcraft:plate>], 
[<ore:plateIron>, <thaumcraft:tube_filter>, <ore:plateIron>]]);

ArcaneWorkbench.registerShapedRecipe(
"thaumcraft:essentia_output","ESSENTIATRANSPORT",120,
[<aspect:aqua>,<aspect:perditio>],
<thaumcraft:essentia_output>,[
[null, <minecraft:hopper>, null], 
[<thaumcraft:plate>, <planarartifice:alchemical_alkimium_construct>, <thaumcraft:plate>], 
[<ore:plateIron>, <thaumcraft:tube_filter>, <ore:plateIron>]]);

ArcaneWorkbench.registerShapedRecipe(
"botania:pylon","FIRSTSTEPS",100,
[<aspect:aer>],
<botania:pylon>,[
[null, <botania:manaresource>, null], 
[<thermalfoundation:material:33>, <botania:manaresource:2>, <thermalfoundation:material:33>], 
[null, <thaumcraft:nitor_lightblue>, null]]);

ArcaneWorkbench.registerShapedRecipe(
"bloodmagic_alchemy_table","FIRSTSTEPS",400,
[<aspect:ordo>,<aspect:aqua>,<aspect:ignis>],
<bloodmagic:alchemy_table>,[
[<minecraft:glass_bottle>, null, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "alkimia"}]})], 
[<thaumcraft:banner_red>.withTag({aspect: "lux"}), <minecraft:brewing_stand>, <thaumcraft:banner_red>.withTag({aspect: "lux"})], 
[<thaumcraft:table_stone>, <contenttweaker:effulgent_crystal>, <thaumcraft:table_stone>]]);

ArcaneWorkbench.registerShapedRecipe(
"IC2_machineblock","FIRSTSTEPS",100,
[<aspect:ordo>,<aspect:terra>,<aspect:ignis>],
<ic2:resource:12>,[
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
[<primal:iron_pin>, <thaumcraft:mechanism_complex>, <primal:iron_pin>], 
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

ArcaneWorkbench.registerShapedRecipe(
"planarartifice:teleporter_matrix","INFUSION",30,
[<aspect:aer>,<aspect:aqua>,<aspect:ignis>,<aspect:terra>,<aspect:ordo>,<aspect:perditio>],
<planarartifice:teleporter_matrix>*2,[
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Spatio"}]}),<thaumcraft:mirrored_glass>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Spatio"}]})],
[<thaumcraft:mirrored_glass>,<thaumcraft:infusion_matrix>,<thaumcraft:mirrored_glass>],
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Spatio"}]}),<thaumcraft:mirrored_glass>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Spatio"}]})]]);


<toughasnails:ice_cube>.setAspects(<aspect:gelum>*2);
<astralsorcery:itemusabledust>.setAspects(<aspect:lux>*5);