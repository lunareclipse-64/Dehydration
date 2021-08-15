#priority 100
#loader crafttweaker reloadableevents

recipes.addShaped(<primal:smelter:3>.withTag({type: "adobe"}), 
[[null, <primal:adobe_brick_dry>, null], 
[<primal:adobe_brick_dry>, null, <primal:adobe_brick_dry>], 
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>]]);

recipes.addShaped(<primal:smelter>, 
[[<ore:plateCopper>, <primal:mud_brick_dry>, <ore:plateCopper>], 
[<primal:mud_brick_dry>, null, <primal:mud_brick_dry>], 
[<primal:mud_brick_dry>, <primal:mud_brick_dry>, <primal:mud_brick_dry>]]);

recipes.addShaped(<primal:iron_gallagher>, 
[[<primal:crude_iron_ingot>|<minecraft:iron_ingot>, <ore:cordageGeneral>, <primal:crude_iron_ingot>|<minecraft:iron_ingot>], 
[<primal:crude_iron_ingot>|<minecraft:iron_ingot>, <ore:stickWood>, <primal:crude_iron_ingot>|<minecraft:iron_ingot>], 
[null, <ore:stickWood>, null]]);

recipes.addShaped(<primal:cauldron>, 
[[<ore:plateIron>|<ore:plateCrudeIron>, null, <ore:plateIron>|<ore:plateCrudeIron>], 
[<primal:iron_pin>, <ore:plateIron>|<ore:plateCrudeIron>, <primal:iron_pin>], 
[<ore:cobblestone>, null, <ore:cobblestone>]]);

recipes.addShaped(<primal:cauldron_lid>, 
[[<ore:buttonWood>], [<ore:pinIron>], [<ore:plateCrudeIron>|<ore:plateIron>]]);

