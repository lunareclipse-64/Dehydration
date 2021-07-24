#priority 102
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.CokeOven;

recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "electronics"}), 
[[null, <logisticspipes:chip_basic>|<immersiveengineering:material:27>, null],
[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], 
[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), 
[[<thaumcraft:mechanism_simple>, null, <contenttweaker:empty_celestial_note>],
[<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>], 
[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

recipes.addShaped(<immersiveengineering:treated_wood>*8, 
[[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>],
[<primal:planks:2>, <liquid:creosote>*1000, <primal:planks:2>], 
[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>]]);

recipes.addShaped(<immersiveengineering:metal_decoration0:5>*4, 
[[<ore:stickSteel>, <immersiveengineering:material:9>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte})],
[<ore:plateConstantan>, <ore:scaffoldingSteel>, <ore:gearSteel>], 
[<ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), <immersiveengineering:material:9>, <ore:stickSteel>]]);

recipes.addShaped(<immersiveengineering:metal_decoration0:4>*4, 
[[<rockhounding_chemistry:misc_items:5>, <immersiveengineering:material:8>, <rockhounding_chemistry:misc_items:5>],
[<ore:plateBronze>, <ic2:crafting:29>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})], 
[<rockhounding_chemistry:misc_items:5>, <ore:gearIron>, <rockhounding_chemistry:misc_items:5>]]);

recipes.addShaped(<immersiveengineering:metal_decoration0:3>*4, 
[[<rockhounding_chemistry:misc_items:5>, <minecraft:redstone>, <rockhounding_chemistry:misc_items:5>],
[<ore:gearCopper>, <thaumcraft:mechanism_simple>, <ore:stickIron>], 
[<rockhounding_chemistry:misc_items:5>, <minecraft:redstone>, <rockhounding_chemistry:misc_items:5>]]);

recipes.addShaped(<immersiveengineering:metal_decoration0:6>*2, 
[[<ore:plateSteel>, null, <ore:plateSteel>],
[null, <ore:coilCopper>, null], 
[<ore:plateSteel>, null, <ore:plateSteel>]]);

recipes.addShaped(<immersiveengineering:metal_device1:7>, 
[[<ore:scaffoldingSteel>, <ic2:crafting:30>, <ore:scaffoldingSteel>],
[<ore:scaffoldingSteel>, <nuclearcraft:part:8>, <ore:scaffoldingSteel>], 
[<immersiveengineering:metal_decoration0:4>, <thermalfoundation:material:656>, <immersiveengineering:metal_decoration0:4>]]);

ArcFurnace.removeRecipe(<nuclearcraft:ingot:6>);
ArcFurnace.removeRecipe(<thermalfoundation:material:132>);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:7>);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:5>);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:3>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:5>);
ArcFurnace.removeRecipe(<thermalfoundation:material:128>);
ArcFurnace.removeRecipe(<thermalfoundation:material:129>);
ArcFurnace.removeRecipe(<thermalfoundation:material:131>);
ArcFurnace.removeRecipe(<thermalfoundation:material:133>);
ArcFurnace.removeRecipe(<thermalfoundation:material:135>);
ArcFurnace.removeRecipe(<primal:zinc_ingot>);
ArcFurnace.removeRecipe(<immersiveengineering:metal>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:2>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:3>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:4>);
ArcFurnace.removeRecipe(<immersiveengineering:metal:8>);
ArcFurnace.removeRecipe(<ic2:ingot:6>);
ArcFurnace.removeRecipe(<qmd:ingot:3>);
ArcFurnace.removeRecipe(<ic2:misc_resource:1>);
ArcFurnace.removeRecipe(<libvulpes:productingot:3>);
ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:1>);

var dustMelt = {
    <ore:dustNickel>:<thermalfoundation:material:133>,
    <ore:dustAluminium>:<thermalfoundation:material:132>,
    <ore:dustTitanium>:<rockhounding_chemistry:metal_items:4>,
    <ore:dustVanadium>:<rockhounding_chemistry:metal_items>,
    <ore:dustLithium>:<nuclearcraft:ingot:6>,
    <ore:dustMagnesium>:<nuclearcraft:ingot:7>,
    <ore:dustBoron>:<nuclearcraft:ingot:5>,
    <ore:dustCobalt>:<rockhounding_chemistry:metal_items:10>,
    <ore:dustCopper>:<thermalfoundation:material:128>,
    <ore:dustZinc>:<primal:zinc_ingot>,
    <ore:dustZirconium>:<rockhounding_chemistry:metal_items:1>,
    <ore:dustTin>:<thermalfoundation:material:129>,
    <ore:dustLead>:<thermalfoundation:material:131>,
    <ore:dustThorium>:<nuclearcraft:ingot:3>,
    <ore:dustUranium>:<immersiveengineering:metal:5>,
    <ore:dustIron>:<minecraft:iron_ingot>,
    <ore:dustIridium>:<thermalfoundation:material:135>,
    <ore:dustShibuichi>:<rockhounding_chemistry:alloy_items_deco:13>
} as IItemStack[IIngredient];

for dust in dustMelt{
    ArcFurnace.addRecipe(dustMelt[dust], dust, null, 50, 512);
}

ArcFurnace.addRecipe(<thermalfoundation:material:162>*2, 
<jaopca:item_crushedpurifiednickel>, <immersiveengineering:material:7>, 150, 512, 
[<ore:dustCharcoal>], "Ores");

ArcFurnace.addRecipe(<thaumcraft:quicksilver>*2, 
<thaumcraft:ore_cinnabar>, <immersiveengineering:material:7>, 150, 512, 
null, "Ores");


BlastFurnace.addRecipe(<thermalfoundation:material:160>, <primal:ore_cluster_bog_iron>, 1000, <immersiveengineering:material:7>*2);
BlastFurnace.addRecipe(<nuclearcraft:gem:6>, <contenttweaker:purified_sand>*4, 1200);
BlastFurnace.addRecipe(<nuclearcraft:gem:6>, <nuclearcraft:gem_dust:2>*2, 1200);
BlastFurnace.addRecipe(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:reducing_furnace"}), <enderio:item_material:77>, 600);

AlloySmelter.addRecipe(<thermalfoundation:material:160>*4, <minecraft:iron_ingot>*4, <primal:charcoal_pure>, 4800);
AlloySmelter.addRecipe(<thermalfoundation:material:160>*3, <minecraft:iron_ingot>*3, <primal:charcoal_high>, 3600);
AlloySmelter.addRecipe(<thermalfoundation:material:160>*2, <minecraft:iron_ingot>*2, <primal:charcoal_good>, 2400);
AlloySmelter.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, <primal:charcoal_fair>, 1200);
AlloySmelter.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, <thermalfoundation:material:769>, 1000);
AlloySmelter.addRecipe(<contenttweaker:silicon_seed>*3, <nuclearcraft:gem:6>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), 800);


Blueprint.addRecipe("pipes", <thermaldynamics:duct_32>*2 , [<logisticspipes:pipe_transport_basic>,<thaumcraft:nugget:5>]);
Blueprint.addRecipe("components", <tetra:vent_plate>*3 , [<minecraft:iron_bars>,<primal:iron_mesh>]);
Blueprint.addRecipe("components", <nuclearcraft:part:6>*2, [<minecraft:potato>]);
Blueprint.addRecipe("components", <contenttweaker:levitate_device>, [<darkutils:shulker_pearl>,<immersiveengineering:wirecoil:2>,<rockhounding_chemistry:alloy_parts:85>,<appliedenergistics2:material:24>]);
Blueprint.addRecipe("components", <enderio:item_material:65>*4, [<extrautils2:powertransmitter>, <thermalfoundation:material:32>]);
Blueprint.addRecipe("components", <nuclearcraft:part:9>*2, [<ore:plateSteel>, <immersiveengineering:material:8>, <ic2:crafting:30>, <immersiveengineering:material:20>, <logisticspipes:chip_basic>]);
Blueprint.addRecipe("components", <nuclearcraft:part:7>*2, [<logisticspipes:chip_basic>, <ore:plateInvar>, <ore:stickSteel>, <immersiveengineering:material:20>, <ore:gearSteel>]);
Blueprint.addRecipe("components", <contenttweaker:igniter>, [<rockhounding_chemistry:misc_items:1>, <ore:plateSteel>, <ore:stickSteel>, <rockhounding_chemistry:alloy_items_deco:2>, <minecraft:iron_nugget>, <ic2:crafting:6>]);
Blueprint.addRecipe("components", <extrautils2:passivegenerator>*2, [<ore:plateInvar>, <logisticspipes:chip_basic>, <extrautils2:ingredients>, <thaumcraft:mirrored_glass>]);
Blueprint.addRecipe("electronics", <logisticspipes:chip_basic>, [<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})*2, <nuclearcraft:part:6>]);
Blueprint.addRecipe("electronics", <logisticspipes:chip_basic>, [<immersiveengineering:material:20>*2, <nuclearcraft:part:6>]);
Blueprint.addRecipe("electronics", <contenttweaker:igniter>, [<rockhounding_chemistry:misc_items:1>, <ore:plateSteel>, <ore:stickSteel>, <minecraft:quartz>, <immersiveengineering:wirecoil>, <nuclearcraft:part:7>]);
Blueprint.addRecipe("electronics", <logisticspipes:chip_advanced>, [<ore:dustSmallDiamond>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})*2, <appliedenergistics2:material:20>, <nuclearcraft:part:6>]);
Blueprint.addRecipe("electronics", <rockhounding_chemistry:misc_items:1>*2, [<logisticspipes:chip_basic>, <appliedenergistics2:material:18>,<rockhounding_chemistry:misc_items:3>*2,<ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte})*2]);
Blueprint.addRecipe("electronics", <rockhounding_chemistry:misc_items:10>*2, [<logisticspipes:chip_advanced>, <appliedenergistics2:material:16>,<rockhounding_chemistry:misc_items:3>*2,<minecraft:redstone>*2]);
Blueprint.addRecipe("electronics", <logisticspipes:chip_fpga>, [<ore:dustSmallDiamond>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}), <ore:dustSmallLapis>, <appliedenergistics2:material:20>, <nuclearcraft:part:6>]);
Blueprint.addRecipe("channels", <appliedenergistics2:controller>, [<qmd:discharge_lamp:5>,<qmd:semiconductor:6>*2,<appliedenergistics2:material:44>,<appliedenergistics2:material:43>,<nuclearcraft:part:12>,<qmd:ingot_alloy:6>]);

CokeOven.addRecipe(<rockhounding_chemistry:chemical_items:7>, 100, <ore:dustCoal>, 400);