#priority 11
import mods.jei.JEI.addDescription as info;
import crafttweaker.game.IGame;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

<avaritia:resource:5>.displayName="万物信息数据压缩集成包";
<avaritia:resource:2>.displayName="数据碎片";
<avaritia:resource:3>.displayName="数据包";
<avaritia:resource:4>.displayName="数据块";
<avaritia:resource>.displayName="水之网";
<avaritia:resource:1>.displayName="水源锭";
<avaritia:cosmic_meatballs>.displayName="数据压缩包-肉类";
<avaritia:ultimate_stew>.displayName="数据压缩包-蔬菜";
<avaritia:block_resource:1>.displayName="数据包-已完成";
<avaritia:endest_pearl>.displayName="数据压缩包-末影";
<avaritia:infinity_sword>.displayName="星辰之剑";
<avaritia:infinity_shovel>.displayName="虚空之铲";
<avaritia:infinity_bow>.displayName="霜凌之弓";
<avaritia:infinity_pickaxe>.displayName="集成之镐";
<avaritia:infinity_axe>.displayName="魁拔之斧";
<avaritia:block_resource:2>.displayName="高压水矩阵";
<forestry:propolis:1>.displayName="粘胶";
<ic2:crafting:20>.displayName="植物愈伤组织";
<primal:dirt_stick>.displayName="沙石杆";
<nuclearcraft:gem_dust:11>.displayName="沙石碎片";
<primal:plant_fiber_pulp>.displayName="纤维纸浆";
<botania:manaresource:23>.displayName="蕴能粉尘";
<rockhounding_chemistry:misc_blocks_a:12>.displayName="天然盐碱";
<minecraft:quartz>.displayName="石英";
<geolosys:ore_vanilla:1>.displayName="红石矿";
<geolosys:ore_sample_vanilla:1>.displayName="红石样本";
<geolosys:ore_sample:10>.displayName="石英水晶样本";
<geolosys:ore_sample_vanilla:4>.displayName="脉石英样本";
<forestry:resources>.displayName="磷灰石";
<thaumcraft:ore_quartz>.displayName="石英";
<thaumcraft:ore_cinnabar>.displayName="朱砂";
<immersiveengineering:ore:5>.displayName="沥青铀矿";
<minecraft:coal_ore>.displayName="煤炭";
<minecraft:redstone_ore>.displayName="红石矿";
<modularmachinery:itemblueprint>.displayName="机械图纸";
<geolosys:ore_sample:5>.displayName="不明样本";
<modularmachinery:blockcasing:5>.displayName="机械处理器";
<nuclearcraft:part:8>.displayName="钢外壳电动马达";
<rockhounding_chemistry:ingot_pattern>.displayName="铸锭模具";
<thaumcraft:flesh_block>.displayName="血肉方块";
<nuclearcraft:alloy:2>.displayName="临界碳锭";

<minecraft:dirt>.addTooltip("家乡的感觉");
<contenttweaker:speed_gel>.addTooltip("速度 II (1:40)");
<contenttweaker:eraese_gel>.addTooltip("赦免");
<contenttweaker:instheal_gel>.addTooltip("瞬间治疗 II");
<contenttweaker:resistance_gel>.addTooltip("抗性提升 II (1:40)");
<contenttweaker:strength_gel>.addTooltip("力量 II (1:40)");
<contenttweaker:absorption_gel>.addTooltip("伤害吸收 IV (1:40)");
<contenttweaker:haste_gel>.addTooltip("急迫 II (1:40)");
<contenttweaker:jumpboost_gel>.addTooltip("跳跃提升 II (1:40)");
<contenttweaker:overload_gel>.addTooltip("力量 IV (1:40)");
<contenttweaker:overload_gel>.addTooltip("速度 III (1:40)");
<contenttweaker:overload_gel>.addTooltip("§4虚弱 II §r(2:40)");
<contenttweaker:overload_gel>.addTooltip("§4饥饿 III §r(0:09)");
<thaumcraft:amber>.addTooltip("可用铁瓜锤砸碎煤炭获得小撮粉");
<jaopca:item_dustamber>.addTooltip("可用铁瓜锤砸碎煤炭获得小撮粉");
<jaopca:item_dusttinyamber>.addTooltip("可用铁瓜锤砸碎煤炭获得");
<contenttweaker:zerconia>.addShiftTooltip("§b主要成分ZrO2");
<contenttweaker:zerconia>.addShiftTooltip("§b可以用于商业骗局或自欺欺人");
<contenttweaker:above_note>.addTooltip("右键以阅读其上内容");

val addInfo = {
    <advancedrocketry:blocklens>:"可使用玻璃刀采集",
    <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:chloridizing_furnace"}) : "主手持黑纸右键§2氯气流体方块§r获得",
    <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:orbital_transceiver"}) : "将黑纸丢到激活的信标上获得",
    <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:tech_substance"}) : "顶部的物品展示台内需要放入一个高级火箭的透镜",
    <extrautils2:passivegenerator> : "用§5精灵青金石§r右键切换为月光面板",
    <extrautils2:passivegenerator:1> : "用§3魔力青金石§r右键切换为太阳能面板"
} as string[IItemStack];
for item in addInfo{info(item,addInfo[item]);}