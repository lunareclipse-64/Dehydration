#priority 1300
#loader contenttweaker
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.IItemUse;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.ItemFood;
//材料
var items as string[] = [
	"dry_rush_stem",
	"light_sand_dust",
	"unc_wand",
	"charged_mesh",
	"mana_mesh",
	"mesh_lump",
	"purified_sand",
	"small_stone_dust",
	"soda",
	"crystal_nucleus",
	"magical_projector",
	"corner_upgrade",
	"wing_upgrade",
	"edge_upgrade",
	"empty_manarune",
	"saligia_rune",
	"mana_crystal",
	"infused_crystal",
	"effulgent_crystal",
	"vivid_crystal",
	"ultimate_crystal",
	"crushed_cinnabar",
	"crushed_pitchblende",
	"crushed_chalcopyrite",
	"purified_cinnabar",
	"purified_pitchblende",
	"purified_chalcopyrite",
	"magnesium_chloride",
	"potassium_chloride",
	"zirconium_dioxide",
	"zerconia",
	"carbon_sulfur_mixture",
	"silicon_seed",
    "kaolinite",
    "combustion_chamber",
    "igniter",
    "magnetic_refrigerator",
    "levitate_device",
    "micro_laser_etcher"
];
for name in items{
	val item = VanillaFactory.createItem(name);
	item.creativeTab = <creativetab:materials.base>;
	item.register();
}

val res = VanillaFactory.createItem("empty_celestial_note");
res.creativeTab = <creativetab:materials.base>;
res.maxStackSize = 1;
res.register();

val beacon = VanillaFactory.createItem("beacon_emitter");
beacon.creativeTab = <creativetab:materials.base>;
beacon.rarity = "RARE";
beacon.register();

//矿物
var ores as string[] = [
	"cluster_pitchblende",
	"cluster_chalcopyrite"
];
for name in ores{
	val item = VanillaFactory.createItem(name);
	item.register();
}

val tech = VanillaFactory.createItem("tech");
tech.maxStackSize = 1;
tech.rarity = "EPIC";
tech.glowing = true;
tech.creativeTab = <creativetab:materials.base>;
tech.register();

val forbidden = VanillaFactory.createItem("forbidden_fragment");
forbidden.maxStackSize = 4;
forbidden.rarity = "UNCOMMON";
forbidden.creativeTab = <creativetab:materials.base>;
forbidden.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.isRemote()){
		Commands.call("tc research @s !CrimsonCultist",player,world,false,true);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
forbidden.register();


val forbidden1 = VanillaFactory.createItem("infernal_furnace_discovery");
forbidden1.maxStackSize = 1;
forbidden1.rarity = "UNCOMMON";
forbidden1.creativeTab = <creativetab:materials.base>;
forbidden1.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.isRemote()){
		Commands.call("tc research @s INFERNALFURNACE",player,world,false,true);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
forbidden1.register();

var NaCN = VanillaFactory.createItemFood("sodium_cyanide",0);
NaCN.alwaysEdible = true;
NaCN.saturation = 0;
NaCN.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
		player.attackEntityFrom(<damageSource:GENERIC>, 100.0f);
		player.sendMessage(player.name + "服用了大量§4氰化钠");
    }
};
NaCN.register();
//记忆碎片
var memo as string[] = [
    "memento1",
	"memento2",
	"memento3",
	"memento4",
	"memento5",
	"memento6",
	"memento7",
	"memento8",
	"memento9"
];
for name in memo{
	val item = VanillaFactory.createItem(name);
	item.creativeTab = <creativetab:materials.base>;
	item.register();
}

val memoryWand = VanillaFactory.createItem("memento_extractor");
memoryWand.creativeTab = <creativetab:materials.base>;
memoryWand.maxDamage = 9;
memoryWand.maxStackSize = 1;
memoryWand.register();

var technology as string[] = [
    "technology1",
	"technology2",
	"technology3",
	"technology4",
	"technology5",
	"technology6",
	"technology7",
	"technology8",
	"technology9"
];
for name in technology{
	val item = VanillaFactory.createItem(name);
	item.creativeTab = <creativetab:materials.base>;
    item.glowing = true;
	item.register();
}

val stage6 = VanillaFactory.createItem("above_note");
stage6.maxStackSize = 1;
stage6.rarity = "EPIC";
stage6.creativeTab = <creativetab:materials.base>;
stage6.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.isRemote()){
		Commands.call("gamestage silentadd @s renaissance",player,world,false,true);
        Commands.call("bq_admin complete 10",player,world,false,true);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
stage6.register();

//蚀刻试剂
var ag0 = VanillaFactory.createItem("eraesing_etching_agent");
ag0.creativeTab = <creativetab:bloodmagic.creativeTab>;
ag0.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var block = world.getBlockState(pos).getBlock();
    if (!world.isRemote() & (block.definition.id=="bloodmagic:blood_rune") & (block.meta != 0)){
        world.setBlockState(<block:bloodmagic:blood_rune:0>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();};
ag0.register();

var ag1 = VanillaFactory.createItem("speed_etching_agent");
ag1.creativeTab = <creativetab:bloodmagic.creativeTab>;
ag1.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var block = world.getBlockState(pos).getBlock();
    if (!world.isRemote() & (block.definition.id=="bloodmagic:blood_rune") & (block.meta != 1)){
        world.setBlockState(<block:bloodmagic:blood_rune:1>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();};
ag1.register();

var ag2 = VanillaFactory.createItem("sacrifice_etching_agent");
ag2.creativeTab = <creativetab:bloodmagic.creativeTab>;
ag2.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var block = world.getBlockState(pos).getBlock();
    if (!world.isRemote() & (block.definition.id=="bloodmagic:blood_rune") & (block.meta != 3)){
        world.setBlockState(<block:bloodmagic:blood_rune:3>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();};
ag2.register();

var ag3 = VanillaFactory.createItem("resistance_etching_agent");
ag3.creativeTab = <creativetab:bloodmagic.creativeTab>;
ag3.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var block = world.getBlockState(pos).getBlock();
    if (!world.isRemote() & (block.definition.id=="bloodmagic:blood_rune") & (block.meta != 6)){
        world.setBlockState(<block:bloodmagic:blood_rune:6>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();};
ag3.register();

var ag4 = VanillaFactory.createItem("strength_etching_agent");
ag4.creativeTab = <creativetab:bloodmagic.creativeTab>;
ag4.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var block = world.getBlockState(pos).getBlock();
    if (!world.isRemote() & (block.definition.id=="bloodmagic:blood_rune") & (block.meta != 7)){
        world.setBlockState(<block:bloodmagic:blood_rune:7>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();};
ag4.register();

var ag5 = VanillaFactory.createItem("absorption_etching_agent");
ag5.creativeTab = <creativetab:bloodmagic.creativeTab>;
ag5.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var block = world.getBlockState(pos).getBlock();
    if (!world.isRemote() & (block.definition.id=="bloodmagic:blood_rune") & (block.meta != 8)){
        world.setBlockState(<block:bloodmagic:blood_rune:8>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();};
ag5.register();

var ag6 = VanillaFactory.createItem("haste_etching_agent");
ag6.creativeTab = <creativetab:bloodmagic.creativeTab>;
ag6.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var block = world.getBlockState(pos).getBlock();
    if (!world.isRemote() & (block.definition.id=="bloodmagic:blood_rune") & (block.meta != 9)){
        world.setBlockState(<block:bloodmagic:blood_rune:9>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();};
ag6.register();

var ag7 = VanillaFactory.createItem("overload_etching_agent");
ag7.creativeTab = <creativetab:bloodmagic.creativeTab>;
ag7.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var block = world.getBlockState(pos).getBlock();
    if (!world.isRemote() & (block.definition.id=="bloodmagic:blood_rune") & (block.meta != 10)){
        world.setBlockState(<block:bloodmagic:blood_rune:10>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();};
ag7.register();

var ag8 = VanillaFactory.createItem("jumpboost_etching_agent");
ag8.creativeTab = <creativetab:bloodmagic.creativeTab>;
ag8.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var block = world.getBlockState(pos).getBlock();
    if (!world.isRemote() & (block.definition.id=="bloodmagic:blood_rune") & (block.meta != 5)){
        world.setBlockState(<block:bloodmagic:blood_rune:5>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();};
ag8.register();

//药水凝胶 
var ge0 = VanillaFactory.createItemFood("eraese_gel",5);
ge0.alwaysEdible = true;
ge0.saturation = 1;
ge0.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.clearActivePotions();
    }
};
ge0.register();

var ge1 = VanillaFactory.createItemFood("speed_gel",5);
ge1.alwaysEdible = true;
ge1.saturation = 1;
ge1.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(2000, 1));
    }
};
ge1.register();

var ge2 = VanillaFactory.createItemFood("instheal_gel",5);
ge2.alwaysEdible = true;
ge2.saturation = 1;
ge2.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.heal(8.5f);
    }
};
ge2.register();

var ge3 = VanillaFactory.createItemFood("resistance_gel",5);
ge3.alwaysEdible = true;
ge3.saturation = 1;
ge3.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(2000, 1));
    }
};
ge3.register();

var ge4 = VanillaFactory.createItemFood("strength_gel",5);
ge4.alwaysEdible = true;
ge4.saturation = 1;
ge4.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(2000, 1));
    }
};
ge4.register();

var ge5 = VanillaFactory.createItemFood("absorption_gel",5);
ge5.alwaysEdible = true;
ge5.saturation = 1;
ge5.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(2000, 3));
    }
};
ge5.register();

var ge6 = VanillaFactory.createItemFood("haste_gel",5);
ge6.alwaysEdible = true;
ge6.saturation = 1;
ge6.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(2000, 1));
    }
};
ge6.register();

var ge7 = VanillaFactory.createItemFood("overload_gel",5);
ge7.alwaysEdible = true;
ge7.saturation = 1;
ge7.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(2000, 3));
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(2000, 2));
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(3200, 1));
        player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(180, 2));
    }
};
ge7.register();

var ge8 = VanillaFactory.createItemFood("jumpboost_gel",5);
ge8.alwaysEdible = true;
ge8.saturation = 1;
ge8.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:jump_boost>.makePotionEffect(2000, 1));
    }
};
ge8.register();

//EGGS
var egg1 = VanillaFactory.createItem("fbucket");
egg1.maxStackSize = 16;
egg1.maxDamage = 1;
egg1.onItemUse = function(player, world, pos, hand, facing, blockHit) {
	var bl = (world.getBlockState(pos.getOffset(facing, 1))).getBlock();
	var ulname = bl.definition.unlocalizedName;
	if(!isNull(bl.fluid)){
        player.getHeldItem(hand).damage(2, player);
		player.sendMessage("§4这桶碎了！");
		if((ulname in "oil")|(ulname in "diesel")|(ulname == "gasoline")){
		    Commands.call("advancement grant @s only triumph:example/1",player,world,false,true);
		}
        return ActionResult.success();
	}
    return ActionResult.pass();
};
egg1.register();