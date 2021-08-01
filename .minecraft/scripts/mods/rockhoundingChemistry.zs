#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.rockhounding_chemistry.LabBlender;
import mods.rockhounding_chemistry.SeasoningRack;
import mods.rockhounding_chemistry.PullingCrucible;
import mods.rockhounding_chemistry.LabOven;
import mods.rockhounding_chemistry.GasPurifier;
import mods.rockhounding_chemistry.DepositionChamber;
import mods.rockhounding_chemistry.StirredTank;
import mods.rockhounding_chemistry.GasReformer;
import mods.rockhounding_chemistry.Transposer;
import mods.rockhounding_chemistry.MetalAlloyer;
import mods.rockhounding_chemistry.MaterialCabinet;
import mods.rockhounding_chemistry.LeachingVat;
import mods.rockhounding_chemistry.ChemicalExtractor;
import mods.rockhounding_chemistry.ToxicMutation;
//合成
recipes.addShaped(<rockhounding_chemistry:machines_a:13>, 
[[<primal:crude_iron_plate>|<ore:plateIron>, <primal_tech:rock>, <primal:crude_iron_plate>|<ore:plateIron>], 
[null, <primal_tech:rock>, null], 
[<astralsorcery:blockblackmarble:2>, <primal_tech:rock>, <astralsorcery:blockblackmarble:2>]]);

recipes.addShaped(<rockhounding_chemistry:machines_a:11>, 
[[<ore:plateSteel>, <minecraft:piston>, <ore:plateSteel>],
[<ore:stickSteel>, <immersiveengineering:mold:*>, <ore:stickSteel>], 
[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);

recipes.addShaped(<rockhounding_chemistry:machines_d:11>*3, 
[[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_blocks_a>, <rockhounding_chemistry:misc_items:5>],
[<rockhounding_chemistry:misc_items:7>, <storagedrawers:upgrade_conversion>, <rockhounding_chemistry:misc_items:7>], 
[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_blocks_a>, <rockhounding_chemistry:misc_items:5>]]);

recipes.addShaped(<rockhounding_chemistry:misc_items:35>, 
[[<minecraft:brick>, <contenttweaker:kaolinite>, <minecraft:brick>],
[<contenttweaker:kaolinite>, <rockhounding_chemistry:misc_items:5>, <contenttweaker:kaolinite>], 
[<minecraft:brick>, <contenttweaker:kaolinite>, <minecraft:brick>]]);

recipes.addShapeless(<gbook:guidebook>.withTag({Book: "rockhounding_chemistry:xml/chembook.xml"}), 
[<rockhounding_chemistry:uninspected_mineral>.reuse(), <minecraft:book>, <ore:dyeBlack>]);

recipes.addShaped(<rockhounding_chemistry:machines_c>, 
[[<rockhounding_chemistry:misc_blocks_a>, <rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_blocks_a>],
[<rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:misc_items:7>], 
[<rockhounding_chemistry:misc_items:5>, <contenttweaker:magnetic_refrigerator>, <rockhounding_chemistry:misc_items:5>]]);

var dustCraft = {
    <ore:dustTitanium>:<rockhounding_chemistry:metal_items:4>,
    <ore:dustVanadium>:<rockhounding_chemistry:metal_items>,
    <ore:dustChromium>:<qmd:ingot:2>,
    <ore:dustManganese>:<nuclearcraft:ingot:11>,
    <ore:dustCobalt>:<rockhounding_chemistry:metal_items:10>,
    <ore:dustCopper>:<thermalfoundation:material:128>,
    <ore:dustZinc>:<primal:zinc_ingot>,
    <ore:dustStrontium>:<qmd:ingot:14>,
    <ore:dustZirconium>:<rockhounding_chemistry:metal_items:1>,
    <ore:dustNiobium>:<qmd:ingot:1>,
    <ore:dustMolybdenum>:<rockhounding_chemistry:metal_items:12>,
    <ore:dustSilver>:<thermalfoundation:material:130>,
    <ore:dustNeodymium>:<qmd:ingot2:1>,
    <ore:dustHafnium>:<qmd:ingot:6>,
    <ore:dustTungsten>:<qmd:ingot>,
    <ore:dustGold>:<minecraft:gold_ingot>,
    <ore:dustPotassium>:<qmd:ingot:12>,
    <ore:dustIron>:<minecraft:iron_ingot>,
    <ore:dustYttrium>:<qmd:ingot2>,
    <ore:dustLead>:<thermalfoundation:material:131>,
    <ore:dustIridium>:<thermalfoundation:material:135>
} as IItemStack[IIngredient];
for dust in dustCraft{
    recipes.addShapeless(dustCraft[dust], [dust,<thermalfoundation:material:1024>]);
}

//原盐调味架
SeasoningRack.removeByInput(<rockhounding_chemistry:misc_blocks_a:12>);
SeasoningRack.add(<rockhounding_chemistry:misc_blocks_a:12>, <contenttweaker:soda>*2);

//实验室搅拌器

//实验室反应器
LabOven.add("二硫化碳",<contenttweaker:carbon_sulfur_mixture>, null, <liquid:ethanol>*1000, null, <liquid:carbon_disulfide>*1000, null);
LabOven.add("浮选剂",<contenttweaker:soda>, null, <liquid:carbon_disulfide>*1000, null, <liquid:floatation_agent>*1000, null);
LabOven.add("溶解氰化钠",<contenttweaker:sodium_cyanide>, null, <liquid:water>*1000, null, <liquid:sodium_cyanide>*1000, null);

//拉晶坩埚
PullingCrucible.add(<contenttweaker:zirconium_dioxide>, "ingotZirconium", <contenttweaker:zerconia>);
PullingCrucible.add(<contenttweaker:silicon_seed>, "itemSilicon", <qmd:semiconductor:2>);
PullingCrucible.add("dustQuartz", "dustAquamarine", <minecraft:prismarine_shard>);

//气体净化器
GasPurifier.removeByInput(<liquid:compressed_air>);
GasPurifier.add(<liquid:compressed_air>*1000, <liquid:refined_air>*1000, <contenttweaker:small_stone_dust>, <contenttweaker:purified_sand>);

//气相沉积室
DepositionChamber.add("P型扩散", <qmd:semiconductor:3>, <qmd:semiconductor>, <liquid:diborane>*50, 1200, 15000, <liquid:oxygen>*50);
DepositionChamber.add("N型扩散", <qmd:semiconductor:3>, <qmd:semiconductor:1>, <liquid:phosphoryl_chloride>*50, 1200, 15000, <liquid:oxygen>*50);

//电化学CSTR
StirredTank.add(<liquid:hydrogen>*1500, <liquid:boron_chloride>*500, <liquid:hydrochloric_acid>*750, <liquid:diborane>*500, 5);
StirredTank.add(<liquid:phosphor_pentachloride>*500, <liquid:water>*500, <liquid:hydrochloric_acid>*1000, <liquid:phosphoryl_chloride>*500, 0);
StirredTank.add(<liquid:hydrogen>*1000, <liquid:chlorine>*1000, <liquid:hydrochloric_acid>*2000, null, 0);

//浸出槽
LeachingVat.remove(<rockhounding_chemistry:mineral_ores:9>);
LeachingVat.add(<rockhounding_chemistry:mineral_ores:9>, 
[<contenttweaker:kaolinite>,<rockhounding_chemistry:silicate_shards:7>,<rockhounding_chemistry:silicate_shards:8>,
<rockhounding_chemistry:silicate_shards:9>,<rockhounding_chemistry:silicate_shards:11>,<rockhounding_chemistry:silicate_shards:12>,
<rockhounding_chemistry:silicate_shards:13>,<rockhounding_chemistry:silicate_shards:14>,<rockhounding_chemistry:silicate_shards:15>,
<rockhounding_chemistry:silicate_shards>,<rockhounding_chemistry:silicate_shards:1>,<rockhounding_chemistry:silicate_shards:4>,
<rockhounding_chemistry:silicate_shards:6>], 
[2.61,2.95,2.89,3.67,2.25,2.98,4.08,7.1,4.65,3.82,3.09,3.41,2.67], 
<liquid:leachate>*1000);

//催化重整
GasReformer.removeByOutput(<liquid:syngas>);

//合金炉
MetalAlloyer.add(["dustIron","dustChromium","dustNickel","dustCarbon"], [74,19,6,1], <qmd:ingot_alloy:2>);
MetalAlloyer.add(["dustIron","dustCarbon","dustManganese","dustVanadium"], [92,4,3,2], <nuclearcraft:alloy:15>);

//萃取机
ChemicalExtractor.add("Silicate", <contenttweaker:kaolinite>, ["dustSilicon","dustAluminum","dustIron","dustTitanium"], [21,15,4,3]);
//物料柜

//转换器
val transpose as ILiquidStack[]=[
    <liquid:hydrogen>,
    <liquid:oxygen>,
    <liquid:nitrogen>,
    <liquid:helium>,
    <liquid:neon>,
    <liquid:argon>,
    <liquid:krypton>,
    <liquid:xenon>,
    <liquid:carbon_dioxide>,
    <liquid:ammonia>
];
for trans in transpose{
    Transposer.add(trans, trans);
}

//毒物突变
ToxicMutation.removeByOutput(<minecraft:nether_wart>);
ToxicMutation.add(<biomesoplenty:mushroom:3>, <minecraft:red_mushroom>);