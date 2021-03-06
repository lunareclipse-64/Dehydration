#priority 6
#loader crafttweaker reloadableevents
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

Recipes.addShaped("discovery",<appliedenergistics2:grindstone>, 
[[<ore:stoneCommon>, <ore:gearWood>, <ore:stoneCommon>], 
[<ore:flake>, <ore:gearStone>, <ore:flake>], 
[<ore:stoneCommon>, <ore:flake>, <ore:stoneCommon>]]);

Recipes.addShapeless("discovery",<immersiveengineering:stone_decoration:2>, 
[<ore:toolGallagher>.transformDamage(5), <ore:plateSteel>, <ore:pinIron>, <immersiveengineering:stone_decoration:1>]);

Recipes.addShapeless("discovery",<immersivetech:stone_decoration>, 
[<ore:toolGallagher>.transformDamage(5), <ore:plateSteel>, <ore:pinIron>, <immersiveengineering:stone_decoration>]);

Recipes.addShapeless("discovery",<contenttweaker:carbon_sulfur_mixture> * 2, 
[<ore:dustSulphur>, <ore:dustCharcoal>|<ore:dustCarbon>, <ore:dustSulphur>]);

Recipes.addShaped("discovery",<nuclearcraft:ingot_block:8>, 
[[<ore:ingotGraphite>, <ore:ingotGraphite>, <ore:ingotGraphite>],
[<ore:ingotGraphite>, <ore:ingotGraphite>, <ore:ingotGraphite>], 
[<ore:ingotGraphite>, <ore:ingotGraphite>, <ore:ingotGraphite>]]);

Recipes.addShaped("discovery",<minecraft:beacon>, 
[[<minecraft:glass_pane>, <astralsorcery:itemcoloredlens:6>, <minecraft:glass_pane>], 
[<minecraft:glass_pane>, <contenttweaker:beacon_emitter>, <minecraft:glass_pane>], 
[<astralsorcery:itemcraftingcomponent:3>, <ic2:plate:15>, <astralsorcery:itemcraftingcomponent:3>]]);

Recipes.addShaped("discovery",<contenttweaker:beacon_emitter>, 
[[<nuclearcraft:rad_shielding>, <qmd:part:10>, <nuclearcraft:rad_shielding>],
[<contenttweaker:ultimate_crystal>, <appliedenergistics2:material:24>, <contenttweaker:ultimate_crystal>], 
[<nuclearcraft:rad_shielding>, <nuclearcraft:rtg_uranium>, <nuclearcraft:rad_shielding>]]);

Recipes.addShaped("discovery",<libvulpes:coil0:4>, 
[[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>],
[<immersiveengineering:wirecoil>, <ore:ingotIron>, <immersiveengineering:wirecoil>], 
[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]]);

Recipes.addShaped("discovery",<contenttweaker:combustion_chamber>, 
[[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:5>],
[<contenttweaker:igniter>, null, <minecraft:brick>], 
[<ic2:casing:5>, <minecraft:brick>, <ic2:casing:5>]]);

Recipes.addShaped("discovery",<contenttweaker:magnetic_refrigerator>, 
[[<ore:ingotStainlessSteel>, <ore:servo>, <ore:ingotStainlessSteel>],
[<ore:ingotNib>, <ore:dustGadolinium>, <ore:ingotNib>], 
[<ore:ingotStainlessSteel>, <toughasnails:temperature_coil>, <ore:ingotStainlessSteel>]]);

Recipes.addShaped("discovery",<minecraft:piston>, 
[[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
[<ic2:casing:3>, <ore:stickIron>, <ic2:casing:3>], 
[<ic2:casing:3>, <immersiveengineering:material:8>, <ic2:casing:3>]]);

val compressRecipes = {
    <ic2:dust:24> : <ore:dustLithium>,
    <ic2:dust:27> : <ore:dustSulfur>,
    <ic2:dust:28> : <ore:dustTin>,
    <ic2:dust:26> : <ore:dustSilver>,
    <ic2:dust:23> : <ore:dustLead>,
    <ic2:dust:21> : <ore:dustIron>,
    <ic2:dust:20> : <ore:dustGold>,
    <ic2:dust:19> : <ore:dustCopper>
} as IOreDictEntry[IItemStack];

for tinydust in compressRecipes
{
    for item in compressRecipes[tinydust].items
    {
        if(item.definition.owner == "rockhounding_chemistry")
        {
            Recipes.addShapeless("discovery",item,[tinydust,tinydust,tinydust,tinydust,tinydust,tinydust,tinydust,tinydust,tinydust]);
            Recipes.addShapeless("discovery",tinydust*9,[item]);
        }
    }
}
Recipes.addShapeless("discovery",<thermalfoundation:material:99>,[<ic2:dust:18>,<ic2:dust:18>,<ic2:dust:18>,<ic2:dust:18>,<ic2:dust:18>,<ic2:dust:18>,<ic2:dust:18>,<ic2:dust:18>,<ic2:dust:18>]);
Recipes.addShapeless("discovery",<ic2:dust:18>*9,[<ore:dustBronze>]);

val ingotBreak = {
    <ore:ingotLithium> : <ore:dustLithium>,
    <ore:ingotBeryllium> : <ore:dustBeryllium>,
    <ore:ingotBoron> : <ore:dustBoron>,
    <ore:ingotSodium> : <ore:dustSodium>,
    <ore:ingotMagnesium> : <ore:dustMagnesium>,
    <ore:ingotPotassium> : <ore:dustPotassium>,
    <ore:ingotCalcium> : <ore:dustCalcium>,
    <ore:ingotVanadium> : <ore:dustVanadium>,
    <ore:ingotChromium> : <ore:dustChromium>,
    <ore:ingotManganese> : <ore:dustManganese>,
    <ore:ingotIron> : <ore:dustIron>,
    <ore:ingotCobalt> : <ore:dustCobalt>,
    <ore:ingotNickel> : <ore:dustNickel>,
    <ore:ingotCopper> : <ore:dustCopper>,
    <ore:ingotYttrium> : <ore:dustYttrium>,
    <ore:ingotZirconium> : <ore:dustZirconium>,
    <ore:ingotNiobium> : <ore:dustNiobium>,
    <ore:ingotMolybdenum> : <ore:dustMolybdenum>,
    <ore:ingotSilver> : <ore:dustSilver>,
    <ore:ingotTin> : <ore:dustTin>,
    <ore:ingotNeodymium> : <ore:dustNeodymium>,
    <ore:ingotTungsten> : <ore:dustTungsten>,
    <ore:ingotIridium> : <ore:dustIridium>,
    <ore:ingotGold> : <ore:dustGold>,
    <ore:ingotLead> : <ore:dustLead>,
    <ore:ingotThorium> : <ore:dustThorium>,
    <ore:ingotAluminum> : <ore:dustAluminum>,
    <ore:ingotTitanium> : <ore:dustTitanium>,
    <ore:ingotZinc> : <ore:dustZinc>,
    <ore:ingotPlatinum> : <ore:dustPlatinum>
} as IOreDictEntry[IOreDictEntry];

for ingot in ingotBreak
{
    for item in ingotBreak[ingot].items
    {
        if(item.definition.owner == "rockhounding_chemistry")
        {
            Recipes.addShapeless("discovery",item,[ingot,<thermalfoundation:material:1027>]);
        }
    }
}
Recipes.addShapeless("discovery",<ore:dustStrontium>.firstItem,[<ore:ingotStrontium>,<thermalfoundation:material:1027>]);
Recipes.addShapeless("discovery",<immersiveengineering:metal:14>,[<immersiveengineering:metal:5>,<thermalfoundation:material:1027>]);

val ingotSmelt = {
    <ore:dustTitanium> : <rockhounding_chemistry:metal_items:4>,
    <ore:dustVanadium> : <rockhounding_chemistry:metal_items>,
    <ore:dustChromium> : <qmd:ingot:2>,
    <ore:dustManganese> : <nuclearcraft:ingot:11>,
    <ore:dustCobalt> : <rockhounding_chemistry:metal_items:10>,
    <ore:dustCopper> : <rockhounding_chemistry:metal_items:11>,
    <ore:dustZinc> : <rockhounding_chemistry:metal_items:9>,
    <ore:dustStrontium> : <qmd:ingot:14>,
    <ore:dustZirconium> : <rockhounding_chemistry:metal_items:1>,
    <ore:dustNiobium> : <qmd:ingot:1>,
    <ore:dustMolybdenum> : <rockhounding_chemistry:metal_items:12>,
    <ore:dustSilver> : <thermalfoundation:material:130>,
    <ore:dustNeodymium> : <qmd:ingot2:1>,
    <ore:dustHafnium> : <qmd:ingot:6>,
    <ore:dustTungsten> : <qmd:ingot>,
    <ore:dustPotassium> : <qmd:ingot:12>,
    <ore:dustIron> : <minecraft:iron_ingot>,
    <ore:dustYttrium> : <qmd:ingot2>,
    <ore:dustLead> : <rockhounding_chemistry:metal_items:5>,
    <ore:dustIridium> : <thermalfoundation:material:135>,
    <ore:dustBoron> : <nuclearcraft:ingot:5>,
    <ore:dustCalcium> : <qmd:ingot:13>,
    <ore:dustBeryllium> : <nuclearcraft:ingot:9>,
    <ore:dustSodium> : <qmd:ingot:11>,
    <ore:dustAluminum> : <rockhounding_chemistry:metal_items:3>,
    <ore:dustNickel> : <rockhounding_chemistry:metal_items:13>,
    <ore:dustTin> : <thermalfoundation:material:129>,
    <ore:dustOsmium> : <rockhounding_chemistry:metal_items:2>,
    <ore:dustPlatinum> : <rockhounding_chemistry:metal_items:6>
} as IItemStack[IOreDictEntry];
for dust in ingotSmelt{
    Recipes.addShapeless("discovery",ingotSmelt[dust], [dust,<thermalfoundation:material:1024>]);
}