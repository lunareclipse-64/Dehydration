#priority -1
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder.newBuilder;

//组件合成
recipes.addShaped(<modularmachinery:blockinputbus>, 
[[<wopper:wopper>],
[<modularmachinery:blockcasing>], 
[<ore:chest>]]);

recipes.addShaped(<modularmachinery:blockfluidinputhatch>, 
[[<ic2:pipe>.withTag({size: 0 as byte, type: 0 as byte})],
[<modularmachinery:blockcasing>], 
[<minecraft:bucket>]]);

recipes.addShapeless(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:solution_electrolytic_pool"}), 
[<ic2:crafting:25>, <liquid:ic2distilled_water>*1000, <enderio:item_material:77>, 
<modularmachinery:itemmodularium>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte})]);

//溶液电解池
val invarElec = newBuilder("Invar_elec", "solution_electrolytic_pool", 180);
invarElec.addEnergyPerTickInput(80)
    .addItemInput(<thermalfoundation:material:354>*3)
    .addItemOutput(<thermalfoundation:material:32>*2)
    .addItemOutput(<thermalfoundation:material:69>*1)
    .build();

val bronzeElec = newBuilder("Bronze_elec", "solution_electrolytic_pool", 240);
bronzeElec.addEnergyPerTickInput(60)
    .addItemInput(<thermalfoundation:material:355>*4)
    .addItemOutput(<thermalfoundation:material:321>*1)
    .addItemOutput(<thermalfoundation:material:64>*3)
    .build();

val constantanElec = newBuilder("Constantan_elec", "solution_electrolytic_pool", 240);
constantanElec.addEnergyPerTickInput(80)
    .addItemInput(<thermalfoundation:material:356>*4)
    .addItemOutput(<thermalfoundation:material:325>*2)
    .addItemOutput(<thermalfoundation:material:64>*2)
    .build();

val pressSiElec = newBuilder("Sipress_elec", "solution_electrolytic_pool", 400);
pressSiElec.addEnergyPerTickInput(80)
    .addItemInput(<minecraft:heavy_weighted_pressure_plate>)
    .addItemInput(<appliedenergistics2:material:20>)
    .addItemInput(<ic2:dust:20>)
    .addItemOutput(<appliedenergistics2:material:19>)
    .addItemOutput(<ic2:dust:20>).setChance(0.8)
    .build();

val pressAuElec = newBuilder("Aupress_elec", "solution_electrolytic_pool", 600);
pressAuElec.addEnergyPerTickInput(120)
    .addItemInput(<minecraft:heavy_weighted_pressure_plate>)
    .addItemInput(<appliedenergistics2:material:18>)
    .addItemOutput(<appliedenergistics2:material:15>)
    .addItemOutput(<thermalfoundation:material:1>).setChance(0.7)
    .build();

val purifiedCetusElec = newBuilder("purifiedCetus_elec", "solution_electrolytic_pool", 150);
purifiedCetusElec.addEnergyPerTickInput(50)
    .addItemInput(<appliedenergistics2:crystal_seed>*3)
    .addItemInput(<ore:dustQuartz>)
    .addItemOutput(<appliedenergistics2:material:10>*3)
    .build();

val purifiedQuartzElec = newBuilder("purifiedQuartz_elec", "solution_electrolytic_pool", 150);
purifiedQuartzElec.addEnergyPerTickInput(50)
    .addItemInput(<appliedenergistics2:crystal_seed:600>*3)
    .addItemInput(<ore:dustQuartz>)
    .addItemOutput(<appliedenergistics2:material:11>*3)
    .build();

val purifiedFluixElec = newBuilder("purifiedFluix_elec", "solution_electrolytic_pool", 150);
purifiedFluixElec.addEnergyPerTickInput(50)
    .addItemInput(<appliedenergistics2:crystal_seed:1200>*3)
    .addItemInput(<ore:dustQuartz>)
    .addItemOutput(<appliedenergistics2:material:12>*3)
    .build();
val fusionBluePrint = newBuilder("fusionBluePrint_elec", "solution_electrolytic_pool", 200);
fusionBluePrint.addEnergyPerTickInput(50)
    .addItemInput(<enderio:item_material:77>)
    .addItemInput(<ore:dyeLightBlue>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:molten_electrolytic_pool"}))
    .build();

val chloralkali = newBuilder("chloralkali_elec", "solution_electrolytic_pool", 400);
chloralkali.addEnergyPerTickInput(40)
    .addItemInput(<ore:itemSalt>,2)
    .addFluidInput(<liquid:water>*2000)
    .addFluidOutput(<liquid:sodium_hydroxide>*1000)
    .addFluidOutput(<liquid:hydrogen>*1000)
    .addFluidOutput(<liquid:chlorine>*1000)
    .build();
val basicPlate = newBuilder("basicplate_elec", "solution_electrolytic_pool", 280);
basicPlate.addEnergyPerTickInput(40)
    .addItemInput(<ore:dustBismuth>)
    .addItemInput(<ore:plateLead>,3)
    .addItemOutput(<nuclearcraft:part>*4)
    .build();
val shulkerShell = newBuilder("shulker_shell_elec", "solution_electrolytic_pool", 200);
shulkerShell.addEnergyPerTickInput(50)
    .addItemInput(<rockhounding_chemistry:borate_shards>)
    .addItemInput(<ore:plateTitanium>,2)
    .addItemOutput(<minecraft:shulker_shell>*2)
    .build();
//星魔蚀刻
val logicPressAu = newBuilder("logicAu_etch", "laser_etching", 400);
logicPressAu.addEnergyPerTickInput(100)
    .addItemInput(<ore:plateGold>)
    .addItemInput(<immersiveengineering:material:27>)
    .addItemInput(<astralsorcery:itemcoloredlens:6>)
    .addManaPerTickInput(40)
    .addItemOutput(<appliedenergistics2:material:18>)
    .build();

val logicPressAl = newBuilder("logicAl_etch", "laser_etching", 600);
logicPressAl.addEnergyPerTickInput(80)
    .addItemInput(<immersiveengineering:blueprint>.withTag({blueprint: "electronics"}))
    .addItemInput(<rockhounding_chemistry:misc_items:33>)
    .addItemInput(<appliedenergistics2:material:15>)
    .addManaPerTickInput(30)
    .addItemOutput(<appliedenergistics2:material:13>)
    .addItemOutput(<immersiveengineering:blueprint>.withTag({blueprint: "electronics"}))
    .build();

val logicPressCo = newBuilder("logicCo_etch", "laser_etching", 800);
logicPressCo.addEnergyPerTickInput(70)
    .addItemInput(<immersiveengineering:blueprint>.withTag({blueprint: "electronics"}))
    .addItemInput(<rockhounding_chemistry:misc_items:34>)
    .addItemInput(<appliedenergistics2:material:13>)
    .addManaPerTickInput(25)
    .addItemOutput(<appliedenergistics2:material:14>)
    .addItemOutput(<immersiveengineering:blueprint>.withTag({blueprint: "electronics"}))
    .build();

val conCat = newBuilder("conCat_etch", "laser_etching", 400);
conCat.addManaPerTickInput(30)
    .addItemInput(<botania:alchemycatalyst>)
    .addItemInput(<astralsorcery:itemcoloredlens:6>)
    .addItemInput(<contenttweaker:vivid_crystal>)
    .addItemOutput(<botania:conjurationcatalyst>)
    .build();
    
val sparkMana = newBuilder("sparkMana_etch", "laser_etching", 500);
sparkMana.addManaPerTickInput(30)
    .addItemInput(<modularmagic:blockmanaproviderinput>)
    .addItemInput(<botania:manaresource:8>)
    .addItemInput(<botania:pool>)
    .addItemOutput(<gugu-utils:sparkmanahatch>)
    .build();
//熔融电解池
val NaFusionElec = newBuilder("NaCl_elec", "molten_electrolytic_pool", 300);
NaFusionElec.addEnergyPerTickInput(400)
    .addItemInput(<rockhounding_chemistry:chemical_items:3>*4)
    .addItemOutput(<rockhounding_chemistry:chemical_dusts:44>*2)
    .addFluidOutput(<liquid:chlorine>*1000)
    .build();

val AlFusionElec = newBuilder("Al2O3_elec", "molten_electrolytic_pool", 400);
AlFusionElec.addEnergyPerTickInput(800)
    .addItemInput(<jaopca:item_crushedpurifiedaluminium>*4)
    .addItemOutput(<thermalfoundation:material:132>*2)
    .addFluidOutput(<liquid:oxygen>*1500)
    .build();

val MgFusionElec = newBuilder("MgCl2_elec", "molten_electrolytic_pool", 300);
MgFusionElec.addEnergyPerTickInput(400)
    .addItemInput(<contenttweaker:magnesium_chloride>*4)
    .addItemOutput(<nuclearcraft:ingot:7>*2)
    .addFluidOutput(<liquid:chlorine>*2000)
    .build();


//热还原炉
val KHeatRedu = newBuilder("KCl_redu", "reducing_furnace", 300);
KHeatRedu.addEnergyPerTickInput(1600)
    .addItemInput(<contenttweaker:potassium_chloride>*4)
    .addItemInput(<ore:dustSodium>,2)
    .addItemOutput(<rockhounding_chemistry:chemical_dusts:41>*2)
    .build();

val UOxideHeatRedu = newBuilder("U3O8_redu", "reducing_furnace", 300);
UOxideHeatRedu.addEnergyPerTickInput(1400)
    .addItemInput(<contenttweaker:purified_pitchblende>*4)
    .addItemInput(<ore:dustMagnesium>,3)
    .addItemOutput(<immersiveengineering:metal:5>*3)
    .build();

val USaltHeatRedu = newBuilder("Na2U2O7_redu", "reducing_furnace", 300);
USaltHeatRedu.addEnergyPerTickInput(1400)
    .addItemInput(<ic2:purified:6>*4)
    .addItemInput(<ore:dustMagnesium>,3)
    .addItemOutput(<immersiveengineering:metal:5>*3)
    .build();

val ThHeatRedu = newBuilder("ThO2_redu", "reducing_furnace", 300);
ThHeatRedu.addEnergyPerTickInput(1400)
    .addItemInput(<jaopca:item_crushedpurifiedthorium>*4)
    .addItemInput(<ore:dustCalcium>,2)
    .addItemOutput(<nuclearcraft:ingot:3>*2)
    .build();

val TiMgHeatRedu = newBuilder("TiCl4_redu_by_mg", "reducing_furnace", 240);
TiMgHeatRedu.addEnergyPerTickInput(1000)
    .addFluidInput(<liquid:titanium_tetrachloride>*1000)
    .addItemInput(<ore:dustMagnesium>,2)
    .addItemOutput(<rockhounding_chemistry:metal_items:4>)
    .build();

val TiNaHeatRedu = newBuilder("TiCl4_redu_by_na", "reducing_furnace", 280);
TiNaHeatRedu.addEnergyPerTickInput(1200)
    .addFluidInput(<liquid:titanium_tetrachloride>*1000)
    .addItemInput(<ore:dustSodium>,4)
    .addItemOutput(<rockhounding_chemistry:metal_items:4>)
    .build();

val OsHeatRedu = newBuilder("OsIr_sepa", "reducing_furnace", 200);
OsHeatRedu.addEnergyPerTickInput(900)
    .addFluidInput(<liquid:oxygen>*2000)
    .addFluidInput(<liquid:hydrogen>*4000)
    .addItemInput(<jaopca:item_crushedpurifiedosmium>)
    .addItemOutput(<qmd:ingot:8>)
    .addItemOutput(<thermalfoundation:material:199>*2)
    .build();

val BHeatRedu = newBuilder("BCl3_redu", "reducing_furnace", 210);
BHeatRedu.addEnergyPerTickInput(1000)
    .addFluidInput(<liquid:boron_chloride>*1000)
    .addItemInput(<ore:dustZinc>,1)
    .addItemOutput(<nuclearcraft:ingot:5>)
    .build();

val CuPtHeatRedu = newBuilder("CuFeS2_redu", "reducing_furnace", 250);
CuPtHeatRedu.addEnergyPerTickInput(700)
    .addFluidInput(<liquid:oxygen>*2000)
    .addItemInput(<contenttweaker:purified_chalcopyrite>*2)
    .addItemOutput(<thermalfoundation:material:128>*2)
    .addItemOutput(<ic2:purified:2>)
    .addItemOutput(<thermalfoundation:material:198>*3)
    .addFluidOutput(<liquid:sulfur_dioxide>*2000)
    .build();

val FeHeatRedu = newBuilder("Fe2O3_redu_by_C", "reducing_furnace", 200);
FeHeatRedu.addEnergyPerTickInput(1200)
    .addItemInput(<ore:dustCoke>,4)
    .addItemInput(<ic2:purified:2>*2)
    .addItemOutput(<thermalfoundation:material:160>*2)
    .addItemOutput(<thermalfoundation:material:224>*6)
    .build();

val CuHeatRedu = newBuilder("Cu_redu_by_C", "reducing_furnace", 100);
CuHeatRedu.addEnergyPerTickInput(1000)
    .addItemInput(<ore:dustCoke>,4)
    .addItemInput(<ic2:purified>*4)
    .addItemOutput(<thermalfoundation:material:128>*6)
    .build();

val SnHeatRedu = newBuilder("SnO2_redu_by_C", "reducing_furnace", 100);
SnHeatRedu.addEnergyPerTickInput(1000)
    .addItemInput(<ore:dustCoke>,4)
    .addItemInput(<ic2:purified:5>*4)
    .addItemOutput(<thermalfoundation:material:129>*6)
    .addItemOutput(<minecraft:iron_nugget>*6)
    .build();

val PbHeatRedu = newBuilder("PbS_redu_by_C", "reducing_furnace", 100);
PbHeatRedu.addEnergyPerTickInput(1000)
    .addItemInput(<ore:dustCoke>,2)
    .addItemInput(<ic2:purified:3>*4)
    .addItemOutput(<thermalfoundation:material:131>*5)
    .build();

val AuHeatRedu = newBuilder("Au_redu_heat_only", "reducing_furnace", 160);
AuHeatRedu.addEnergyPerTickInput(800)
    .addItemInput(<ic2:purified:1>*4)
    .addItemOutput(<minecraft:gold_ingot>*5)
    .addItemOutput(<thermalfoundation:material:130>)
    .build();

val StHeatRedu = newBuilder("St_redu_heat_only", "reducing_furnace", 140);
StHeatRedu.addEnergyPerTickInput(700)
    .addItemInput(<jaopca:item_crushedpurifiedastralstarmetal>*4)
    .addItemOutput(<astralsorcery:itemcraftingcomponent:1>*4)
    .addItemOutput(<astralsorcery:itemcraftingcomponent:2>)
    .build();

val AgHeatRedu = newBuilder("Ag_redu_heat_only", "reducing_furnace", 140);
AgHeatRedu.addEnergyPerTickInput(900)
    .addItemInput(<ic2:purified:4>*4)
    .addItemOutput(<thermalfoundation:material:130>*5)
    .addItemOutput(<minecraft:gold_ingot>)
    .build();

val PtHeatRedu = newBuilder("Pt_redu_heat_only", "reducing_furnace", 200);
PtHeatRedu.addEnergyPerTickInput(900)
    .addItemInput(<jaopca:item_crushedpurifiedplatinum>*2)
    .addItemOutput(<thermalfoundation:material:134>*2)
    .addItemOutput(<thermalfoundation:material:199>*3)
    .build();

val NiHeatRedu = newBuilder("NiO_redu", "reducing_furnace", 120, 0);
NiHeatRedu.addEnergyPerTickInput(1100)
    .addItemInput(<ore:dustCoke>,3)
    .addItemInput(<jaopca:item_crushedpurifiednickel>*3)
    .addItemOutput(<thermalfoundation:material:162>*4)
    .addItemOutput(<thermalfoundation:material:198>*3)
    .addItemOutput(<rockhounding_chemistry:metal_items:10>)
    .build();

val NiOxygenHeatRedu = newBuilder("NiO_redu_with_O2", "reducing_furnace", 120, 1);
NiOxygenHeatRedu.addEnergyPerTickInput(1400)
    .addFluidInput(<liquid:oxygen>*2000)
    .addItemInput(<ore:dustCoke>,3)
    .addItemInput(<jaopca:item_crushedpurifiednickel>*3)
    .addItemOutput(<thermalfoundation:material:162>*4)
    .addItemOutput(<thermalfoundation:material:198>*4)
    .addItemOutput(<rockhounding_chemistry:metal_items:10>)
    .addFluidOutput(<liquid:sulfur_dioxide>*2000)
    .build();

val CaHeatRedu = newBuilder("CaO_redu", "reducing_furnace", 250);
CaHeatRedu.addEnergyPerTickInput(1500)
    .addItemInput(<primal:carbonate_slack>*6)
    .addItemInput(<ore:dustAluminum>,2)
    .addItemOutput(<thermalfoundation:material:864>*3)
    .addItemOutput(<qmd:ingot:13>*3)
    .build();
val NaCNHeatSyn = newBuilder("NaCN_heat", "reducing_furnace", 120);
NaCNHeatSyn.addEnergyPerTickInput(1400)
    .addFluidInput(<liquid:nitrogen>*2000)
    .addItemInput(<contenttweaker:soda>*2)
    .addItemInput(<ore:dustCalcium>,2)
    .addItemInput(<ore:dustCarbon>,4)
    .addItemOutput(<primal:carbonate_slack>*2)
    .addItemOutput(<contenttweaker:sodium_cyanide>*2)
    .build();

val PHeatRedu = newBuilder("P_Heat", "reducing_furnace", 300);
PHeatRedu.addEnergyPerTickInput(800)
    .addItemInput(<forestry:apatite>*2)
    .addItemInput(<ore:dustCarbon>,3)
    .addItemInput(<contenttweaker:purified_sand>*2)
    .addItemOutput(<rockhounding_chemistry:chemical_dusts:39>*2)
    .addItemOutput(<thermalfoundation:material:864>*2)
    .addFluidOutput(<liquid:carbon_monoxide>*3000)
    .build();

val SiHeatRedu = newBuilder("Si_Heat", "reducing_furnace", 200);
SiHeatRedu.addEnergyPerTickInput(850)
    .addFluidInput(<liquid:silicon_tetrachloride>*1000)
    .addFluidInput(<liquid:hydrogen>*2000)
    .addItemOutput(<contenttweaker:silicon_seed>*6)
    .addFluidOutput(<liquid:hydrochloric_acid>*4000)
    .build();
val nitrogenFromCa = newBuilder("N2_from_Ca", "reducing_furnace", 1000);
nitrogenFromCa.addEnergyPerTickInput(10)
    .addItemInput(<ore:dustCalcium>)
    .addFluidOutput(<liquid:nitrogen>*4000)
    .addItemOutput(<primal:carbonate_slack>*2)
    .build();
val nitrogenFromMg = newBuilder("N2_from_Mg", "reducing_furnace", 1000);
nitrogenFromMg.addEnergyPerTickInput(10)
    .addItemInput(<ore:dustMagnesium>)
    .addFluidOutput(<liquid:nitrogen>*4000)
    .addItemOutput(<jaopca:item_crushedpurifiedmagnesium>)
    .build();
//氯化炉
val TiChloridize = newBuilder("TiCl4_chlo", "chloridizing_furnace", 200);
TiChloridize.addEnergyPerTickInput(500)
    .addFluidInput(<liquid:chlorine>*2000)
    .addItemInput(<jaopca:item_crushedpurifiedtitanium>)
    .addFluidOutput(<liquid:titanium_tetrachloride>*1000)
    .build();

val BChloridize = newBuilder("BCl3_chlo", "chloridizing_furnace", 200);
BChloridize.addEnergyPerTickInput(500)
    .addFluidInput(<liquid:chlorine>*3000)
    .addItemInput(<nuclearcraft:compound:7>*18)
    .addItemInput(<ore:dustCarbon>)
    .addFluidOutput(<liquid:boron_chloride>*2000)
    .addFluidOutput(<liquid:carbon_monoxide>*1000)
    .build();

val MgChloridize = newBuilder("MgCl2_chlo", "chloridizing_furnace", 200);
MgChloridize.addEnergyPerTickInput(500)
    .addFluidInput(<liquid:chlorine>*2000)
    .addItemInput(<jaopca:item_crushedpurifiedmagnesium>)
    .addItemOutput(<contenttweaker:magnesium_chloride>*2)
    .build();

val PChloridize = newBuilder("PCl5_chlo", "chloridizing_furnace", 140);
PChloridize.addEnergyPerTickInput(400)
    .addFluidInput(<liquid:chlorine>*5000)
    .addItemInput(<rockhounding_chemistry:chemical_dusts:39>*2)
    .addFluidOutput(<liquid:phosphor_pentachloride>*2000)
    .build();

val SiChloridize = newBuilder("SiCl4_chlo", "chloridizing_furnace", 100);
SiChloridize.addEnergyPerTickInput(350)
    .addFluidInput(<liquid:chlorine>*2000)
    .addItemInput(<ore:dustSilicon>)
    .addFluidOutput(<liquid:silicon_tetrachloride>*1000)
    .build();

//浮选槽
var clean = {
    <ic2:crushed:6>:<ic2:purified:6>,
    <ic2:crushed>:<ic2:purified>,
    <ic2:crushed:1>:<ic2:purified:1>,
    <ic2:crushed:2>:<ic2:purified:2>,
    <ic2:crushed:3>:<ic2:purified:3>,
    <ic2:crushed:4>:<ic2:purified:4>,
    <ic2:crushed:5>:<ic2:purified:5>,
    <jaopca:item_crushedzinc>:<jaopca:item_crushedpurifiedzinc>,
    <jaopca:item_crushedaluminium>:<jaopca:item_crushedpurifiedaluminium>,
    <jaopca:item_crushedastralstarmetal>:<jaopca:item_crushedpurifiedastralstarmetal>,
    <jaopca:item_crushedboron>:<jaopca:item_crushedpurifiedboron>,
    <jaopca:item_crushednickel>:<jaopca:item_crushedpurifiednickel>,
    <jaopca:item_crushedosmium>:<jaopca:item_crushedpurifiedosmium>,
    <jaopca:item_crushedplatinum>:<jaopca:item_crushedpurifiedplatinum>,
    <jaopca:item_crushedthorium>:<jaopca:item_crushedpurifiedthorium>,
    <jaopca:item_crushedyellorium>:<jaopca:item_crushedpurifiedyellorium>,
    <contenttweaker:crushed_chalcopyrite>:<contenttweaker:purified_chalcopyrite>,
    <contenttweaker:crushed_pitchblende>:<contenttweaker:purified_pitchblende>,
    <contenttweaker:crushed_cinnabar>:<contenttweaker:purified_cinnabar>
} as IItemStack[IItemStack];

for ori in clean{
    val cle = newBuilder(ori.definition.id + ori.metadata, "flotation_cell", 50);
    cle.addEnergyPerTickInput(30)
        .addFluidInput(<liquid:floatation_agent>*20)
        .addFluidOutput(<liquid:toxic_waste>*20)
        .addItemInput(ori)
        .addItemOutput(clean[ori])
        .addItemOutput(<ic2:dust:15>)
        .build();
}

val natureSaltClean = newBuilder("salt_sapa", "flotation_cell", 100);
natureSaltClean.addEnergyPerTickInput(50)
    .addItemInput(<rockhounding_chemistry:misc_blocks_a:12>)
    .addFluidInput(<liquid:ic2distilled_water>*100)
    .addItemOutput(<rockhounding_chemistry:chemical_items:3>*2)
    .addItemOutput(<contenttweaker:soda>*2)
    .addItemOutput(<contenttweaker:potassium_chloride>).setChance(0.4)
    .addItemOutput(<contenttweaker:magnesium_chloride>).setChance(0.3)
    .addItemOutput(<nuclearcraft:compound:7>*2).setChance(0.1)
    .build();

val carbonateClean = newBuilder("CaCO3_sapa", "flotation_cell", 100);
carbonateClean.addEnergyPerTickInput(30)
    .addItemInput(<primal:carbonate_slack>*2)
    .addFluidInput(<liquid:ic2distilled_water>*40)
    .addItemOutput(<jaopca:item_crushedpurifiedmagnesium>)
    .build();

val coalClean = newBuilder("coal_sapa", "flotation_cell", 40);
coalClean.addEnergyPerTickInput(80)
    .addItemInput(<ore:dustCoal>,4)
    .addFluidInput(<liquid:floatation_agent>*20)
    .addItemOutput(<rockhounding_chemistry:native_shards:11>*9)
    .addItemOutput(<rockhounding_chemistry:native_shards:11>*3).setChance(0.4)
    .addItemOutput(<jaopca:item_dusttinyamber>*6)
    .addItemOutput(<ic2:dust:27>*4)
    .addFluidOutput(<liquid:toxic_waste>*20)
    .build();

val charcoalClean = newBuilder("charcoal_sapa", "flotation_cell", 40);
charcoalClean.addEnergyPerTickInput(60)
    .addItemInput(<ore:dustCharcoal>,4)
    .addFluidInput(<liquid:floatation_agent>*20)
    .addItemOutput(<rockhounding_chemistry:native_shards:11>*9)
    .addItemOutput(<rockhounding_chemistry:native_shards:11>*3).setChance(0.5)
    .addItemOutput(<forestry:ash>)
    .addFluidOutput(<liquid:toxic_waste>*20)
    .build();
    
val cokeClean = newBuilder("coke_sapa", "flotation_cell", 40);
cokeClean.addEnergyPerTickInput(80)
    .addItemInput(<ore:dustCoke>,8)
    .addFluidInput(<liquid:floatation_agent>*20)
    .addItemOutput(<rockhounding_chemistry:native_shards:11>*18)
    .addItemOutput(<rockhounding_chemistry:native_shards:11>*6).setChance(0.6)
    .addFluidOutput(<liquid:toxic_waste>*20)
    .build();
val sandClean = newBuilder("sand_sapa", "flotation_cell", 20);
sandClean.addEnergyPerTickInput(30)
    .addItemInput(<minecraft:sand>*4)
    .addFluidInput(<liquid:floatation_agent>*20)
    .addItemOutput(<contenttweaker:purified_sand>*9)
    .addItemOutput(<nuclearcraft:gem_dust:2>*2).setChance(0.4)
    .addItemOutput(<ic2:dust:15>)
    .addFluidOutput(<liquid:toxic_waste>*20)
    .build();
//魔力发电机
val starGeneratorBasic = newBuilder("star_genbasic", "astral_generator_1", 20);
starGeneratorBasic.addEnergyPerTickOutput(128)
    .addFluidInput(<liquid:astralsorcery.liquidstarlight>*50)
    .build();

val starGeneratorLucerna1 = newBuilder("star_gen2", "astral_generator_2", 100);
starGeneratorLucerna1.addEnergyPerTickOutput(512)
    .addStarlightInput(4000, "lucerna")
    .setTime(6000, 12000)
    .addFluidInput(<liquid:astralsorcery.liquidstarlight>*500)
    .build();

val starGeneratorLucerna2 = newBuilder("star_gen3", "astral_generator_2", 100);
starGeneratorLucerna2.addEnergyPerTickOutput(512)
    .addStarlightInput(4000, "lucerna")
    .setTime(18000, 24000)
    .addFluidInput(<liquid:astralsorcery.liquidstarlight>*500)
    .build();

val starGeneratorFornax1 = newBuilder("star_gen4", "astral_generator_2", 100);
starGeneratorFornax1.addEnergyPerTickOutput(512)
    .addStarlightInput(4000, "fornax")
    .setTime(6000, 12000)
    .addFluidInput(<liquid:astralsorcery.liquidstarlight>*500)
    .build();

val starGeneratorFornax2 = newBuilder("star_gen5", "astral_generator_2", 100);
starGeneratorFornax2.addEnergyPerTickOutput(512)
    .addStarlightInput(4000, "fornax")
    .setTime(18000, 24000)
    .addFluidInput(<liquid:astralsorcery.liquidstarlight>*500)
    .build();

val ultiGenerator1 = newBuilder("ult_gen1", "ultimate_generator", 8000);
ultiGenerator1.addEnergyPerTickOutput(2048)
    .addManaPerTickInput(25)
    .addFluidInput(<liquid:astralsorcery.liquidstarlight>*500)
    .addItemInput(<bloodmagic:item_demon_crystal>*3)
    .addItemInput(<thaumcraft:void_seed>)
    .build();

val ultiGenerator2 = newBuilder("ult_gen2", "ultimate_generator", 4000);
ultiGenerator2.addEnergyPerTickOutput(2048)
    .addManaPerTickInput(30)
    .addFluidInput(<liquid:lifeessence>*800)
    .addItemInput(<astralsorcery:itemcraftingcomponent:4>)
    .addItemInput(<thaumcraft:alumentum>)
    .build();
//轨道收发器
val blueprint = {
    <contenttweaker:technology1>:<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:tech_space"}),
    <contenttweaker:technology3>:<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:tech_energy"}),
    <contenttweaker:technology4>:<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:tech_life"})
}as IItemStack[IItemStack];

for technode in blueprint{
    val print = newBuilder(technode.definition.id + "_to_blueprint", "orbital_transceiver", 50);
    print.addEnergyPerTickInput(10)
        .addItemInput(technode)
        .addItemInput(<enderio:item_material:77>)
        .addItemOutput(blueprint[technode])
        .build();
}

val sparkUpgrade = newBuilder("spark_upgrade", "orbital_transceiver", 400);
sparkUpgrade.addEnergyPerTickInput(10)
    .addItemInput(<botania:corporeaspark>)
    .addItemOutput(<botania:corporeaspark:1>)
    .build();
//空间操控器
val projectorSpace = newBuilder("compact_projector_space", "tech_space", 240);
projectorSpace.addEnergyPerTickInput(20)
    .addItemInput(<contenttweaker:technology1>)
    .addItemInput(<compactmachines3:wallbreakable>)
    .addItemInput(<nuclearcraft:part:7>)
    .addItemInput(<contenttweaker:magical_projector>)
    .addItemOutput(<compactmachines3:fieldprojector>*2)
    .build();

val cm3Guide = newBuilder("personal_shrinking_device", "tech_space", 100);
cm3Guide.addEnergyPerTickInput(20)
    .addItemInput(<contenttweaker:technology1>)
    .addItemInput(<rockhounding_chemistry:misc_items:5>)
    .addItemInput(<rftools:dimensional_shard>*2)
    .addItemOutput(<compactmachines3:psd>)
    .build();
val bloodTeleposer = newBuilder("blood_teleposer", "tech_space", 400);
bloodTeleposer.addEnergyPerTickInput(50)
    .addItemInput(<contenttweaker:technology1>)
    .addItemInput(<bloodmagic:ritual_stone>)
    .addItemInput(<rftools:dimensional_shard>*4)
    .addItemInput(<contenttweaker:mana_crystal>)
    .addItemInput(<rockhounding_chemistry:misc_items:10>)
    .addItemInput(<bloodmagic:item_demon_crystal:2>)
    .addItemOutput(<bloodmagic:teleposer>)
    .build();
val celestialGateway = newBuilder("celestial_gateway", "tech_space", 800);
celestialGateway.addEnergyPerTickInput(80)
    .addItemInput(<contenttweaker:technology1>)
    .addItemInput(<planarartifice:dimensional_singularity>)
    .addItemInput(<botania:platform:1>)
    .addItemInput(<botania:starfield>)
    .addItemInput(<thermalfoundation:material:33>)
    .addItemOutput(<astralsorcery:blockcelestialgateway>*2)
    .build();
val botaniaPylonGaia = newBuilder("botania_pylon_gaia", "tech_space", 1000);
botaniaPylonGaia.addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:technology1>)
    .addItemInput(<contenttweaker:technology4>)
    .addItemInput(<contenttweaker:memento3>)
    .addItemInput(<thaumcraft:mirrored_glass>*4)
    .addItemInput(<botania:pylon>*4)
    .addItemInput(<botania:rune:8>*4)
    .addItemOutput(<botania:pylon:2>*4)
    .build();
val ic2Casing = newBuilder("ic2_casing", "tech_space", 80);
ic2Casing.addEnergyPerTickInput(20)
    .addItemInput(<ore:plateIron>,6)
    .addItemInput(<thaumcraft:mechanism_complex>)
    .addItemOutput(<ic2:resource:12>)
    .build();
val botaniaSpark = newBuilder("botania_spark", "tech_space", 120);
botaniaSpark.addEnergyPerTickInput(60)
    .addItemInput(<contenttweaker:technology1>)
    .addItemInput(<minecraft:ender_pearl>)
    .addItemInput(<botanicadds:gaia_shard>)
    .addItemInput(<jaopca:item_dustdimensionalshard>)
    .addItemOutput(<botania:corporeaspark>*2)
    .build();
val processorBasic = newBuilder("processor_basic", "tech_space", 120);
processorBasic.addEnergyPerTickInput(20)
    .addItemInput(<contenttweaker:micro_laser_etcher>)
    .addItemInput(<qmd:semiconductor:1>)
    .addItemInput(<nuclearcraft:compound:2>)
    .addItemInput(<ic2:dust:19>)
    .addItemOutput(<qmd:semiconductor:4>)
    .addItemOutput(<contenttweaker:micro_laser_etcher>)
    .build();
val processorAdvanced = newBuilder("processor_advanced", "tech_space", 180);
processorAdvanced.addEnergyPerTickInput(20)
    .addItemInput(<contenttweaker:micro_laser_etcher>)
    .addItemInput(<qmd:semiconductor:1>)
    .addItemInput(<qmd:semiconductor>)
    .addItemInput(<nuclearcraft:compound:2>)
    .addItemInput(<ic2:dust:19>)
    .addItemOutput(<qmd:semiconductor:5>)
    .addItemOutput(<contenttweaker:micro_laser_etcher>)
    .addItemOutput(<rockhounding_chemistry:chemical_dusts:42>).setChance(0.3)
    .build();
val processorElite1 = newBuilder("processor_elite1", "tech_space", 300);
processorElite1.addEnergyPerTickInput(20)
    .addItemInput(<contenttweaker:micro_laser_etcher>)
    .addItemInput(<qmd:semiconductor>)
    .addItemInput(<nuclearcraft:compound:2>)
    .addItemInput(<qmd:part:4>)
    .addItemInput(<botania:manaresource:5>)
    .addItemInput(<extrabees:honey_drop:5>)
    .addItemOutput(<qmd:semiconductor:6>)
    .addItemOutput(<contenttweaker:micro_laser_etcher>)
    .build();
val processorElite2 = newBuilder("processor_elite2", "tech_space", 360);
processorElite2.addEnergyPerTickInput(20)
    .addItemInput(<contenttweaker:micro_laser_etcher>)
    .addItemInput(<qmd:semiconductor>)
    .addItemInput(<nuclearcraft:compound:2>)
    .addItemInput(<qmd:part:4>)
    .addItemInput(<botania:manaresource:5>)
    .addItemInput(<thermalfoundation:material:1025>*2)
    .addItemOutput(<qmd:semiconductor:6>)
    .addItemOutput(<contenttweaker:micro_laser_etcher>)
    .build();
//生命创造器 需要在guguutils更新后修改
val beeCreate = {} as IItemStack[IItemStack];
beeCreate[meadowsBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]});
beeCreate[forestBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]});
beeCreate[rockBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]});
beeCreate[wintryBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "gelum"}]});
beeCreate[tropicalBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sensus"}]});
beeCreate[modestBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]});
beeCreate[basaltBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aversio"}]});
beeCreate[marbleBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitreus"}]});
beeCreate[waterBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]});
beeCreate[marshyBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]});
beeCreate[monasticBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "spiritus"}]});
beeCreate[endedBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]});
beeCreate[valiantBeeQueen] = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praemunio"}]});

var beecount = 0 as int;
for queen in beeCreate{
    val bee = newBuilder("bee_create_" + beecount, "tech_life", 200);
    bee.addEnergyPerTickInput(20)
        .addWillInput("DEFAULT", 10)
        .addAspectInput("victus",10)
        .addItemOutput(queen)
        .addItemInput(<contenttweaker:technology4>)
        .addItemInput(beeCreate[queen])
        .addItemInput(<primal:chum>)
        .addFluidInput(<liquid:binnie.dna.raw>*50)
        .addFluidInput(<liquid:normal_saline>*100)
        .build();
    beecount = beecount + 1;
}

val rubbertreeCreate = newBuilder("rubber_tree_create", "tech_life", 80);
rubbertreeCreate.addEnergyPerTickInput(30)
    .addItemInput(<minecraft:sapling:3>)
    .addItemInput(<contenttweaker:technology4>)
    .addItemInput(<ic2:misc_resource:4>*4)
    .addFluidInput(<liquid:binnie.dna.raw>*10)
    .addFluidInput(<liquid:water>*1000)
    .addItemOutput(<ic2:sapling>)
    .addStarlightInput(5000, "aevitas")
    .build();

val darkoaktreeCreate = newBuilder("darkoak_tree_create", "tech_life", 80);
darkoaktreeCreate.addEnergyPerTickInput(20)
    .addItemInput(<minecraft:sapling>)
    .addItemInput(<astralsorcery:itemusabledust:1>)
    .addItemInput(<contenttweaker:technology4>)
    .addFluidInput(<liquid:binnie.dna.raw>*10)
    .addFluidInput(<liquid:water>*1000)
    .addItemOutput(<minecraft:sapling:5>)
    .addStarlightInput(4000, "aevitas")
    .build();

val irontreeCreate = newBuilder("iron_tree_create", "tech_life", 140);
irontreeCreate.addEnergyPerTickInput(30)
    .addItemInput(<minecraft:sapling>)
    .addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}))
    .addItemInput(<contenttweaker:technology4>)
    .addFluidInput(<liquid:binnie.dna.raw>*10)
    .addFluidInput(<liquid:water>*1000)
    .addItemOutput(<primal:sapling>)
    .addStarlightInput(4200, "aevitas")
    .build();
val ironwoodCreate = newBuilder("iron_wood_create", "tech_life", 290);
ironwoodCreate.addEnergyPerTickInput(60)
    .addItemInput(<minecraft:sapling>)
    .addItemInput(<minecraft:blaze_powder>)
    .addItemInput(<contenttweaker:technology4>)
    .addFluidInput(<liquid:binnie.dna.raw>*10)
    .addFluidInput(<liquid:water>*1000)
    .addItemOutput(<extrautils2:ironwood_sapling>)
    .addStarlightInput(3500, "aevitas")
    .build();
val shulkerCreate = newBuilder("shulker_reate", "tech_life", 300);
shulkerCreate.addEnergyPerTickInput(200)
    .addItemInput(<enderio:item_soul_vial>)
    .addItemInput(<botania:manaresource:5>*3)
    .addItemInput(<minecraft:shulker_shell>)
    .addFluidInput(<liquid:binnie.dna.raw>*100)
    .addAspectInput("volatus",20)
    .addItemOutput(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:shulker"}))
    .build();

//能量迁移器
val praecantatioEnergy = newBuilder("praecantatio_energy", "tech_energy", 20);
praecantatioEnergy.addEnergyPerTickOutput(128)
    .addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}))
    .addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}))
    .build();
val instrumentumEnergy = newBuilder("instrumentum_energy", "tech_energy", 20);
instrumentumEnergy.addEnergyPerTickOutput(128)
    .addItemInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "instrumentum"}]}))
    .addItemOutput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "metallum"}]}))
    .build();
val manadustCharge = newBuilder("manadust_harge", "tech_energy", 100);
manadustCharge.addEnergyPerTickInput(83)
    .addItemInput(<botania:manaresource:23>)
    .addItemOutput(<nuclearcraft:compound:2>)
    .build();
val formerCore = newBuilder("former_core", "tech_energy", 80);
formerCore.addEnergyPerTickInput(2048)
    .addItemInput(<appliedenergistics2:material:22>)
    .addItemInput(<ic2:casing:3>)
    .addItemInput(<rftools:dimensional_shard>)
    .addItemOutput(<appliedenergistics2:material:43>)
    .build();
//物质转化器
val prismarineShardTrans = newBuilder("prismarine_shard_trans", "tech_substance", 216);
prismarineShardTrans.addEnergyPerTickInput(165)
    .addItemInput(<astralsorcery:itemcraftingcomponent>)
    .addItemInput(<primal:rock_granite>)
    .addItemOutput(<minecraft:prismarine_shard>)
    .build();
val destructiveCore = newBuilder("destructive_core", "tech_substance", 80);
destructiveCore.addEnergyPerTickInput(80)
    .addItemInput(<appliedenergistics2:material:22>)
    .addItemInput(<ic2:casing:3>)
    .addItemInput(<jaopca:item_dustdimensionalshard>)
    .addItemOutput(<appliedenergistics2:material:44>)
    .build();