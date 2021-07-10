#priority 1196
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Block;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val kryptonlight = VanillaFactory.createBlock("kryptonlight", <blockmaterial:rock>);
kryptonlight.setLightValue(1);
kryptonlight.setToolClass("pickaxe");
kryptonlight.setToolLevel(2);
kryptonlight.setBlockHardness(2.0);
kryptonlight.setCreativeTab(<creativetab:materials.base>);
kryptonlight.register();

val canbeacon as string[] = [
    "energy_crystal_block",
    "vivid_crystal_block",
    "infused_crystal_block",
    "effulgent_crystal_block",
    "ultimate_crystal_block"
];
for block in canbeacon{
    val beaconblock = VanillaFactory.createBlock(block, <blockmaterial:rock>);
    beaconblock.setBeaconBase(true);
    beaconblock.setToolClass("pickaxe");
    beaconblock.setToolLevel(1);
    beaconblock.setBlockHardness(1.0);
    beaconblock.setBlockSoundType(<soundtype:glass>);
    beaconblock.setCreativeTab(<creativetab:materials.base>);
    beaconblock.register();
}