#priority 100
import crafttweaker.item.IItemStack;
import mods.astralsorcery.LightTransmutation.addTransmutation;
import mods.astralsorcery.Altar.addDiscoveryAltarRecipe;
import mods.astralsorcery.Altar.addAttunmentAltarRecipe;
import mods.astralsorcery.Altar.addConstellationAltarRecipe;
import mods.astralsorcery.Altar.addTraitAltarRecipe;
import mods.astralsorcery.StarlightInfusion;

recipes.addShaped(<botania:pool:2>, 
[[<botania:livingrock:4>, null, <botania:livingrock:4>], 
[<botania:livingrock:4>, <botania:livingrock:4>, <botania:livingrock:4>]]);

recipes.addShaped(<botania:spreader>, 
[[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>], 
[<botania:manaresource:3>, <astralsorcery:itemusabledust>, <botania:petal:5>], 
[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]]);

recipes.addShaped(<astralsorcery:itemjournal>, 
[[<ore:paper>, <astralsorcery:itemusabledust:1>, <ore:paper>], 
[<ore:paper>, <astralsorcery:itemwand>.reuse(), <ore:paper>], 
[<ore:paper>, <astralsorcery:itemusabledust:1>, <ore:paper>]]);

recipes.addShaped(<astralsorcery:blockblackmarble> * 4, 
[[null, <ore:stoneMarble>, null], 
[<ore:stoneMarble>, <ore:dustCoal>, <ore:stoneMarble>], 
[null, <ore:stoneMarble>, null]]);

recipes.addShaped(<contenttweaker:unc_wand>, 
[[null, null, <astralsorcery:itemusabledust>], 
[<ore:pinWood>, <ore:stickIron>, <forestry:propolis:1>], 
[<ore:stickIron>, null, null]]);

recipes.addShaped(<astralsorcery:blockaltar>, 
[[<chisel:marble1:6>, <astralsorcery:blockblackmarble>, <chisel:marble1:6>], 
[<astralsorcery:itemusabledust>, <minecraft:crafting_table>, <astralsorcery:itemusabledust>], 
[<ore:slabWood>, <astralsorcery:itemwand>.reuse(), <ore:slabWood>]]);

recipes.addShapeless(<astralsorcery:itemcraftingcomponent:2>, [<primal:iron_gallagher>.anyDamage().transformDamage(5), <ore:oreAstralStarmetal>]);


addTransmutation(<astralsorcery:blockcustomore>,<astralsorcery:blockcustomore:1>,200);
addTransmutation(<thaumcraft:sapling_greatwood>,<thaumcraft:sapling_silverwood>,1000);
addTransmutation(<rockhounding_chemistry:fluid.virgin_water>,<contenttweaker:normal_saline>,1000);
addTransmutation(<biomesoplenty:dirt:2>,<minecraft:dirt>,200);
addTransmutation(<appliedenergistics2:quartz_glass>,<advancedrocketry:blocklens>,5000);

addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/blockworldilluminator",<astralsorcery:blockworldilluminator>,300,200,[
	<contenttweaker:effulgent_crystal>, <thaumcraft:nitor_yellow>, <contenttweaker:effulgent_crystal>,
	<thaumcraft:nitor_yellow>, <ic2:plate:11>, <thaumcraft:nitor_yellow>, 
	<contenttweaker:effulgent_crystal>, <thaumcraft:nitor_yellow>, <contenttweaker:effulgent_crystal>]);

addDiscoveryAltarRecipe("astralsorcery:shaped/botania:runealtar",<botania:runealtar>,300,60,[
    <astralsorcery:itemusabledust>, <botania:dye:15>, <astralsorcery:itemusabledust>,
	<botania:livingrock:4>, <contenttweaker:mana_crystal>, <botania:livingrock:4>,
	<botania:livingrock1stairs>, <botania:livingrock0wall>, <botania:livingrock1stairs>]);

addDiscoveryAltarRecipe("astralsorcery:shaped/botania:livingwood:5",<botania:livingwood:5>*2,300,100,[
    null, <botania:livingwood>, null,
	<botania:livingwood>, <thaumcraft:nitor_lime>, <botania:livingwood>,
	null, <botania:livingwood>, null]);

addDiscoveryAltarRecipe("astralsorcery:shaped/chisel:chisel_diamond",<chisel:chisel_diamond>,400,200,[
    null, null, <primal:diamond_plate>,
	null, <primal:diamond_plate>, null,
	<astralsorcery:blockinfusedwood:1>, null, null]);

addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/itemglasslens",<astralsorcery:itemcraftingcomponent:3>,100,40,[
    null,<primal_tech:rock>,null,
	<minecraft:glass_pane>,<astralsorcery:itemcraftingcomponent>,<minecraft:glass_pane>,
	null,<primal:flint_point>,null]);

addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/itemhandtelescope",<astralsorcery:itemhandtelescope>,200,80,[
    null,<primal:copper_strand>,<astralsorcery:itemcraftingcomponent:3>,
	<astralsorcery:blockinfusedwood:3>,null,<primal:copper_strand>,
	<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockinfusedwood:3>,null]);

addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/blockattunementrelay",<astralsorcery:blockattunementrelay>,100,50,[
    <primal_tech:rock>,null,<primal:flint_point>,
	<primal:copper_strand>,<astralsorcery:itemcraftingcomponent:3>,<primal:copper_strand>,
	<astralsorcery:blockinfusedwood:4>,<astralsorcery:blockmarble:5>,<astralsorcery:blockinfusedwood:4>]);

addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/nocturnalpowder",<astralsorcery:itemusabledust:1>*4,200,60,[
    null,<ore:dyeBlack>,null,
	<ore:dustCoal>,<astralsorcery:itemusabledust>,<ore:dustCoal>,
	null,<ore:dyeBlue>,null]);

addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/upgrage_tier2",<astralsorcery:blockaltar:1>,700,300,[
    <botania:rune>,<astralsorcery:blockattunementrelay>,<botania:rune:1>,
	<astralsorcery:itemusabledust>,<contenttweaker:corner_upgrade>,<astralsorcery:itemusabledust:1>,
	<botania:rune:3>,<astralsorcery:blockmarble:4>,<botania:rune:2>]);

addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/itemskyresonator",<astralsorcery:itemskyresonator>.withTag({astralsorcery: {}}),300,100,[
    null,<botania:manaresource:23>,null,
	null,<astralsorcery:itemrockcrystalsimple>,null,
	<astralsorcery:blockmarble:5>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockmarble:5>]);

addDiscoveryAltarRecipe("astralsorcery:shaped/thaumcraft:celestial_notes:4",<thaumcraft:celestial_notes:4>,200,30,[
    null,null,null,
	<astralsorcery:itemusabledust>,<astralsorcery:itemusabledust:1>,<contenttweaker:empty_celestial_note>,
	null,null,null]);

addDiscoveryAltarRecipe("astralsorcery:shaped/thaumcraft:celestial_notes:2",<thaumcraft:celestial_notes:2>,200,30,[
    null,<contenttweaker:empty_celestial_note>,null,
	null,<astralsorcery:itemusabledust:1>,null,
	null,<astralsorcery:itemusabledust>,null]);

addDiscoveryAltarRecipe("astralsorcery:shaped/thaumcraft:celestial_notes:3",<thaumcraft:celestial_notes:3>,200,30,[
    null,null,null,
	<contenttweaker:empty_celestial_note>,<astralsorcery:itemusabledust:1>,<astralsorcery:itemusabledust>,
	null,null,null]);

addDiscoveryAltarRecipe("astralsorcery:shaped/thaumcraft:celestial_notes:1",<thaumcraft:celestial_notes:1>,200,30,[
    null,<astralsorcery:itemusabledust>,null,
	null,<astralsorcery:itemusabledust:1>,null,
	null,<contenttweaker:empty_celestial_note>,null]);

addDiscoveryAltarRecipe("astralsorcery:shaped/minecraft:glowstone_dust",<minecraft:glowstone_dust>,100,30,[
    null,<astralsorcery:itemusabledust>,null,
	<astralsorcery:itemusabledust>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),<astralsorcery:itemusabledust>,
	null,<astralsorcery:itemusabledust>,null]);

//星辉祭坛
addAttunmentAltarRecipe("astralsorcery:shaped/internal/altar/blockcustomore",<astralsorcery:blockcustomore>,1200,300,[
    <minecraft:stone>,<contenttweaker:charged_mesh>,<minecraft:stone>,
	<geolosys:cluster>,<contenttweaker:crystal_nucleus>,<geolosys:cluster>,
	<minecraft:stone>,<contenttweaker:charged_mesh>,<minecraft:stone>,
	<botania:manaresource:23>,<astralsorcery:itemusabledust>,<botania:manaresource:23>,<astralsorcery:itemusabledust>]);

addAttunmentAltarRecipe("astralsorcery:shaped/botania:pool",<botania:pool>,1200,100,[
    <astralsorcery:itemrockcrystalsimple>,null,<astralsorcery:itemrockcrystalsimple>,
	<botania:pool:2>,<contenttweaker:mana_crystal>,<botania:pool:2>,
	<botania:livingrock:4>,<botania:pool:2>,<botania:livingrock:4>,
	<botania:rune:2>,<botania:rune:3>,<botania:manaresource:23>,<botania:manaresource:23>]);

addAttunmentAltarRecipe("astralsorcery:shaped/internal/altar/blockaltar:2",<astralsorcery:blockaltar:2>,1800,600,[
    <astralsorcery:blockmarble:4>,<contenttweaker:magical_projector>,<astralsorcery:blockmarble:4>,
	<astralsorcery:itemcraftingcomponent:1>,<contenttweaker:wing_upgrade>,<astralsorcery:itemcraftingcomponent:1>,
	<astralsorcery:itemcraftingcomponent>,<planarartifice:alchemical_alkimium_construct>,<astralsorcery:itemcraftingcomponent>,
	<botania:rune:4>,<botania:rune:5>,<botania:rune:7>,<botania:rune:6>]);

addAttunmentAltarRecipe("astralsorcery:shaped/botania:alfheimportal",<botania:alfheimportal>,1800,600,[
    <astralsorcery:blockinfusedwood:6>,<botania:manaresource:18>,<botania:livingwood>,
	<thaumcraft:log_greatwood>,<botania:manaresource:1>,<thaumcraft:log_greatwood>,
	<botania:livingwood>,<botania:manaresource:18>,<astralsorcery:blockinfusedwood:6>,
	<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "permutatio"}]}),<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "Spatio"}]}),<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "lux"}]}),<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "Tempus"}]})]);

addAttunmentAltarRecipe("astralsorcery:shaped/botania:brewery",<botania:brewery>,1800,400,[
    null,<contenttweaker:empty_manarune>,null,
	<contenttweaker:empty_manarune>,<contenttweaker:effulgent_crystal>,<contenttweaker:empty_manarune>,
	<astralsorcery:itemcraftingcomponent:2>,<botania:rune:8>,<botania:manaresource:23>,
	<contenttweaker:empty_manarune>,<contenttweaker:empty_manarune>,<contenttweaker:empty_manarune>,<contenttweaker:empty_manarune>]);

//天辉祭坛
addConstellationAltarRecipe("astralsorcery:shaped/thaumcraft:smelter_thaumium",<thaumcraft:smelter_thaumium>,2000,300,[
	<planarartifice:alkimium_plate>,<thaumcraft:filter>,<planarartifice:alkimium_plate>,
	<thaumcraft:jar_brace>,<thaumcraft:smelter_basic>,<thaumcraft:jar_brace>,
	<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "ignis"}]}),<thaumcraft:metal_alchemical>,<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "alkimia"}]}),
	null,null,<thaumcraft:plate:2>,<thaumcraft:plate:2>,
    <thaumcraft:plate>,<thaumcraft:plate>,<thaumcraft:plate>,<thaumcraft:plate>,
    <thaumcraft:plate:2>,<thaumcraft:plate:2>,<thaumcraft:ingot>,<thaumcraft:ingot>
]);

addConstellationAltarRecipe("astralsorcery:shaped/attunmentaltar",<astralsorcery:blockattunementaltar>,2200,600,[
    <astralsorcery:blockblackmarble:5>,<astralsorcery:itemrockcrystalsimple>,<astralsorcery:blockblackmarble:5>,
    <astralsorcery:itemcraftingcomponent:1>,<contenttweaker:magical_projector>,<astralsorcery:itemcraftingcomponent:1>,
    <astralsorcery:blockmarblestairs>,<botania:runealtar>,<astralsorcery:blockmarblestairs>,
    <ic2:plate:2>,<ic2:plate:2>,null,null,
    <astralsorcery:blockattunementrelay>,<astralsorcery:blockattunementrelay>,<astralsorcery:itemcraftingcomponent>,<astralsorcery:itemcraftingcomponent>,
	<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>
]);

addConstellationAltarRecipe("astralsorcery:shaped/botania:rune:10",<botania:rune:10>,2500,200,[
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}),<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas"}}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}),
    <harvestcraft:seedenergygelitem>,<contenttweaker:saligia_rune>,<harvestcraft:carrotcakeitem>,
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "bestia"}]}),<thaumcraft:hungry_chest>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}),
    null,null,null,null,
    <astralsorcery:itemusabledust:1>,null,<astralsorcery:itemusabledust:1>,<astralsorcery:itemusabledust:1>,
    <astralsorcery:itemusabledust:1>,null,null,null
]);

addConstellationAltarRecipe("astralsorcery:shaped/botania:rune:9",<botania:rune:9>,2500,200,[
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}),<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.bootes"}}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}),
	<minecraft:lead>,<contenttweaker:saligia_rune>,<botania:tinypotato>,
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "bestia"}]}),<thaumcraft:brain>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "cognitio"}]}),
	null,null,null,null,
	<astralsorcery:itemusabledust:1>,null,null,null,
	null,null,<astralsorcery:itemusabledust:1>,<astralsorcery:itemusabledust:1>
]);

addConstellationAltarRecipe("astralsorcery:shaped/botania:rune:11",<botania:rune:11>,2500,200,[
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "desiderium"}]}),<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.mineralis"}}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "humanus"}]}),
	<minecraft:gold_ingot>,<contenttweaker:saligia_rune>,<minecraft:diamond>,
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "humanus"}]}),<astralsorcery:itemcraftingcomponent>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "desiderium"}]}),
	null,null,null,null,
	null,<astralsorcery:itemusabledust:1>,null,null,
	<astralsorcery:itemusabledust:1>,<astralsorcery:itemusabledust:1>,null,<astralsorcery:itemusabledust:1>
]);

addConstellationAltarRecipe("astralsorcery:shaped/botania:rune:12",<botania:rune:12>,2500,200,[
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vinculum"}]}),<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.armara"}}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}),
	<ore:bed>,<contenttweaker:saligia_rune>,<minecraft:web>,
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "spiritus"}]}),<thaumcraft:amber_block>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vinculum"}]}),
	null,null,null,null,
	null,null,null,<astralsorcery:itemusabledust:1>,
	<astralsorcery:itemusabledust:1>,<astralsorcery:itemusabledust:1>,null,null
]);

addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/blockstarlightinfuser",<astralsorcery:blockstarlightinfuser>,3600,400,[
	<astralsorcery:itemcraftingcomponent>,<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}}),<astralsorcery:itemcraftingcomponent>,
	<astralsorcery:blockblackmarble:2>,<thaumcraft:essentia_output>,<astralsorcery:blockblackmarble:2>,
	<thaumcraft:nitor_white>,<astralsorcery:itemcraftingcomponent:1>,<thaumcraft:nitor_white>,
	<thermalfoundation:material:33>,<thermalfoundation:material:33>,<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>,
	<thaumcraft:plate>,<thaumcraft:plate>,<minecraft:quartz_block>,<minecraft:quartz_block>,
	<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:4>,<astralsorcery:blockmarble:4>
]);

addConstellationAltarRecipe("astralsorcery:shaped/botania:terraplate",<botania:terraplate>,2500,500,[
	<botanicadds:mana_lapis>,<contenttweaker:infused_crystal>,<botanicadds:mana_lapis>,
	<botania:rune:2>,<planarartifice:alkimium_plate>,<botania:rune:11>,
	<botanicadds:mana_lapis>,<botania:rune:8>,<botanicadds:mana_lapis>,
	<chisel:lapis:2>,<chisel:lapis:2>,null,null,
	<chisel:lapis:2>,<chisel:lapis:2>,<bloodmagic:slate:1>,<bloodmagic:slate:1>,
	<bloodmagic:slate:1>,<bloodmagic:slate:1>,null,null
]);

addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/blockaltar:3",<astralsorcery:blockaltar:3>,3800,1200,[
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Tinctura"}]}),<contenttweaker:effulgent_crystal>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Tinctura"}]}),
	<botania:manaresource:4>,<contenttweaker:edge_upgrade>,<thaumcraft:ingot:1>,
	<astralsorcery:itemcelestialcrystal>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcelestialcrystal>,
	<botania:rune:9>,<botania:rune:10>,<botania:rune:11>,<botania:rune:12>,
	<astralsorcery:itemcoloredlens:6>,<astralsorcery:itemcoloredlens:6>,<astralsorcery:itemusabledust:1>,<astralsorcery:itemusabledust:1>,
	<bloodmagic:blood_rune>,<bloodmagic:blood_rune>,<astralsorcery:blockblackmarble:4>,<astralsorcery:blockblackmarble:4>
]);

//五彩祭坛
addTraitAltarRecipe("astralsorcery:shaped/bloodmagic:ritual_controller",<bloodmagic:ritual_controller>, 4500, 600, [
    <liquid:lifeessence>, <botania:lens:14>, <liquid:lifeessence>,
	<thaumcraft:crystal_vitium>, <thaumcraft:infusion_matrix>, <astralsorcery:itemperkgem:1>, 
	<liquid:lifeessence>, <bloodmagic:blood_shard>, <liquid:lifeessence>, 
    null, null, null,null,
    <bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>, 
    <bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>, <bloodmagic:ritual_stone>,
	<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,
    <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>, <bloodmagic:item_demon_crystal>
],
"astralsorcery.constellation.vicio");

addTraitAltarRecipe("astralsorcery:shaped/botania:rune:14",<botania:rune:14>, 4000, 200, [
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "desiderium"}]}), <astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {trait: "astralsorcery.constellation.ulteria"}}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sensus"}]}),
	<botania:thirdeye>, <contenttweaker:saligia_rune>, <minecraft:spider_eye>, 
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sensus"}]}), <minecraft:diamond>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}), 
    null, null, null,null,
    null, null, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>, 
    null, null, null, null,
	null,null,null,<astralsorcery:itemusabledust:1>,
    <bloodmagic:item_demon_crystal:3>
],
"astralsorcery.constellation.evorsio");

addTraitAltarRecipe("astralsorcery:shaped/botania:rune:13",<botania:rune:13>, 4200, 200, [
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "mortuus"}]}), <astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {trait: "astralsorcery.constellation.vorux"}}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aversio"}]}),
	<bloodmagic:cutting_fluid:1>.withTag({}), <contenttweaker:saligia_rune>, <minecraft:blaze_powder>, 
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aversio"}]}), <astralsorcery:itemcoloredlens:3>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "mortuus"}]}), 
    <astralsorcery:itemusabledust:1>, null, null,null,
    <astralsorcery:itemusabledust:1>, null, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>, 
    null, null, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>,
	null,null,null,null,
    <bloodmagic:item_demon_crystal:1>
],
"astralsorcery.constellation.discidia");

addTraitAltarRecipe("astralsorcery:shaped/botania:rune:15",<botania:rune:15>, 4400, 200, [
    <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}), <astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: {trait: "astralsorcery.constellation.gelu"}}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]}),
	<bloodmagic:component:4>, <contenttweaker:saligia_rune>, <botania:starfield>, 
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]}), <thaumcraft:void_seed>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}), 
    null, null, null,null,
    <astralsorcery:itemusabledust:1>, null, null, null, 
    null, null, <astralsorcery:itemusabledust:1>, null,
	null,null,null,null,
    <bloodmagic:item_demon_crystal:2>
],
"astralsorcery.constellation.vicio");

addTraitAltarRecipe("astralsorcery:shaped/modularmachinery:blockcasing",<modularmachinery:blockcasing>*4, 2500, 100, [
    null, <thaumcraft:plate>, null,
	<thaumcraft:plate>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "Tinctura"}]}), <thaumcraft:plate>, 
	null, <thaumcraft:plate>, null, 
    null, null, null,null,
    null, null, null, null, 
    null, null, null, null,
	<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>
],
"astralsorcery.constellation.vicio");

addTraitAltarRecipe("astralsorcery:shaped/immersiveengineering:stone_decoration:10",<immersiveengineering:stone_decoration:10>*8, 3000, 100, [
    <minecraft:brick>, <forestry:ash_brick>, <minecraft:brick>,
	<forestry:ash_brick>, <ore:smelter>, <forestry:ash_brick>, 
	<minecraft:brick>, <forestry:ash_brick>, <minecraft:brick>, 
    <minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>,
    <primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>,<primal:adobe_brick_dry>,
    <primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>, 
	<primal:adobe_brick>,<primal:adobe_brick>,<primal:adobe_brick>,<primal:adobe_brick>,
	<primal:mortar>,<primal:mortar>,<primal:mortar>,<primal:mortar>
],
"astralsorcery.constellation.fornax");

addTraitAltarRecipe("astralsorcery:shaped/immersiveengineering:stone_decoration:2",<immersiveengineering:stone_decoration:2>*27, 3000, 400, [
    <minecraft:netherbrick>, <minecraft:blaze_powder>, <minecraft:netherbrick>,
	<minecraft:blaze_powder>, <ore:smelter>, <minecraft:blaze_powder>, 
	<minecraft:netherbrick>, <minecraft:blaze_powder>, <minecraft:netherbrick>, 
    null, null, null, null,
    <ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>,
    <ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>, 
	<minecraft:nether_brick>,<minecraft:nether_brick>,<minecraft:nether_brick>,<minecraft:nether_brick>,
	<thermalfoundation:storage_alloy>,<thermalfoundation:storage_alloy>,<thermalfoundation:storage_alloy>,<primal:mortar>
],
"astralsorcery.constellation.fornax");

addTraitAltarRecipe("astralsorcery:shaped/contenttweaker:magical_projector",<contenttweaker:magical_projector>, 3000, 100, [
    null, <astralsorcery:itemcraftingcomponent:3>, null,
	null, <contenttweaker:effulgent_crystal>, null, 
	null, <minecraft:gold_ingot>, null, 
    null, null, null, null,
    null, null, null, null,
    null, null, null, null, 
	null,null,null,null
],
"astralsorcery.constellation.lucerna");

addTraitAltarRecipe("astralsorcery:shaped/internal/altar/blockobservatory",<astralsorcery:blockobservatory>, 4400, 400, [
    null, <astralsorcery:blockmarble:2>, <astralsorcery:itemcoloredlens:6>,
	<thaumcraft:mechanism_complex>, <astralsorcery:iteminfusedglass>, <astralsorcery:blockmarble:2>, 
	<thaumcraft:plate:3>, <contenttweaker:magical_projector>, null, 
    null, <astralsorcery:iteminfusedglass>, <botania:quartzstairsdark>, <thaumcraft:metal_brass>,
    null, <thaumcraft:plate>, <astralsorcery:itemcraftingcomponent:4>, <thaumcraft:plate>,
    <jaopca:item_stickgold>, <astralsorcery:blockinfusedwood:6>, <botania:quartzslabdarkhalf>, <thaumcraft:metal_brass>, 
	null,<jaopca:item_stickgold>,null,<astralsorcery:blockblackmarble:6>
],
"astralsorcery.constellation.lucerna");

addTraitAltarRecipe("astralsorcery:shaped/immersivetech:stone_decoration",<immersivetech:stone_decoration>*9, 2000, 200, [
    <actuallyadditions:item_dust:5>, <primal:carbonate_slack>, <actuallyadditions:item_dust:5>,
	<primal:carbonate_slack>, <ic2:purified:2>, <primal:carbonate_slack>, 
	<actuallyadditions:item_dust:5>, <primal:carbonate_slack>, <actuallyadditions:item_dust:5>, 
    <ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>,
    <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>,
    <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>, 
	<actuallyadditions:item_dust:5>, <actuallyadditions:item_dust:5>, <actuallyadditions:item_dust:5>, <actuallyadditions:item_dust:5>,
	<thermalfoundation:storage_alloy>,<primal:mortar>
],
"astralsorcery.constellation.fornax");

addTraitAltarRecipe("astralsorcery:shaped/thaumcraft:matrix_cost",<thaumcraft:matrix_cost>, 4500, 500, [
    <thaumcraft:mirrored_glass>, <thaumcraft:alumentum>, <thaumcraft:mirrored_glass>,
	<thaumcraft:nugget:8>, <thaumcraft:paving_stone_barrier>, <thaumcraft:nugget:8>, 
	<thaumcraft:mirrored_glass>, <thaumcraft:alumentum>, <thaumcraft:mirrored_glass>, 
    null, null, null, null,
    null, null, null, null,
    null, null, null, null, 
	<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>
],
"astralsorcery.constellation.aevitas");

addTraitAltarRecipe("astralsorcery:shaped/thaumcraft:matrix_speed",<thaumcraft:matrix_speed>, 4500, 500, [
    <thaumcraft:mirrored_glass>, <ore:nitor>, <thaumcraft:mirrored_glass>,
	<thaumcraft:nugget:5>, <thaumcraft:paving_stone_travel>, <thaumcraft:nugget:5>, 
	<thaumcraft:mirrored_glass>, <ore:nitor>, <thaumcraft:mirrored_glass>, 
    null, null, null, null,
    null, null, null, null,
    null, null, null, null, 
	<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>
],
"astralsorcery.constellation.aevitas");

addTraitAltarRecipe("astralsorcery:shaped/nuclearcraft:decay_generator",<nuclearcraft:decay_generator>, 4500, 800, [
    null, <rockhounding_chemistry:misc_items:11>, null,
	<thaumcraft:ingot:1>, <nuclearcraft:part:10>, <extrautils2:ingredients>, 
	null, <bloodmagic:component:18>, null, 
    null, null, null, null,
    null, null, null, null,
    null, null, null, null,
    null, null, null, null
],
"astralsorcery.constellation.horologium");