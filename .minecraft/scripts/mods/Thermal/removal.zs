#ikwid
#priority 5
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import mods.contenttweaker.Commands;
import crafttweaker.world.IBlockPos;
import crafttweaker.player.IPlayer;

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent)
{
	var item = event.item;
    var p = event.player;
    var r = p.getRayTrace(4,1,true);
    var l = event.world.getBlock(r.blockPos);
	var h = item.definition.id;
	var meta = item.metadata;
	if(!isNull(item)&&(h == p.mainHandHeldItem.definition.id)&&(meta == p.mainHandHeldItem.metadata))
	{
		if(item.hasTag)
		{
			var tg1 = item.tag.asString();
			if((h has "caster") && (tg1 has "focus") && ((tg1 has "阿瓦达索命")|(tg1 has "Avada Kedavra")) && (tg1 has "thaumcraft.EARTH") && (tg1 has "thaumcraft.BOLT"))
			{
				Commands.call("advancement grant @s only triumph:example/3", p, p.world, false, true);
			}
			if(h has "akashictome:tome")
			{	
				if((tg1 has "银河百科全书")&&(tg1 has "rftoolscontrol:rftoolscontrol_manual")&&(tg1 has "tetra:journal")&&(tg1 has "astralsorcery:itemjournal")&&
				(tg1 has "immersiveengineering")&&(tg1 has "geolosys:field_manual")&&(tg1 has "chembook.xml")&&(tg1 has "thermalfoundation:tome_experience")&&
				(tg1 has "rftools:rftools_manual")&&(tg1 has "animania:animania_manual")&&(tg1 has "rftoolsdim:rftoolsdim_manual")&&(tg1 has "knowledge.alfheim")&&(tg1 has "knowledge.relic")&&
				(tg1 has "guideapi:bloodmagic-guide")&&(tg1 has "thaumcraft:thaumonomicon")&&(tg1 has "bloodmagic:sanguine_book")&&(tg1 has "extrautils2:book")&&
				(tg1 has "thermalfoundation:tome_lexicon")&&(tg1 has "logisticspipes:guide_book")&&(tg1 has "actuallyadditions:item_booklet")&&(tg1 has "bloodmagic:experience_tome")&&
				(tg1 has "hammercore:manual")&&(tg1 has "forestry:book_forester")&&(tg1 has "Damage: 1 as short")&&(tg1 has "Damage: 2 as short")&&(tg1 has "cookingforblockheads2"))
				{
					Commands.call("advancement grant @s only triumph:example/2", p, p.world, false, true);
				}
			}
		}
		if((h=="minecraft:glass_bottle") && (l.definition.id == "minecraft:water"))
		{
			event.cancel();
		}
		if((h=="enderio:item_material") && (meta == 77) && (l.definition.id == "contenttweaker:chlorine"))
		{
			if(item.amount != 1)
			{
				p.setItemToSlot(mainHand, item.withAmount(item.amount - 1));
			}
			else
			{
				p.setItemToSlot(mainHand, null);
			}
			p.give(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:chloridizing_furnace"}));
		}
	}
});

events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent)
{
    var p = event.player;
    var r = p.getRayTrace(4,1,true);
    var l = event.world.getBlock(r.blockPos);
	if((event.block.definition.id has "compactmachines3:machine")&&(event.world.getProvider().getDimensionID() == 144))
	{
		event.cancel();
	}
	if((event.block.definition.id == "minecraft:beacon")&&((isNull(p.mainHandHeldItem))||(!p.isSneaking)))
	{
		event.cancel();
	}
	if(!isNull(event.item))
	{
		var item = event.item;
		var h = item.definition.id;
		var meta = item.metadata;
		if(!isNull(event.block)&&(h == p.mainHandHeldItem.definition.id)&&(meta == p.mainHandHeldItem.metadata))
		{
			var BlockID = event.block.definition.id;
			var BlockMeta = event.block.meta;
			if(h has "contenttweaker:memento_extractor")
			{
				if(BlockID == "minecraft:dirt")
				{
					p.give(<contenttweaker:memento1>);
				    event.world.destroyBlock(event.position, false);
				    event.damageItem(1);}
				if(BlockID has "bookshelf"){p.give(<contenttweaker:memento2>);event.world.destroyBlock(event.position, false);event.damageItem(1);}
				if(BlockID has "blood_rune"){p.give(<contenttweaker:memento3>);event.world.destroyBlock(event.position, false);event.damageItem(1);}
				if(BlockID == "ic2:resource")&&(BlockMeta == 12){p.give(<contenttweaker:memento4>);event.world.destroyBlock(event.position, false);event.damageItem(1);}
				if(BlockID == "qmd:beamline"){p.give(<contenttweaker:memento5>);event.world.destroyBlock(event.position, false);event.damageItem(1);}
			}
			if((h has "extrautils2:ingredients") && (meta == 0) && (BlockID == "bloodmagic:output_routing_node") && p.isSneaking)
			{
				event.world.setBlockState(<blockstate:extrautils2:powertransmitter>, event.position);
				if(item.amount != 1)
				{
					p.setItemToSlot(mainHand, item.withAmount(item.amount - 1));
				}
				else
				{
					p.setItemToSlot(mainHand, null);
				}
			}
			if((h has "botanicadds:elven_lapis") && (BlockID == "extrautils2:passivegenerator") & (BlockMeta == 0))
			{
				event.world.setBlockState(<blockstate:extrautils2:passivegenerator:generatortype=lunar>, event.position);
			}
			if((h has "botanicadds:mana_lapis") && (BlockID == "extrautils2:passivegenerator") & (BlockMeta == 1))
			{
				event.world.setBlockState(<blockstate:extrautils2:passivegenerator>, event.position);
			}
		    if((h == "minecraft:bucket") && (BlockID == "minecraft:cauldron"))
		    {
			    event.cancel();
		    }
		}
	}
});

events.onPlayerFillBucket(function(event as crafttweaker.event.PlayerFillBucketEvent)
{
	if(!isNull(event.block))
	{
		if((event.block.definition.id=="minecraft:water"))
		{
            event.cancel();
		}
	}
});

events.onItemToss(function(event as crafttweaker.event.ItemTossEvent)
{
	if(<enderio:item_material:77>.matches(event.item.item))
	{
		event.player.world.updateCustomWorldData({blackpapertime : 0});
	}
});

events.onWorldTick(function(event as crafttweaker.event.WorldTickEvent)
{
	var w = event.world;
	if((event.phase == "START") && (!isNull(w.getCustomWorldData().blackpapertime))){
		if((w.getWorldTime() % 200 == 0) && (w.getCustomWorldData().blackpapertime < 1200))
		{
			var droplist = w.getEntityItems();
			for drop in droplist{
				if(<enderio:item_material:77>.matches(drop.item))
				{
					var itemp = drop.position3f.asBlockPos();
					var b = w.getBlock(itemp.getX() - 1, itemp.getY() - 1, itemp.getZ() - 1);
					if((b.definition.id has "minecraft:beacon") && (b.data.Levels != 0))
					{
						w.updateCustomWorldData({blackpapertime : 1200});
						drop.setDead();
						w.spawnEntity(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:orbital_transceiver"})
						.withAmount(drop.item.amount).createEntityItem(w, drop.position3f.x, drop.position3f.y, drop.position3f.z));
					}
				}
			}
			w.updateCustomWorldData({blackpapertime : w.getCustomWorldData().blackpapertime.asInt() + 200});
		}
	}
});

events.onEntityLivingUseItemStart(function(event as crafttweaker.event.EntityLivingUseItemEvent.Start)
{
	if(event.item.definition.id == "contenttweaker:sodium_cyanide")
	{
        event.player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(10000, 10));
        event.player.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(5000, 100));
		event.player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(5000, 5));
	}
});

events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent)
{
    var blockID=event.block.definition.id;
	var meta=event.block.meta;
	if(event.silkTouch){return;}
	if((blockID=="geolosys:ore_sample")&&(meta==10))
	{
	    event.drops = [<appliedenergistics2:material>%100];
	}
	if(blockID=="minecraft:coal_ore")
	{
		event.drops += <immersiveengineering:material:25>%5;
	}
	if(blockID=="thaumcraft:ore_cinnabar")
	{
		event.drops = [<thermalfoundation:material:866>%100];
	}
	if(blockID=="minecraft:redstone_ore")
	{
		event.drops += <nuclearcraft:gem>%15;
	}
	if(blockID=="thaumcraft:ore_cinnabar")
	{
		event.drops = [<thermalfoundation:material:866>%100];
	}
	if((blockID=="immersiveengineering:ore") && (meta==5))
	{
	    event.drops = [<contenttweaker:cluster_pitchblende>%100];
	}
	if((blockID=="thermalfoundation:ore") && (meta==0))
	{
	    event.drops = [<contenttweaker:cluster_chalcopyrite>%100];
	}
	if(blockID=="thaumcraft:stone_porous")
	{
		event.drops = [<minecraft:gravel>%95,<thaumcraft:curio:5>%3,<thaumcraft:curio:3>%2];
	}
	if(blockID=="minecraft:leaves")
	{
		event.drops += <minecraft:stick>%15;
	}
});

events.onEntityLivingDeathDrops(function(event as crafttweaker.event.EntityLivingDeathDropsEvent)
{
    var entityID = event.entity.definition.id;
	if((entityID=="minecraft:zombie")|(entityID=="minecraft:husk"))
	{
		event.addItem(<minecraft:bone>);
	}
});

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent)
{
	var p=event.player;
	var w=p.world as mods.contenttweaker.World;
	var r=w.getRandom();
	if((r.nextInt(1919810)%4000)<1)
	{
		var i=0;
		while (i < 37)
		{
			if(!isNull(p.getInventoryStack(i)))
			{
				var it=p.getInventoryStack(i);
	            var h=it.definition.id;
	            if((h=="botania:rune")&&((it.metadata<16)&&(it.metadata>8)))
				{
	    	    	Commands.call("tc warp @s add 2 TEMP",p,w,false,true);
	                p.sendMessage("§5符文在喃喃低语……不……这不是幻觉……");
		    		return;
                }
			}
		    i=i+1;
		}
	}
});

events.onEntityLivingDeath(function(event as crafttweaker.event.EntityLivingDeathEvent)
{
	var entity = event.entity;
	var NBT = entity.nbt;
	if((entity.definition.id has "doppleganger") && (event.damageSource.trueSource instanceof IPlayer) && (NBT.Attributes[3].Base != 0))
	{
		val player as IPlayer = event.damageSource.trueSource;
		Commands.call("tc warp @s add -18", player, player.world, false, true);
	}
});