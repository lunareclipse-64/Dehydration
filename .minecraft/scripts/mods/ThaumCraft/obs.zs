#priority 0
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityEquipmentSlot;
import mods.contenttweaker.Commands;

events.onPlayerInteract(function(event as crafttweaker.event.PlayerInteractEvent){
    if(event.player.world.isRemote()) return;
	val p=event.player;
	val w=p.world;
	val it=p.mainHandHeldItem;
	if(p.isSneaking)
	{
		if(w.isDayTime())
		{
			if(!isNull(it) & it.definition.id == "contenttweaker:empty_celestial_note"){
				if(w.isRaining()){p.sendMessage("灿烂日光为沙尘所遮蔽，我无法记录其耀眼光辉");return;}
				p.setItemToSlot(IEntityEquipmentSlot.mainHand(),<thaumcraft:celestial_notes>);
			}
		}
		if(!w.isDayTime())
		{
			if(w.getMoonPhase()==0){
				if(!isNull(it) & it.definition.id == "contenttweaker:empty_celestial_note"){
					if(w.isRaining()){p.sendMessage("皎洁月光为沙尘所隐去，我无法绘制金盘般的满月");return;}
					p.setItemToSlot(IEntityEquipmentSlot.mainHand(),<thaumcraft:celestial_notes:5>);
			}}
			if(w.getMoonPhase()==1){
				if(!isNull(it) & it.definition.id == "contenttweaker:empty_celestial_note"){
					if(w.isRaining()){p.sendMessage("皎洁月光为沙尘所隐去，我无法绘制清朗的亏凸月");return;}
					p.setItemToSlot(IEntityEquipmentSlot.mainHand(),<thaumcraft:celestial_notes:6>);
			}}
			if(w.getMoonPhase()==2){
				if(!isNull(it) & it.definition.id == "contenttweaker:empty_celestial_note"){
					if(w.isRaining()){p.sendMessage("皎洁月光为沙尘所隐去，我无法绘制清寒的下弦月");return;}
					p.setItemToSlot(IEntityEquipmentSlot.mainHand(),<thaumcraft:celestial_notes:7>);
			}}
			if(w.getMoonPhase()==3){
				if(!isNull(it) & it.definition.id == "contenttweaker:empty_celestial_note"){
					if(w.isRaining()){p.sendMessage("皎洁月光为沙尘所隐去，我无法绘制玉钩般的残月");return;}
					p.setItemToSlot(IEntityEquipmentSlot.mainHand(),<thaumcraft:celestial_notes:8>);
			}}
			if(w.getMoonPhase()==4){
				if(!isNull(it) & it.definition.id == "contenttweaker:empty_celestial_note"){
					if(w.isRaining()){p.sendMessage("新月为沙尘所隐去，我无法绘制其轮廓");return;}
					p.setItemToSlot(IEntityEquipmentSlot.mainHand(),<thaumcraft:celestial_notes:9>);
			}}
			if(w.getMoonPhase()==5){
				if(!isNull(it) & it.definition.id == "contenttweaker:empty_celestial_note"){
					if(w.isRaining()){p.sendMessage("皎洁月光为沙尘所隐去，我无法绘制银钩般蛾眉月");return;}
					p.setItemToSlot(IEntityEquipmentSlot.mainHand(),<thaumcraft:celestial_notes:10>);
			}}
			if(w.getMoonPhase()==6){
				if(!isNull(it) & it.definition.id == "contenttweaker:empty_celestial_note"){
					if(w.isRaining()){p.sendMessage("皎洁月光为沙尘所隐去，我无法绘制清明的上弦月");return;}
					p.setItemToSlot(IEntityEquipmentSlot.mainHand(),<thaumcraft:celestial_notes:11>);
			}}
			if(w.getMoonPhase()==7){
				if(!isNull(it) & it.definition.id == "contenttweaker:empty_celestial_note"){
					if(w.isRaining()){p.sendMessage("皎洁月光为沙尘所隐去，我无法绘制澄莹的盈凸月");return;}
					p.setItemToSlot(IEntityEquipmentSlot.mainHand(),<thaumcraft:celestial_notes:12>);
			}}
		}
	}
});