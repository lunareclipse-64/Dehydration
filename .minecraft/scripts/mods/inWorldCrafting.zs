#priority 10

import mods.inworldcrafting.FluidToFluid;
import mods.inworldcrafting.FluidToItem;
import mods.plustweaks.Liquid.registerLiquidInteraction;

FluidToItem.transform(<minecraft:clay>, <liquid:water>, [<biomesoplenty:dirt>],true);
FluidToItem.transform(<primal:ore_bog_iron>, <liquid:water>, [<biomesoplenty:dirt:2>,<ic2:crushed:2>],false);
FluidToItem.transform(<contenttweaker:charged_mesh>,<liquid:astralsorcery.liquidstarlight>,[<primal:iron_mesh>],false);
FluidToItem.transform(<astralsorcery:blockcustomsandore>, <liquid:astralsorcery.liquidstarlight>, [<minecraft:sand>],true);
FluidToItem.transform(<modularmachinery:itemmodularium>*3, <liquid:astralsorcery.liquidstarlight>, [<bloodmagic:demon_extras:14>,<thaumcraft:quicksilver>,<botania:manaresource:23>],true);
FluidToItem.transform(<ic2:misc_resource:4>, <liquid:water>, [<primal:bark_jungle>,<forestry:propolis:1>],false);
FluidToItem.transform(<forestry:loam>, <liquid:water>, [<forestry:fertilizer_bio>,<minecraft:clay>],false);
FluidToItem.transform(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:flotation_cell"}), <liquid:floatation_agent>, [<enderio:item_material:77>,<thermalfoundation:material:23>],false);
