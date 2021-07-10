#priority 999
import crafttweaker.item.IItemStack;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.Altar.addDiscoveryAltarRecipe;
import mods.astralsorcery.Altar.addAttunmentAltarRecipe;
import mods.astralsorcery.Altar.addConstellationAltarRecipe;
import mods.astralsorcery.Altar.addTraitAltarRecipe;
import mods.astralsorcery.StarlightInfusion;


StarlightInfusion.removeInfusion(<minecraft:redstone_block>);
StarlightInfusion.removeInfusion(<minecraft:lapis_block>);
StarlightInfusion.removeInfusion(<minecraft:diamond>);
StarlightInfusion.removeInfusion(<minecraft:emerald>);
StarlightInfusion.removeInfusion(<minecraft:gold_ingot>);
StarlightInfusion.removeInfusion(<minecraft:iron_ingot>);
StarlightInfusion.removeInfusion(<minecraft:ice>);
StarlightInfusion.removeInfusion(<minecraft:dye:15>);
StarlightInfusion.removeInfusion(<minecraft:gunpowder>);


LightTransmutation.removeTransmutation(<minecraft:end_stone>,false);
LightTransmutation.removeTransmutation(<minecraft:cake>,false);
LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>,false);
LightTransmutation.removeTransmutation(<minecraft:clay>,false);

val rem_tier1 as IItemStack[] = [
	<astralsorcery:itemwand>,
    <astralsorcery:itemusabledust:1>,
	<astralsorcery:itemskyresonator>,
	<astralsorcery:itemhandtelescope>,
	<astralsorcery:blockattunementrelay>,
	<astralsorcery:itemcraftingcomponent:3>,
	<astralsorcery:blockaltar:1>,
	<astralsorcery:itemjournal>,
	<astralsorcery:blockworldilluminator>
];
val rem_tier2 as IItemStack[] = [
	<astralsorcery:blockaltar:2>,
	<astralsorcery:blockattunementaltar>,
	<astralsorcery:blockcelestialgateway>
];
val rem_tier3 as IItemStack[] = [
	<astralsorcery:blockaltar:3>,
	<astralsorcery:blockstarlightinfuser>
];
val rem_tier4 as IItemStack[] = [
	<astralsorcery:blockobservatory>,
	<astralsorcery:blockbore>
];
val rem_mac as IItemStack[] = [
	<ic2:dust:7>,
	<ic2:dust:8>,
	<ic2:dust:17>,
	<ic2:dust:4>,
	<ic2:dust:10>,
	<nuclearcraft:dust:4>,
	<primal:zinc_dust>,
	<thermalfoundation:material:69>,
	<thermalfoundation:material:68>,
	<nuclearcraft:dust:3>,
	<nuclearcraft:dust:5>,
	<ic2:dust:11>,
	<nuclearcraft:dust:7>,
	<libvulpes:productdust:7>,
	<rockhounding_chemistry:chemical_dusts:25>
];
for item in rem_tier1{
    mods.astralsorcery.Altar.removeAltarRecipe(item,0);
}
for item in rem_tier2{
    mods.astralsorcery.Altar.removeAltarRecipe(item,1);
}
for item in rem_tier3{
    mods.astralsorcery.Altar.removeAltarRecipe(item,2);
}
for item in rem_tier4{
    mods.astralsorcery.Altar.removeAltarRecipe(item,3);
}
for item in rem_mac{
    mods.astralsorcery.Grindstone.removeRecipe(item);
}
