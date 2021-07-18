#priority 1000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI.hideCategory;
import mods.jei.JEI;

//移除合成
val removeByOutput as IIngredient[]=[
	<actuallyadditions:block_greenhouse_glass>,
	<actuallyadditions:block_misc:5>,
	<appliedenergistics2:grindstone>,
	<astralsorcery:blockaltar>,
	<astralsorcery:blockblackmarble>,
	<astralsorcery:blockinfusedwood:2>,
	<astralsorcery:itemjournal>,
	<astralsorcery:itemwand>,
	<backpack:stick>,
	<backpack:stick:1>,
	<bigreactors:blockmetals:5>,
	<bigreactors:turbinehousing>,
	<bigreactors:turbinebearing>,
	<bigreactors:turbinerotorblade>,
	<bigreactors:turbinerotorshaft>,
	<bloodmagic:alchemy_table>,
	<bloodmagic:altar>,
	<bloodmagic:blood_rune:*>,
	<bloodmagic:decorative_brick>,
	<bloodmagic:demon_crucible>,
	<bloodmagic:demon_crystallizer>,
	<bloodmagic:ritual_controller>,
	<bloodmagic:ritual_controller:1>,
	<bloodmagic:sacrificial_dagger>,
	<bloodmagic:soul_forge>,
	<bloodmagic:soul_snare>,
	<bloodmagic:teleposer>,
	<botania:alchemycatalyst>,
	<botania:alfheimportal>,
	<botania:altar>,
	<botania:brewery>,
	<botania:conjurationcatalyst>,
	<botania:felpumpkin>,
	<botania:fertilizer>,
	<botania:grassseeds:4>,
	<botania:grassseeds:5>,
	<botania:grassseeds:6>,
	<botania:grassseeds:7>,
	<botania:grassseeds:8>,
	<botania:lens>,
	<botania:lexicon>,
	<botania:livingwood:5>,
	<botania:manaresource:3>,
	<botania:manaresource:18>,
	<botania:pool:2>,
	<botania:pool>,
	<botania:prism>,
	<botania:pylon:*>,
	<botania:runealtar>,
	<botania:spawnerclaw>,
	<botania:spreader>,
	<botania:starfield>,
	<botania:terraplate>,
	<chisel:block_charcoal2:1>,
	<chisel:chisel_diamond>,
	<chisel:chisel_iron>,
	<chisel:voidstone>,
	<compactmachines3:fieldprojector>,
	<compactmachines3:psd>,
	<cookingforblockheads:sink>,
	<enderio:block_enhanced_wireless_charger>,
	<enderio:block_wireless_charger_extension>,
	<enderio:item_material:65>,
	<enderio:item_soul_vial>,
	<enderio:item_travel_staff>,
	<extrautils2:glasscutter>,
	<extrautils2:passivegenerator:*>,
	<extrautils2:powerbattery>,
	<extrautils2:powertransmitter>,
	<extrautils2:wateringcan:1000>,
	<forestry:alveary.fan>,
	<forestry:alveary.heater>,
	<forestry:alveary.hygro>,
	<forestry:alveary.plain>,
	<forestry:alveary.sieve>,
	<forestry:alveary.stabiliser>,
	<forestry:carpenter>,
	<forestry:centrifuge>,
	<forestry:fabricator>,
	<forestry:fermenter>,
	<forestry:loam>,
	<forestry:moistener>,
	<forestry:squeezer>,
	<forestry:still>,
	<forestry:sturdy_machine>,
	<gbook:guidebook>.withTag({Book: "rockhounding_chemistry:xml/chembook.xml"}),
	<gbook:guidebook>.withTag({Book: "rockhounding_chemistry:xml/chemquest.xml"}),
	<genetics:lab_machine:2>,
	<genetics:misc>,
	<guideapi:bloodmagic-guide>,
	<harvestcraft:juiceritem>,
	<ic2:advanced_re_battery:26>,
	<ic2:crafting:1>,
	<ic2:crafting:5>,
	<ic2:crafting:6>,
	<ic2:crafting:8>,
	<ic2:crafting:20>,
	<ic2:crafting:35>,
	<ic2:crafting:36>,
	<ic2:cutter>,
	<ic2:ingot>,
	<ic2:plate:2>,
	<ic2:resource:8>,
	<ic2:resource:12>,
	<ic2:te:3>,
	<ic2:te:5>,
	<ic2:te:15>,
	<ic2:te:27>,
	<ic2:te:33>,
	<ic2:te:43>,
	<ic2:te:44>,
	<ic2:te:45>,
	<ic2:te:47>,
	<ic2:te:51>,
	<ic2:te:55>,
	<ic2:te:78>,
	<ic2:treetap>,
	<immersiveengineering:blueprint>.withTag({blueprint: "components"}),
	<immersiveengineering:material:1>,
	<immersiveengineering:metal:9>,
	<immersiveengineering:metal:18>,
	<immersiveengineering:metal:29>,
	<immersiveengineering:metal_decoration0:3>,
	<immersiveengineering:metal_decoration0:4>,
	<immersiveengineering:metal_decoration0:5>,
	<immersiveengineering:metal_decoration0:6>,
	<immersiveengineering:metal_device1:7>,
	<immersiveengineering:stone_decoration>,
	<immersiveengineering:treated_wood>,
	<immersivetech:stone_decoration>,
	<libvulpes:coil0:4>,
	<libvulpes:productrod:1>,
	<minecraft:beacon>,
	<minecraft:brewing_stand>,
	<minecraft:bookshelf>,
	<minecraft:bucket>,
	<minecraft:cauldron>,
	<minecraft:chest>,
	<minecraft:dispenser>,
	<minecraft:dropper>,
	<minecraft:dye:1>,
	<minecraft:dye:11>,
	<minecraft:ender_eye>,
	<minecraft:furnace>,
	<minecraft:glass>,
	<minecraft:glass_bottle>,
	<minecraft:glass_pane>,
	<minecraft:hopper>,
	<minecraft:iron_bars>,
	<minecraft:iron_ingot>,
	<minecraft:iron_nugget>,
	<minecraft:paper>,
	<minecraft:piston>,
	<minecraft:speckled_melon>,
	<minecraft:stained_glass_pane:*>,
	<minecraft:stone_axe>,
	<minecraft:stone_button>,
	<minecraft:stone_pressure_plate>,
	<minecraft:stone_slab>,
	<minecraft:trapdoor>,
	<minecraft:web>,
	<modularmachinery:blockcasing>,
	<modularmachinery:blockcasing:4>,
	<modularmachinery:blockcontroller>,
	<modularmachinery:blockenergyoutputhatch>,
	<modularmachinery:blockfluidinputhatch>,
	<modularmachinery:blockinputbus>,
	<modularmachinery:itemmodularium>,
	<nuclearcraft:alloy_furnace>,
	<nuclearcraft:assembler>,
	<nuclearcraft:crystallizer>,
	<nuclearcraft:decay_generator>,
	<nuclearcraft:ingot_block:8>,
	<nuclearcraft:melter>,
	<nuclearcraft:part>,
	<nuclearcraft:part:1>,
	<nuclearcraft:part:3>,
	<nuclearcraft:part:7>,
	<nuclearcraft:part:8>,
	<nuclearcraft:part:9>,
	<nuclearcraft:part:10>,
	<nuclearcraft:part:12>,
	<nuclearcraft:rad_shielding:*>,
	<nuclearcraft:solid_fission_controller>,
	<nuclearcraft:supercooler>,
	<nuclearcraft:turbine_controller>,
	<nuclearcraft:turbine_rotor_shaft>,
	<ore:dirt>,
	<ore:plateCopper>,
	<ore:plateIron>,
	<ore:sand>,
	<planarartifice:alkimium_plate>,
	<primal:barrel:*>,
	<primal:cauldron>,
	<primal:cauldron_lid>,
	<primal:common_stone>,
	<primal:common_stone:*>,
	<primal:crude_iron_ingot>,
	<primal:crude_iron_nugget>,
	<primal:crude_iron_plate>,
	<primal:dirt_stick>,
	<primal:hibachi:3>,
	<primal:smelter>,
	<primal:smelter:3>,
	<primal:worktable_shelf:*>,
	<primal:worktable_slab:*>,
	<primal_tech:rock>,
	<primal_tech:stick_bundle>,
	<primal_tech:stone_club>,
	<primal_tech:stone_grill>,
	<primal_tech:work_stump>,
	<qmd:part:10>,
	<rockhounding_chemistry:ingot_pattern>,
	<rockhounding_chemistry:machines_a:2>,
	<rockhounding_chemistry:machines_a:11>,
	<rockhounding_chemistry:machines_a:13>,
	<rockhounding_chemistry:machines_c>,
	<rockhounding_chemistry:machines_d:11>,
	<rockhounding_chemistry:misc_items:1>,
	<rockhounding_chemistry:misc_items:10>,
	<tetra:duplex_tool_modular>,
	<thaumcraft:candle_white>,
	<thaumcraft:flesh_block>,
	<thaumcraft:phial>,
	<thaumcraft:plate>,
	<thaumcraft:plate:2>,
	<thaumcraft:stone_arcane>,
	<thaumcraft:table_stone>,
	<thaumcraft:table_wood>,
	<thaumcraft:thaumium_boots>,
	<thaumcraft:thaumium_chest>,
	<thaumcraft:thaumium_helm>,
	<thaumcraft:thaumium_legs>,
	<thermalfoundation:material:33>,
	<thermalfoundation:material:101>,
	<thermalfoundation:material:656>,
	<thermalfoundation:material:1024>,
	<thermalfoundation:material:1025>,
	<thermalfoundation:storage_alloy>,
	<thermalfoundation:storage_resource>,
	<thermalfoundation:tool.axe_copper>,
	<thermalfoundation:tool.pickaxe_copper>,
	<thermalfoundation:tool.shears_copper>,
	<thermalfoundation:tool.shovel_copper>,
	<thermalfoundation:tool.sword_copper>
];
for item in removeByOutput{recipes.remove(item);}

for item in loadedMods["harvestcraft"].items{if(item.definition.id has "sapling"){recipes.remove(item);}}

recipes.remove(<ore:plateCopper>);
recipes.removeShaped(<minecraft:ice>, [[<toughasnails:ice_cube>, <toughasnails:ice_cube>], [<toughasnails:ice_cube>, <toughasnails:ice_cube>]]);
recipes.removeShaped(<minecraft:rail> * 16, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <ore:stickWood>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
recipes.removeShaped(<immersiveengineering:stone_decoration:2>, [[<ore:plateSteel>], [<immersiveengineering:stone_decoration:1>]]);
recipes.removeShaped(<immersiveengineering:stone_decoration:10> * 2, [[<ore:sandstone>, <minecraft:brick>], [<minecraft:brick>, <ore:sandstone>]]);
recipes.removeShaped(<thaumcraft:plate:3> * 3, [[<thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>]]);
recipes.removeShaped(<immersiveengineering:stone_decoration:1> * 3, [[<minecraft:netherbrick>, <minecraft:brick>, <minecraft:netherbrick>], [<minecraft:brick>, <minecraft:blaze_powder>, <minecraft:brick>], [<minecraft:netherbrick>, <minecraft:brick>, <minecraft:netherbrick>]]);
recipes.removeShaped(<minecraft:stone_slab:3> * 6, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.removeShaped(<minecraft:iron_ingot>, [[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]]);
recipes.removeShaped(<minecraft:crafting_table>, [[<ore:plankOak>, <ore:plankOak>], [<ore:plankOak>, <ore:plankOak>]]);
recipes.removeShaped(<primal_tech:work_stump>, [[<ore:slabWoodOak>], [<ore:logWood>]]);
recipes.removeShaped(<minecraft:flint>, [[null, <minecraft:gravel>], [<minecraft:gravel>, null]]);
recipes.removeShaped(<minecraft:flint>, [[<minecraft:gravel>, <minecraft:gravel>], [<minecraft:gravel>, null]]);
recipes.removeShapeless(<primal_tech:fire_sticks>, [<ore:stickWood>, <primal_tech:bone_knife>]);
recipes.removeShapeless(<minecraft:dye:15> * 3, [<ore:bone>]);
recipes.removeShapeless(<minecraft:flint_and_steel>, [<minecraft:iron_ingot>, <minecraft:flint>]);
recipes.removeShapeless(<ic2:dust:4>, [<ore:oreCopper>], true);
recipes.removeShapeless(<ic2:dust:8>, [<ore:oreIron>], true);
recipes.removeShapeless(<ic2:dust:10>, [<ore:oreLead>], true);
recipes.removeShapeless(<ic2:ingot:3>, [<ore:oreLead>], true);
recipes.removeShapeless(<immersiveengineering:metal:11>, [<ore:oreLead>], true);
recipes.removeShapeless(<ic2:dust:17>, [<ore:oreTin>], true);
recipes.removeShapeless(<ic2:ingot:6>, [<ore:oreTin>], true);
recipes.removeShapeless(<immersiveengineering:metal:12>, [<ore:oreSilver>,<immersiveengineering:tool>], true);
recipes.removeShapeless(<ic2:ingot:8>, [<ore:oreUranium>], true);
recipes.removeShapeless(<immersiveengineering:metal:14>, [<ore:oreUranium>], true);
recipes.removeShapeless(<nuclearcraft:dust:4>, [<ore:oreUranium>], true);
recipes.removeShapeless(<primal:zinc_ingot>, [<ore:oreZinc>], true);
recipes.removeShapeless(<primal:zinc_dust>, [<ore:oreZinc>], true);
recipes.removeShapeless(<nuclearcraft:ingot:5>, [<ore:oreBoron>], true);
recipes.removeShapeless(<nuclearcraft:dust:5>, [<ore:oreBoron>], true);
recipes.removeShapeless(<nuclearcraft:ingot:3>, [<ore:oreThorium>], true);
recipes.removeShapeless(<nuclearcraft:ingot:3>, [<ore:oreThorium>], true);
recipes.removeShapeless(<nuclearcraft:ingot:6>, [<ore:oreLithium>], true);
recipes.removeShapeless(<nuclearcraft:dust:6>, [<ore:oreLithium>], true);
recipes.removeShapeless(<nuclearcraft:ingot:7>, [<ore:oreMagnesium>], true);
recipes.removeShapeless(<nuclearcraft:dust:7>, [<ore:oreMagnesium>], true);
recipes.removeShapeless(<immersiveengineering:metal:19>, [<ore:oreGold>,<immersiveengineering:tool>], true);
recipes.removeShapeless(<thermalfoundation:material:133>, [<ore:oreNickel>], true);
recipes.removeShapeless(<thermalfoundation:material:69>, [<ore:oreNickel>], true);
recipes.removeShapeless(<immersiveengineering:metal:13>, [<ore:oreNickel>], true);
recipes.removeShapeless(<bigreactors:ingotmetals>, [<ore:oreYellorium>], true);
recipes.removeShapeless(<bigreactors:dustmetals>, [<ore:oreYellorium>], true);
recipes.removeShapeless(<thermalfoundation:material:132>, [<ore:oreAluminum>], true);
recipes.removeShapeless(<immersiveengineering:metal:10>, [<ore:oreAluminum>], true);
recipes.removeShapeless(<thermalfoundation:material:68>, [<ore:oreAluminum>], true);
recipes.removeShapeless(<thermalfoundation:material:132>, [<ore:oreAluminium>], true);
recipes.removeShapeless(<immersiveengineering:metal:10>, [<ore:oreAluminium>], true);
recipes.removeShapeless(<thermalfoundation:material:68>, [<ore:oreAluminium>], true);
recipes.removeShapeless(<thermalfoundation:material:70>, [<ore:orePlatinum>,<immersiveengineering:tool>], true);
recipes.removeShapeless(<bigreactors:dustmetals>, [<ore:oreYellorium>,<immersiveengineering:tool>], true);
recipes.removeShapeless(<primal:sharp_bone>, [<minecraft:bone>, <ore:rock>]);
recipes.removeShapeless(<immersiveengineering:metal:29> * 9, [<ore:ingotIron>]);
recipes.removeShapeless(<libvulpes:productdust:7>, [<ore:oreTitanium>], true);

val removeByName as string[] = [
	"nuclearcraft:tile.nuclearcraft.fission_casing",
	"qmd:tile.qmd.accelerator_casing",
	"qmd:tile.qmd.containment_casing",
	"qmd:tile.qmd.particle_chamber_casing",
	"thermaldynamics:duct_32",
	"thermaldynamics:duct_32_1",
	"thaumcraft:salismundus",
	"planarartifice:transmutation_redstone"
];
for name in removeByName{recipes.removeByRecipeName(name);}

//移除熔炼
val removeFurnace as IIngredient[] = [
	<primal:diamond_plate>,
	<ore:ingotSodium>,
	<ore:ingotCalcium>,
	<ore:ingotOsmium>,
	<ore:ingotHafnium>,
	<ore:ingotHafnium>,
	<ore:ingotPotassium>,
	<ore:ingotNeodymium>,
	<ore:ingotTitanium>,
	<ore:ingotVanadium>,
	<ore:ingotChromium>,
	<ore:ingotNiobium>,
	<ore:ingotZirconium>,
	<ore:ingotMolybdenum>,
	<ore:ingotTungsten>,
	<ore:ingotHafnium>,
	<ore:ingotIridium>,
	<ore:ingotOsmium>,
    <minecraft:glass>,
	<appliedenergistics2:material:5>,
	<thermalfoundation:material:128>,
	<thermalfoundation:material:129>,
	<minecraft:iron_ingot>,
	<minecraft:gold_ingot>,
	<thermalfoundation:material:130>,
	<thermalfoundation:material:131>,
	<ic2:ingot:2>,
	<ic2:ingot:3>,
	<ic2:ingot:4>,
	<ic2:ingot:6>,
	<nuclearcraft:ingot:5>,
	<ore:ingotAluminium>,
	<ore:ingotAluminum>,
	<nuclearcraft:ingot:5>,
	<libvulpes:productingot:10>,
	<nuclearcraft:ingot:6>,
	<nuclearcraft:ingot:7>,
	<thermalfoundation:material:133>,
	<thermalfoundation:material:134>,
	<rockhounding_chemistry:metal_items:6>,
	<nuclearcraft:ingot:3>,
	<primal:zinc_ingot>,
	<libvulpes:productingot:9>,
	<primal:iron_gallagher>,
	<thermalfoundation:material:135>,
	<minecraft:coal:1>,
	<minecraft:netherrack>,
	<logisticspipes:chip_basic>,
	<logisticspipes:chip_advanced>,
	<logisticspipes:chip_fpga>,
	<nuclearcraft:ingot:8>,
	<immersiveengineering:material:19>
];
for item in removeFurnace{furnace.remove(item);}

var removeFurnaceByIO = {
    <nuclearcraft:ingot:14>:<nuclearcraft:ingot:11>,
	<ore:oreCopper>:<ore:ingotCopper>,
	<ore:oreTin>:<ore:ingotTin>,
	<thaumcraft:cluster:6>:<thaumcraft:quicksilver>,
	<ore:oreUranium>:<ore:ingotUranium>
} as IIngredient[IIngredient];
for dust in removeFurnaceByIO{
    furnace.remove(removeFurnaceByIO[dust], dust);
}

//隐藏界面
hideCategory("Painter");
hideCategory("Avatitia.Extreme");
hideCategory("Avatitia.Compressor");
hideCategory("jeresources.worldgen");
hideCategory("jeresources.dungeon");
hideCategory("jeresources.villager");
hideCategory("VILLAGER_TRADE_CATEGORY");
hideCategory("primal_tech.clay_kiln_recipes");
hideCategory("ic2.scrapbox");
hideCategory("zmaster587.AR.arcFurnace");
hideCategory("zmaster587.AR.centrifuge");

//隐藏物品
JEI.hide(<contenttweaker:zerconia>);

//隐藏合成
recipes.addHiddenShaped("e_egg1", <contenttweaker:fbucket>, [[<ore:ingotTin>, null, <ore:ingotTin>], [null, <ore:ingotTin>, null]]);

//堆叠数量
<toughasnails:purified_water_bottle>.maxStackSize = 16;
<minecraft:potion>.withTag({Potion: "minecraft:water"}).maxStackSize = 16;

//合成替换
recipes.replaceAllOccurences(<advancedrocketry:wafer>, <qmd:semiconductor:3>);
recipes.replaceAllOccurences(<immersiveengineering:metal_decoration0>, <ore:coilCopper>);
recipes.replaceAllOccurences(<nuclearcraft:part:4>, <ic2:crafting:5>);
recipes.replaceAllOccurences(<libvulpes:productfan:6>, <rockhounding_chemistry:misc_items:20>);
recipes.replaceAllOccurences(<minecraft:furnace>, <contenttweaker:combustion_chamber>);
recipes.replaceAllOccurences(<qmd:semiconductor:4>, <appliedenergistics2:material:22>);
recipes.replaceAllOccurences(<qmd:semiconductor:5>, <appliedenergistics2:material:23>);
recipes.replaceAllOccurences(<qmd:semiconductor:6>, <appliedenergistics2:material:24>);