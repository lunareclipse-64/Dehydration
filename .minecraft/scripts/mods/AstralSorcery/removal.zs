#priority 999
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.Altar;
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

val removeShapedAltarRecipes as string[] = [
	"tool_basicwand",
	"illuminationpowder",
	"journal",
	"gateway",
	"bore_core"
];
for id in removeShapedAltarRecipes{
    Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/" + id);
}

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
for item in rem_mac{
    mods.astralsorcery.Grindstone.removeRecipe(item);
}
