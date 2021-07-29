#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.ic2.Macerator;
import mods.ic2.Extractor;
import mods.ic2.BlockCutter;
import mods.ic2.MetalFormer;

recipes.addShaped(<ic2:cutter>, 
[[<ore:plateIron>, null, <ore:plateIron>], 
[null, <ore:plateIron>, null], 
[<ore:stickIron>, <primal:iron_pin>, <ore:stickIron>]]);

recipes.addShaped(<ic2:treetap>, 
[[null, <ore:gearWood>, null], 
[<primal:wood_pin>, <primal:planks:2>, <primal:planks:2>], 
[<minecraft:bowl>, null, null]]);

recipes.addShaped(<ic2:crafting:6>, 
[[<ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), <ic2:casing:6>, null], 
[<ic2:crafting:5>, <ic2:crafting:5>, <ore:stickIron>], 
[<ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), <ic2:casing:6>, null]]);

recipes.addShaped(<ic2:crafting:5>, 
[[<ic2:cable>, <ic2:cable>, <ic2:cable>], 
[<ic2:cable>, <ore:stickIron>, <ic2:cable>], 
[<ic2:cable>, <ic2:cable>, <ic2:cable>]]);

recipes.addShaped(<ic2:advanced_re_battery:26>, 
[[<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ore:plateBronze>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte})], 
[<ic2:casing>, <ore:dustSilver>, <ic2:casing>], 
[<ic2:casing>, <ore:dustZinc>, <ic2:casing>]]);

recipes.addShaped(<ic2:te:47>, 
[[<primal:diamond_point>, <primal:diamond_knapp>, <primal:diamond_point>], 
[<botania:rune:11>.reuse(), <ic2:resource:12>, <botania:rune:13>.reuse()], 
[<thaumcraft:mechanism_simple>, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), <thaumcraft:mechanism_simple>]]);

recipes.addShaped(<ic2:te:45>, 
[[<ore:toolTreetap>, <thaumcraft:tube_filter>, <ore:toolTreetap>], 
[<botania:rune:10>.reuse(), <ic2:resource:12>, <botania:rune:11>.reuse()], 
[<ore:toolTreetap>, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), <ore:toolTreetap>]]);

recipes.addShaped(<ic2:te:55>, 
[[<botania:rune:12>.reuse(), <thaumcraft:mechanism_complex>, <botania:rune:14>.reuse()], 
[<ic2:crafting:6>, <ic2:resource:12>, <ic2:tool_box>], 
[null, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), null]]);

recipes.addShaped(<ic2:te:43>, 
[[<botania:rune:13>.reuse(), <bloodmagic:demon_extras:14>, <botania:rune:9>.reuse()], 
[<ore:piston>, <ic2:resource:12>, <ore:piston>], 
[<thaumcraft:mechanism_simple>, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), <thaumcraft:mechanism_simple>]]);

recipes.addShaped(<ic2:te:78>,
[[null, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), null], 
[<ic2:crafting:5>, <ore:machineBlock>, <ic2:crafting:5>], 
[null, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), null]]);

recipes.addShaped(<ic2:crafting:8>, 
[[<ic2:casing:1>, <ic2:casing:1>, <ic2:casing:1>], 
[<ore:plateCopper>, <primal:iron_gallagher>.anyDamage().transformDamage(4), <ore:plateCopper>], 
[<ic2:casing:1>, <ic2:casing:1>, <ic2:casing:1>]]);

recipes.addShaped(<ic2:te:33>, 
[[<ore:paneGlassColorless>, <ore:runeWinterB>.reuse(), <ore:paneGlassColorless>], 
[<ore:paneGlassColorless>, <astralsorcery:itemusabledust:1>, <ore:paneGlassColorless>], 
[<ic2:fluid_cell>, <ore:machineBlock>, <ic2:fluid_cell>]]);

recipes.addShaped(<ic2:te:44>, 
[[null, <ic2:crafting:7>, null], 
[<botania:rune:1>.reuse(), <ic2:resource:12>, <botania:rune:13>.reuse()], 
[null, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), null]]);

recipes.addShaped(<ic2:te:42>, 
[[<ore:stickIron>, <ic2:crafting:6>, <ic2:upgrade:6>], 
[<botania:rune:12>.reuse(), <ic2:resource:12>, <botania:rune:10>.reuse()], 
[null, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), null]]);

recipes.addShaped(<ic2:te:51>, 
[[null, <ic2:crafting:6>, null], 
[<botania:rune:2>, <ic2:resource:12>, <botania:rune:11>], 
[null, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), null]]);

recipes.addShaped(<ic2:ingot>*2, 
[[<rockhounding_chemistry:alloy_items_tech_b:4>],
[<rockhounding_chemistry:alloy_items_tech:40>],
[<ore:ingotTitanium>]]);

recipes.addShaped(<ic2:te:27>, 
[[<ic2:casing:3>, <rockhounding_chemistry:misc_items:20>, <ic2:casing:3>],
[<ic2:fluid_cell>, <ic2:resource:12>, <ic2:fluid_cell>], 
[<ic2:casing:3>, <toughasnails:temperature_coil>, <ic2:casing:3>]]);

recipes.addShaped(<ic2:crafting:35>, 
[[null, <ic2:casing:5>, null],
[<ic2:casing:5>, <rockhounding_chemistry:misc_items:20>, <ic2:casing:5>], 
[null, <ic2:casing:5>, null]]);

recipes.addShaped(<ic2:crafting:36>, 
[[<ore:plateSteel>, <ore:plateSteel>, <ic2:casing:5>],
[<ic2:crafting:8>, <ic2:crafting:35>, null], 
[<ore:plateSteel>, <ore:plateSteel>, <ic2:casing:5>]]);

recipes.addShaped(<ic2:te:15>, 
[[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
[<tetra:vent_plate>, <contenttweaker:combustion_chamber>, <ic2:crafting:7>], 
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.addShaped(<ic2:te:5>, 
[[<ic2:casing:3>, <ic2:casing:3>, <ic2:casing:3>],
[<ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), <ic2:crafting:6>, <ic2:crafting:29>], 
[<ic2:casing:3>, <ic2:casing:3>, <ic2:casing:3>]]);

//机器
Macerator.addRecipe(<primal:zinc_dust>, <ore:ingotZinc>);
Macerator.addRecipe(<ic2:dust:15>, <ore:stoneCommon>);
Macerator.addRecipe(<nuclearcraft:compound:7>, <rockhounding_chemistry:borate_shards>);
Macerator.addRecipe(<rockhounding_chemistry:chemical_dusts:42>, <ore:itemSilicon>);

MetalFormer.addRollingRecipe(<thermalfoundation:material:354>, <thermalfoundation:material:162>);
MetalFormer.addRollingRecipe(<rockhounding_chemistry:ingot_pattern>, <immersiveengineering:sheetmetal_slab:9>);

MetalFormer.addExtrudingRecipe(<immersiveengineering:material:19>, <nuclearcraft:part:15> * 6);
MetalFormer.addExtrudingRecipe(<contenttweaker:silicon_seed>*4, <qmd:semiconductor:2>);

BlockCutter.addRecipe(<minecraft:glass_pane>*3, <minecraft:glass>, 8);
BlockCutter.addRecipe(<qmd:semiconductor:3>*4, <qmd:semiconductor:2>, 9);
