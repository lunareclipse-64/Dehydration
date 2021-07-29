#priority 100
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.ChanceFluidIngredient;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Supercooler;
import mods.nuclearcraft.FissionIrradiator;
import mods.nuclearcraft.Radiation.setMaterialRadiationLevel;
import mods.nuclearcraft.RadiationScrubber;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.Enricher;
import mods.qmd.beam_dump;

recipes.addShaped(<qmd:part:10>, 
[[<appliedenergistics2:material:23>, <ore:plateHastelloy>, null],
[<ore:plateSilver>, <qmd:part:5>, <ore:plateHastelloy>], 
[<contenttweaker:kryptonlight>, <ore:plateSilver>, <appliedenergistics2:material:23>]]);

recipes.addShaped(<nuclearcraft:part:8>, 
[[<immersiveengineering:metal:38>],
[<ic2:crafting:6>], 
[<immersiveengineering:metal:38>]]);

recipes.addShaped(<nuclearcraft:part:10>*2, 
[[<ore:plateBasic>, <ic2:crafting:3>, <ore:plateBasic>],
[<ore:plateInvar>, <rockhounding_chemistry:misc_items:10>, <ore:plateInvar>], 
[<ore:plateBasic>, <ic2:crafting:3>, <ore:plateBasic>]]);

recipes.addShaped(<nuclearcraft:part:12>*2, 
[[<ore:plateSteel>, <ore:ingotStainlessSteel>, <ore:plateSteel>],
[<ore:plateInvar>, null, <ore:plateInvar>], 
[<ore:plateSteel>, <ore:ingotStainlessSteel>, <ore:plateSteel>]]);

recipes.addShaped(<nuclearcraft:alloy_furnace>, 
[[<nuclearcraft:part>, <rockhounding_chemistry:misc_items:35>, <nuclearcraft:part>],
[<ic2:crafting:5>, <nuclearcraft:part:12>, <ic2:crafting:5>], 
[<nuclearcraft:part>, <ceramics:channel>, <nuclearcraft:part>]]);

recipes.addShaped(<nuclearcraft:melter>, 
[[<nuclearcraft:part:1>, <rockhounding_chemistry:misc_items:35>, <nuclearcraft:part:1>],
[<immersiveengineering:graphite_electrode>, <nuclearcraft:part:10>, <immersiveengineering:graphite_electrode>], 
[<ic2:crafting:5>, <nuclearcraft:part:7>, <ic2:crafting:5>]]);

recipes.addShaped(<nuclearcraft:solid_fission_controller>, 
[[<ore:plateAdvanced>, <ore:plateAdvancedAlloy>, <ore:plateAdvanced>],
[<appliedenergistics2:material:24>, <ore:steelFrame>, <ore:ingotTough>], 
[<ore:plateAdvanced>, <ore:plateAdvancedAlloy>, <ore:plateAdvanced>]]);

recipes.addShaped(<nuclearcraft:turbine_controller>, 
[[<ore:ingotHSLASteel>, <ore:plateAdvancedAlloy>, <ore:ingotHSLASteel>],
[<appliedenergistics2:material:23>, <ore:steelFrame>, <ore:ingotExtreme>], 
[<ore:ingotHSLASteel>, <ore:plateAdvancedAlloy>, <ore:ingotHSLASteel>]]);

recipes.addShaped(<nuclearcraft:turbine_rotor_shaft> * 4, 
[[<ore:ingotHSLASteel>, <ore:ingotHSLASteel>, <ore:ingotHSLASteel>],
[<ore:ingotOsmiridium>, <ore:ingotOsmiridium>, <ore:ingotOsmiridium>], 
[<ore:ingotHSLASteel>, <ore:ingotHSLASteel>, <ore:ingotHSLASteel>]]);

recipes.addShaped(<nuclearcraft:fission_casing> * 8, 
[[null, <ore:plateBasic>, null],
[<ore:plateBasic>, <nuclearcraft:part:12>, <ore:plateBasic>], 
[null, <nuclearcraft:alloy:2>, null]]);

recipes.addShaped(<qmd:containment_casing> * 8, 
[[<ore:plateTitaniumAluminide>, <ore:plateAdvanced>, <ore:plateTitaniumAluminide>],
[<ore:ingotStainlessSteel>, <nuclearcraft:part:12>, <ore:ingotStainlessSteel>], 
[<ore:plateTitaniumAluminide>, <nuclearcraft:alloy:2>, <ore:plateTitaniumAluminide>]]);

recipes.addShaped(<qmd:particle_chamber_casing> * 8, 
[[<rockhounding_chemistry:alloy_parts:43>, <nuclearcraft:part:1>, <rockhounding_chemistry:alloy_parts:43>],
[<nuclearcraft:part>, <nuclearcraft:part:12>, <nuclearcraft:part>], 
[<rockhounding_chemistry:alloy_parts:43>, <nuclearcraft:alloy:2>, <rockhounding_chemistry:alloy_parts:43>]]);

recipes.addShaped(<qmd:accelerator_casing> * 8, 
[[<nuclearcraft:part>, <nuclearcraft:alloy:9>, <nuclearcraft:part>],
[<nuclearcraft:alloy:15>, <nuclearcraft:part:12>, <nuclearcraft:alloy:15>], 
[<nuclearcraft:part>, <nuclearcraft:alloy:9>, <nuclearcraft:part>]]);

recipes.addShaped(<nuclearcraft:supercooler>, 
[[<ore:plateSteel>, <nuclearcraft:alloy:2>, <ore:plateSteel>],
[<ore:ingotStainlessSteel>, <nuclearcraft:part:10>, <ore:ingotStainlessSteel>], 
[<ore:plateSteel>, <contenttweaker:magnetic_refrigerator>, <ore:plateSteel>]]);

recipes.addShaped(<nuclearcraft:assembler>, 
[[<nuclearcraft:part>, <rockhounding_chemistry:alloy_parts:28>, <nuclearcraft:part>],
[<nuclearcraft:part:9>, <nuclearcraft:part:10>, <nuclearcraft:part:9>], 
[<nuclearcraft:part>, <rockhounding_chemistry:misc_items:10>, <nuclearcraft:part>]]);


Crystallizer.removeRecipeWithInput(<liquid:silicon>*1296);


ChemicalReactor.removeRecipeWithInput(<liquid:hydrogen>*1500, <liquid:boron>*144);
ChemicalReactor.removeRecipeWithInput(<liquid:hydrogen>*500, <liquid:oxygen>*250);
ChemicalReactor.removeRecipeWithInput(<liquid:hydrogen>*1000, <liquid:chlorine>*1000);

ChemicalReactor.addRecipe(<liquid:hydrogen>*2000, <liquid:oxygen>*1000, <liquid:water>*2000, null, 0.1, 0.1);
ChemicalReactor.addRecipe(<liquid:hydrogen>*1000, <liquid:chlorine>*1000, <liquid:hydrochloric_acid>*2000, null, 0.1, 0.1);


Electrolyzer.addRecipe(<liquid:water>*1000, <liquid:hydrogen>*2000, <liquid:oxygen>*1000, null, null);
Electrolyzer.removeRecipeWithInput(<liquid:water>*250);


Melter.removeRecipeWithInput(<ore:oreLithium>);
Melter.removeRecipeWithInput(<ore:ingotHardCarbon>);
Melter.removeRecipeWithInput(<ore:oreBoron>);
Melter.removeRecipeWithInput(<ore:oreMagnesium>);
Melter.removeRecipeWithInput(<ore:oreAluminium>);
Melter.removeRecipeWithInput(<ore:oreAluminum>);
Melter.removeRecipeWithInput(<ore:oreSilver>);
Melter.removeRecipeWithInput(<ore:oreThorium>);
Melter.removeRecipeWithInput(<ore:oreIron>);
Melter.removeRecipeWithInput(<ore:oreCopper>);
Melter.removeRecipeWithInput(<ore:oreTin>);
Melter.removeRecipeWithInput(<ore:orePlatinum>);
Melter.removeRecipeWithInput(<ore:oreGold>);
Melter.removeRecipeWithInput(<ore:oreLead>);
Melter.removeRecipeWithInput(<ore:oreUranium>);
Melter.removeRecipeWithInput(<ore:oreYellorium>);
Melter.removeRecipeWithInput(<ore:ingotYellorium>);
Melter.removeRecipeWithInput(<bigreactors:dustyellorium>);

Melter.addRecipe(<rockhounding_chemistry:alloy_items_gems:1>, <liquid:nd_yag>*1000);
Melter.addRecipe(<ore:ingotYellorium>, <liquid:yellorium>*144);
Melter.addRecipe(<ore:dustYellorium>, <liquid:yellorium>*144);
Melter.addRecipe(<ore:ingotTough>, <liquid:tough>*144);
Melter.addRecipe(<ore:ingotGraphite>|<ore:dustGraphite>, <liquid:pyrotheum>*250, 2.0D, 10.0D);
Melter.addRecipe(<ore:dustCarbon>, <liquid:pyrotheum>*250, 2.2D, 10.0D);


Infuser.removeRecipeWithOutput(<thermalfoundation:material:165>);
Infuser.removeRecipeWithOutput(<thermalfoundation:material:101>);
Infuser.removeRecipeWithOutput(<immersiveengineering:treated_wood>);
Infuser.addRecipe(<qmd:discharge_lamp>, <liquid:krypton>*250, <contenttweaker:kryptonlight>);
Infuser.addRecipe(<minecraft:blaze_powder>, <liquid:pyrotheum>*1000, <thermalfoundation:material:1024>*4);
Infuser.addRecipe(<toughasnails:ice_cube>, <liquid:cryotheum>*1000, <thermalfoundation:material:1025>*4);
Infuser.addRecipe(<primal:planks:2>, <liquid:creosote>*125, <immersiveengineering:treated_wood>);


Enricher.addRecipe(<forestry:pollen:1>, <liquid:water>*1000, <liquid:ice>*1000, 2.3D, 0.5D);


AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:7>*4);
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:15>*16);
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:1>*2);
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:2>*2);
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:11>*2);
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:1>);
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:2>);
AlloyFurnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:5>);

AlloyFurnace.addRecipe(<ore:plateDenseLead>, <ore:ingotStainlessSteel>, <nuclearcraft:part:1>*6);
AlloyFurnace.addRecipe(<botania:quartz:2>*4, <astralsorcery:itemcoloredlens:2>, <actuallyadditions:block_greenhouse_glass>*3);
AlloyFurnace.addRecipe(<ore:dustLead>*3, <ore:dustHafnium>, <nuclearcraft:part:3>);
AlloyFurnace.addRecipe(<minecraft:diamond>, <rftools:dimensional_shard>, <nuclearcraft:alloy:2>*2);
AlloyFurnace.addRecipe(<rockhounding_chemistry:alloy_items_tech:1>, <nuclearcraft:alloy:2>, <nuclearcraft:alloy:11>*2);
AlloyFurnace.addRecipe(<ore:ingotTitanium>*3, <rockhounding_chemistry:alloy_items_tech:43>, <nuclearcraft:alloy:1>*4, 2.5D, 2.0D);
AlloyFurnace.addRecipe(<ore:ingotTough>*4, <ore:dustDiamond>, <thermalfoundation:material:656>, 2.5D, 1.5D);


Assembler.removeRecipeWithOutput(<qmd:semiconductor:4>);
Assembler.removeRecipeWithOutput(<qmd:semiconductor:5>);
Assembler.removeRecipeWithOutput(<qmd:semiconductor:6>);

Assembler.addRecipe(<appliedenergistics2:material:18>, <appliedenergistics2:material:20>, <jaopca:item_dustsmallcopper>, <rockhounding_chemistry:misc_items:3>, 
<appliedenergistics2:material:22>);

Assembler.addRecipe(<appliedenergistics2:material:16>, <appliedenergistics2:material:20>, <jaopca:item_dustsmallcopper>, <rockhounding_chemistry:misc_items:3>, 
<appliedenergistics2:material:23>);

Assembler.addRecipe(<appliedenergistics2:material:17>, <appliedenergistics2:material:20>, <jaopca:item_dustsmallcopper>, <rockhounding_chemistry:misc_items:3>, 
<appliedenergistics2:material:24>);

Assembler.addRecipe(<ore:plateConstantan>, <ore:gearBronze>, <ore:plateBronze>, <ore:ingotBronze>, 
<forestry:sturdy_machine>);

Assembler.addRecipe(<ore:plateDiamond>, <ore:gearDiamond>, <ore:plateScal>, <ore:ingotOsmiridium>, 
<forestry:hardened_machine>);

Assembler.addRecipe(<ore:dustGraphite>, <ore:gearEmerald>, <ore:plateAlkimium>, <minecraft:slime_ball>, 
<forestry:flexible_casing>);

Assembler.addRecipe(<rockhounding_chemistry:misc_items:14>, <ore:gearInvar>, <thermalfoundation:material:352>, <ore:ingotStainlessSteel>, 
<genetics:misc>);

Assembler.addRecipe(<immersiveengineering:material:27>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <forestry:thermionic_tubes>, null, 
<forestry:chipsets:1>.withTag({T: 1 as short}));

Assembler.addRecipe(<botania:corporeaspark>, <ore:plateSteel>, <rockhounding_chemistry:misc_items:10>, <qmd:part:10>,
<actuallyadditions:block_laser_relay_item_whitelist>);

Assembler.addRecipe(<extrautils2:powertransmitter>, <extrautils2:ingredients>, <qmd:part:10>, null,
<actuallyadditions:block_laser_relay> * 4);

Assembler.addRecipe(<qmd:part:4>*4, <ore:slabSteelScaffolding>, <rockhounding_chemistry:alloy_parts:46>*2, <contenttweaker:levitate_device>,
<actuallyadditions:block_display_stand>);

IngotFormer.removeRecipeWithOutput(<nuclearcraft:alloy:2>);


Supercooler.removeRecipeWithOutput(<liquid:ice>*250);

Supercooler.addRecipe(<liquid:ice>*1000, <liquid:cryotheum>*500, 5.0D, 2.5D);


SaltMixer.removeRecipeWithOutput(<liquid:tough>*144);

//辐射相关
FissionIrradiator.addRecipe(<ore:ingotBronze>, <enderio:item_alloy_ingot:1>, 314000, 0, 0.2D, 0.000000314D);


setMaterialRadiationLevel("EnergeticAlloy", 0.0000000314D);
setMaterialRadiationLevel("PulsatingIron", 0.00000000272D);
setMaterialRadiationLevel("Signalum", 0.000000256D);
setMaterialRadiationLevel("DimensionalShard", 0.0000000042D);


RadiationScrubber.addRecipe(<ore:ingotConductiveIron>, null, <enderio:item_alloy_ingot:5>, null, 100, 40, 0.6D);
RadiationScrubber.addRecipe(<ore:ingotShibuichi>, <liquid:redstone>*200, <thermalfoundation:material:165>, null, 200, 60, 0.6D);

//QMD
beam_dump.addRecipe(<particle:neutron> * 600000, <liquid:ic2uu_matter>*1);