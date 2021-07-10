#priority 1198
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;

var fluids = {
    "titanium_tetrachloride" : "FFCDB5",
    "floatation_agent" : "C2A42F",
    "boron_chloride" : "FAFAFA",
    "carbon_disulfide" : "FFF8AD",
    "phosphoryl_chloride" : "D2D2D2",
    "phosphor_pentachloride" : "EFEFDD",
    "silicon_tetrachloride" : "FBFBE5",
    "normal_saline" : "9DA9AF"
}as string[string];

for fl in fluids{
	var f=VanillaFactory.createFluid(fl,Color.fromHex(fluids[fl]));
    f.register();
}

var cl = VanillaFactory.createFluid("chlorine", Color.fromHex("95FF00"));
cl.temperature = 1000;
cl.viscosity = 150;
cl.density = 50;
cl.material = <blockmaterial:lava>;
cl.register();