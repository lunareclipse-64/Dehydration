#priority -5
import crafttweaker.oredict.IOreDictEntry;
<ore:dustEndstone>.remove(<nuclearcraft:gem_dust:11>);
<ore:dustSandstone>.add(<nuclearcraft:gem_dust:11>);
<ore:rodTopaz>.remove(<jaopca:item_sticktopaz>);
<ore:blockLimestone>.add(<chisel:limestone2:7>);
<ore:ingotUranium>.remove(<bigreactors:ingotmetals>);
<ore:dustUranium>.remove(<bigreactors:dustmetals>);
<ore:ingotBrass>.remove(<thaumcraft:ingot:2>);
<ore:dustCarbon>.add(<thermalfoundation:material:769>);
for i in 0 to 15 {
    <ore:pedalDust>.add(<botania:dye>.definition.makeStack(i));
}