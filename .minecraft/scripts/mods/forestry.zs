#priority 100
#loader crafttweaker reloadableevents
import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;

recipes.addShaped(<genetics:lab_machine:2>, 
[[<ore:paneGlass>, <ic2:crafting:5>, <ore:paneGlass>],
[<forestry:chipsets:1>, <genetics:misc>, <forestry:chipsets:1>],
[<ore:gearSteel>, <ore:gearBronze>, <ore:gearSteel>]]);

recipes.addShaped(<forestry:carpenter>, 
[[<ic2:casing>, <ore:actuator>, <ic2:casing>],
[<ore:plateBronze>, <forestry:sturdy_machine>, <rockhounding_chemistry:misc_items:1>], 
[<ic2:casing>, <ore:servo>, <ic2:casing>]]);

recipes.addShaped(<forestry:centrifuge>, 
[[<ic2:casing>, <ic2:crafting:6>, <ic2:casing>],
[<ore:plateConstantan>, <forestry:sturdy_machine>, <rockhounding_chemistry:misc_items:1>], 
[<ic2:casing>, <ore:actuator>, <ic2:casing>]]);

recipes.addShaped(<forestry:alveary.sieve>, 
[[<minecraft:string>, null, <minecraft:string>],
[<forestry:crafting_material:3>, <forestry:alveary.plain>, <forestry:crafting_material:3>], 
[<minecraft:string>, null, <minecraft:string>]]);

recipes.addShaped(<forestry:alveary.fan>, 
[[<tetra:vent_plate>, null, null],
[<rockhounding_chemistry:misc_items:20>, <forestry:alveary.plain>, <ic2:crafting:6>], 
[<tetra:vent_plate>, null, null]]);

recipes.addShaped(<forestry:alveary.heater>, 
[[<ic2:crafting:5>, <forestry:alveary.plain>, <ic2:crafting:5>]]);

recipes.addShaped(<forestry:alveary.hygro>, 
[[<rockhounding_chemistry:misc_items:7>, <minecraft:glass_bottle>, <rockhounding_chemistry:misc_items:7>],
[null, <forestry:alveary.plain>, null], 
[<rockhounding_chemistry:misc_items:7>, <minecraft:glass_bottle>, <rockhounding_chemistry:misc_items:7>]]);

recipes.addShaped(<forestry:squeezer>, 
[[<ic2:casing>, <ore:actuator>, <ic2:casing>],
[<actuallyadditions:item_misc:2>, <forestry:sturdy_machine>, <rockhounding_chemistry:misc_items:1>], 
[<ic2:casing>, <ore:meshIron>, <ic2:casing>]]);

recipes.addShaped(<forestry:still>, 
[[<ic2:casing:3>, <ore:servo>, <ic2:casing:3>],
[<ic2:fluid_cell>, <forestry:sturdy_machine>, <rockhounding_chemistry:misc_items:1>], 
[<ic2:casing:3>, <ic2:crafting:5>, <ic2:casing:3>]]);

recipes.addShaped(<forestry:fermenter>, 
[[<ic2:casing>, <rockhounding_chemistry:slurry_agitator>, <ic2:casing>],
[<ore:servo>, <forestry:sturdy_machine>, <rockhounding_chemistry:misc_items:1>], 
[<ic2:casing>, <ic2:crafting:5>, <ic2:casing>]]);

Carpenter.removeRecipe(<forestry:chipsets>);
Carpenter.removeRecipe(<forestry:chipsets:1>);
Carpenter.removeRecipe(<forestry:chipsets:2>);
Carpenter.removeRecipe(<forestry:chipsets:3>);
Carpenter.removeRecipe(<forestry:hardened_machine>);
Carpenter.removeRecipe(<forestry:impregnated_casing>);

Carpenter.addRecipe(<forestry:alveary.plain>*3, 
[[<backpack:backpack_frame>,<forestry:impregnated_casing>,<backpack:backpack_frame>],
[<ore:plankTreatedWood>,<primal:slat_lacquer>,<ore:plankTreatedWood>],
[<backpack:backpack_frame>,<primal:slat_lacquer>,<backpack:backpack_frame>]],
200, <liquid:urushi>*50, <immersiveengineering:wooden_decoration:1>);

Carpenter.addRecipe(<forestry:impregnated_casing>, 
[[null,<ore:stickTreatedWood>,null],
[<ore:plankTreatedWood>,<ore:gearWood>,<ore:plankTreatedWood>],
[null,<ore:stickTreatedWood>,null]],
80, <liquid:seed.oil>*250, <actuallyadditions:block_misc:4>);

Carpenter.addRecipe(<forestry:fabricator>, 
[[<rockhounding_chemistry:misc_items:35>,<forestry:hardened_machine>,<rockhounding_chemistry:misc_items:35>],
[<ore:servo>,<forestry:worktable>,<rockhounding_chemistry:misc_items:10>],
[<ic2:crafting:5>,<ic2:crafting:5>,<ic2:crafting:5>]],
220, null, <immersiveengineering:metal_decoration1:5>);

ThermionicFabricator.removeCast(<forestry:flexible_casing>);
