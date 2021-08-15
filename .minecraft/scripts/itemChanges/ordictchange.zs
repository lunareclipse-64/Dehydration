#priority 1200
#loader crafttweaker reloadableevents
import crafttweaker.oredict.IOreDictEntry;
<ore:dustEndstone>.remove(<nuclearcraft:gem_dust:11>);
<ore:dustSandstone>.add(<nuclearcraft:gem_dust:11>);
<ore:rodTopaz>.remove(<jaopca:item_sticktopaz>);
<ore:blockLimestone>.add(<chisel:limestone2:7>);
<ore:ingotUranium>.remove(<bigreactors:ingotyellorium>);
<ore:dustUranium>.remove(<bigreactors:dustyellorium>);
<ore:blockGlassHardened>.remove(<enderio:block_fused_quartz:*>);
<ore:ingotBrass>.remove(<thaumcraft:ingot:2>);
<ore:dustCarbon>.add(<thermalfoundation:material:769>);
<ore:slabSteelScaffolding>.add(<immersiveengineering:metal_decoration1_slab:*>);
<ore:dustYellorium>.add(<rockhounding_chemistry:chemical_dusts:55>);
<ore:dustYellowcake>.add(<bigreactors:dustyellorium>);
for i in 0 to 15 {
    <ore:pedalDust>.add(<botania:dye>.definition.makeStack(i));
}