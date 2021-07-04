#priority 100
import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;

recipes.addShaped(<genetics:lab_machine:2>, 
[[<ore:paneGlass>, <ic2:crafting:5>, <ore:paneGlass>],
[<forestry:chipsets:1>, <genetics:misc>, <forestry:chipsets:1>],
[<ore:gearSteel>, <ore:gearBronze>, <ore:gearSteel>]]);

Carpenter.removeRecipe(<forestry:chipsets>);
Carpenter.removeRecipe(<forestry:chipsets:1>);
Carpenter.removeRecipe(<forestry:chipsets:2>);
Carpenter.removeRecipe(<forestry:chipsets:3>);
Carpenter.removeRecipe(<forestry:hardened_machine>);

ThermionicFabricator.removeCast(<forestry:flexible_casing>);
