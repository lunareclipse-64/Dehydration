#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.dropt.Dropt;

Dropt.list("list")
    .add(Dropt.rule()
	    .matchBlocks(["biomesoplenty:leaves_1:1"])
		.addDrop(Dropt.drop()
		    .selector(Dropt.weight(5))
		    .items([<minecraft:deadbush>])
		)
		.addDrop(Dropt.drop()
		    .selector(Dropt.weight(15))
		    .items([<minecraft:stick>])
		)
	)
    .add(Dropt.rule()
	    .matchBlocks(["biomesoplenty:leaves_1:9"])
		.addDrop(Dropt.drop()
		    .selector(Dropt.weight(5))
		    .items([<minecraft:deadbush>])
		)
		.addDrop(Dropt.drop()
		    .selector(Dropt.weight(15))
		    .items([<minecraft:stick>])
		)
	)
    .add(Dropt.rule()
	    .matchBlocks(["minecraft:sandstone"])
		.addDrop(Dropt.drop()
		    .selector(Dropt.weight(70))
		    .items([<nuclearcraft:gem_dust:11>,<nuclearcraft:gem_dust:11>])
		)
		.addDrop(Dropt.drop()
		    .selector(Dropt.weight(30))
		    .items([<nuclearcraft:gem_dust:11>,<nuclearcraft:gem_dust:11>,<nuclearcraft:gem_dust:11>])
		)
	);