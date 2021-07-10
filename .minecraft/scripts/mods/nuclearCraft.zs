#priority 100
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.ChanceFluidIngredient;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Assembler;

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
[<ic2:crafting:5>, <nuclearcraft:part:10>, <ic2:crafting:5>], 
[<nuclearcraft:part:1>, <nuclearcraft:part:7>, <nuclearcraft:part:1>]]);

recipes.addShaped(<nuclearcraft:solid_fission_controller>, 
[[<ore:plateAdvanced>, <ore:plateAdvancedAlloy>, <ore:plateAdvanced>],
[<ore:processorElite>, <ore:steelFrame>, <ore:ingotTough>], 
[<ore:plateAdvanced>, <ore:plateAdvancedAlloy>, <ore:plateAdvanced>]]);

recipes.addShaped(<nuclearcraft:turbine_controller>, 
[[<ore:ingotHSLASteel>, <ore:plateAdvancedAlloy>, <ore:ingotHSLASteel>],
[<ore:processorAdvanced>, <ore:steelFrame>, <ore:ingotExtreme>], 
[<ore:ingotHSLASteel>, <ore:plateAdvancedAlloy>, <ore:ingotHSLASteel>]]);

recipes.addShaped(<nuclearcraft:turbine_rotor_shaft> * 4, 
[[<ore:ingotHSLASteel>, <ore:ingotHSLASteel>, <ore:ingotHSLASteel>],
[<ore:ingotOsmiridium>, <ore:ingotOsmiridium>, <ore:ingotOsmiridium>], 
[<ore:ingotHSLASteel>, <ore:ingotHSLASteel>, <ore:ingotHSLASteel>]]);


Crystallizer.removeRecipeWithInput(<liquid:silicon>*1296);


ChemicalReactor.addRecipe(<liquid:hydrogen>*2000, <liquid:oxygen>*1000, <liquid:water>*2000, null, 0.1, 0.1, 1.0);
ChemicalReactor.addRecipe(<liquid:hydrogen>*1000, <liquid:chlorine>*1000, <liquid:hydrochloric_acid>*2000, null, 0.1, 0.1, 1.0);
ChemicalReactor.removeRecipeWithInput(<liquid:hydrogen>*1500, <liquid:boron>*72);
ChemicalReactor.removeRecipeWithInput(<liquid:hydrogen>*500, <liquid:oxygen>*250);
ChemicalReactor.removeRecipeWithInput(<liquid:hydrogen>*1000, <liquid:chlorine>*1000);


Electrolyzer.addRecipe(<liquid:water>*1000, <liquid:hydrogen>*2000, <liquid:oxygen>*1000, null, null);
Electrolyzer.removeRecipeWithInput(<liquid:water>*250);


Melter.addRecipe(<rockhounding_chemistry:alloy_items_gems:1>, <liquid:nd_yag>*1000);
Melter.addRecipe(<ore:ingotYellorium>, <liquid:yellorium>*144);
Melter.addRecipe(<ore:dustYellorium>, <liquid:yellorium>*144);

Melter.removeRecipeWithInput(<ore:oreLithium>);
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
Melter.removeRecipeWithInput(<bigreactors:dustmetals>);


Infuser.addRecipe(<qmd:discharge_lamp>, <liquid:krypton>*250, <contenttweaker:kryptonlight>);


AlloyFurnace.addRecipe(<ore:plateDenseLead>, <ore:ingotStainlessSteel>, <nuclearcraft:part:1>*6);
AlloyFurnace.addRecipe(<botania:quartz:2>*4, <astralsorcery:itemcoloredlens:2>, <actuallyadditions:block_greenhouse_glass>*3);
AlloyFurnace.addRecipe(<ore:dustLead>*3, <ore:dustHafnium>, <nuclearcraft:part:3>);
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:7>*4);
AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:15>*16);


Assembler.addRecipe(<appliedenergistics2:material:18>, <appliedenergistics2:material:20>, <jaopca:item_dustsmallcopper>, <rockhounding_chemistry:misc_items:3>, <appliedenergistics2:material:22>);
Assembler.addRecipe(<appliedenergistics2:material:16>, <appliedenergistics2:material:20>, <jaopca:item_dustsmallcopper>, <rockhounding_chemistry:misc_items:3>, <appliedenergistics2:material:23>);
Assembler.addRecipe(<appliedenergistics2:material:17>, <appliedenergistics2:material:20>, <jaopca:item_dustsmallcopper>, <rockhounding_chemistry:misc_items:3>, <appliedenergistics2:material:24>);
Assembler.addRecipe(<ore:plateConstantan>, <ore:gearBronze>, <ore:plateBronze>, <ore:ingotBronze>, <forestry:sturdy_machine>);
Assembler.addRecipe(<ore:plateDiamond>, <ore:gearDiamond>, <ore:plateScal>, <ore:ingotOsmiridium>, <forestry:hardened_machine>);
Assembler.addRecipe(<ore:dustGraphite>, <ore:gearEmerald>, <ore:plateAlkimium>, <minecraft:slime_ball>, <forestry:flexible_casing>);
Assembler.addRecipe(<rockhounding_chemistry:misc_items:14>, <ore:gearInvar>, <thermalfoundation:material:352>, <ore:ingotStainlessSteel>, <genetics:misc>);
Assembler.addRecipe(<immersiveengineering:material:27>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <forestry:thermionic_tubes>, null, <forestry:chipsets:1>.withTag({T: 1 as short}));

Assembler.removeRecipeWithOutput(<qmd:semiconductor:4>);
Assembler.removeRecipeWithOutput(<qmd:semiconductor:5>);
Assembler.removeRecipeWithOutput(<qmd:semiconductor:6>);
