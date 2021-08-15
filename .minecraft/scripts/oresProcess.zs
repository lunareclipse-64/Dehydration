#priority 95
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.AlloySmelter as ieSmelter;
import mods.enderio.SagMill;
import mods.enderio.AlloySmelter as eioSmelter;


val oreclustersCrush = {
    <contenttweaker:cluster_chalcopyrite> : <contenttweaker:crushed_chalcopyrite>,
    <contenttweaker:cluster_pitchblende> : <contenttweaker:crushed_pitchblende>,
    <geolosys:cluster> : <ic2:crushed:2>,
    <geolosys:cluster:1> : <ic2:crushed:1>,
    <geolosys:cluster:2> : <ic2:crushed>,
    <geolosys:cluster:3> : <ic2:crushed:5>,
    <geolosys:cluster:4> : <ic2:crushed:4>,
    <geolosys:cluster:5> : <ic2:crushed:3>,
    <geolosys:cluster:6> : <jaopca:item_crushedaluminium>,
    <geolosys:cluster:7> : <jaopca:item_crushednickel>,
    <geolosys:cluster:8> : <jaopca:item_crushedplatinum>,
    <geolosys:cluster:9> : <ic2:crushed:6>,
    <geolosys:cluster:10> : <jaopca:item_crushedzinc>,
    <geolosys:cluster:11> : <jaopca:item_crushedyellorium>,
    <geolosys:cluster:12> : <jaopca:item_crushedosmium>,
    <thermalfoundation:material:866> : <contenttweaker:crushed_cinnabar>
} as IItemStack[IItemStack];
for ore in oreclustersCrush
{
    Crusher.addRecipe(oreclustersCrush[ore]*2, ore, 1.0f, <rockhounding_chemistry:mineral_ores:9>, 0.04);
}

SagMill.addRecipe(
    [<rockhounding_chemistry:chemical_dusts:26>*2,<rockhounding_chemistry:chemical_dusts:45>*4,<jaopca:item_dustsmallplatinum>,<ic2:purified:2>], 
    [1.0f,1.0f,1.0f,0.91f], <contenttweaker:cluster_chalcopyrite>,"NONE",18000);
SagMill.addRecipe(
    [<contenttweaker:purified_pitchblende>*2,<rockhounding_chemistry:oxide_shards:23>,<rockhounding_chemistry:silicate_shards:14>], 
    [1.0f,0.71f,0.37f], <contenttweaker:cluster_pitchblende>,"NONE");
SagMill.addRecipe(
    [<ic2:purified:2>*2,<ic2:purified:2>],
    [1.0f,0.43f], <geolosys:cluster>,"NONE");
SagMill.addRecipe(
    [<rockhounding_chemistry:chemical_dusts:28>*2,<rockhounding_chemistry:chemical_dusts:43>],
    [1.0f,0.56f], <geolosys:cluster:1>,"NONE",15000);
SagMill.addRecipe(
    [<ic2:purified>*2,<rockhounding_chemistry:chemical_dusts:26>],
    [1.0f,0.28f], <geolosys:cluster:2>,"NONE");
SagMill.addRecipe(
    [<ic2:purified:5>*2,<rockhounding_chemistry:chemical_dusts:30>,<rockhounding_chemistry:chemical_dusts:37>],
    [1.0f,0.76f,0.06f], <geolosys:cluster:3>,"NONE");
SagMill.addRecipe(
    [<rockhounding_chemistry:chemical_dusts:43>*2,<rockhounding_chemistry:chemical_dusts:43>,<jaopca:item_dustsmallgold>,<rockhounding_chemistry:chemical_dusts:45>],
    [1.0f,0.21f,0.82f,0.26f], <geolosys:cluster:4>,"NONE",12600);
SagMill.addRecipe(
    [<rockhounding_chemistry:chemical_dusts:31>*2,<rockhounding_chemistry:chemical_dusts:45>*2,<rockhounding_chemistry:chemical_dusts:43>],
    [1.0f,1.0f,0.11f], <geolosys:cluster:5>,"NONE",12100);
SagMill.addRecipe(
    [<jaopca:item_crushedpurifiedaluminium>*2,<rockhounding_chemistry:oxide_shards:7>],
    [1.0f,0.84f], <geolosys:cluster:6>,"NONE");
SagMill.addRecipe(
    [<jaopca:item_crushedpurifiednickel>*2,<jaopca:item_crushedpurifiedmagnesium>],
    [1.0f,0.97f], <geolosys:cluster:7>,"NONE");
SagMill.addRecipe(
    [<rockhounding_chemistry:chemical_dusts:40>*2,<rockhounding_chemistry:chemical_dusts:38>,<rockhounding_chemistry:chemical_dusts:29>],
    [1.0f,0.67f,0.45f], <geolosys:cluster:8>,"NONE",18620);
SagMill.addRecipe(
    [<ic2:purified:6>*2,<rockhounding_chemistry:oxide_shards:23>,<contenttweaker:purified_pitchblende>],
    [1.0f,0.31f,0.17f], <geolosys:cluster:9>,"NONE");
SagMill.addRecipe(
    [<jaopca:item_crushedpurifiedzinc>*2,<rockhounding_chemistry:sulfide_shards:3>],
    [1.0f,0.26f], <geolosys:cluster:10>,"NONE");
SagMill.addRecipe(
    [<jaopca:item_crushedpurifiedyellorium>*2],
    [1.0f], <geolosys:cluster:11>,"NONE");
SagMill.addRecipe(
    [<rockhounding_chemistry:chemical_dusts:38>*2,<rockhounding_chemistry:chemical_dusts:29>,<rockhounding_chemistry:chemical_dusts:40>],
    [1.0f,0.39f,0.27f], <geolosys:cluster:12>,"NONE",15600);
SagMill.addRecipe(
    [<thaumcraft:quicksilver>*2,<rockhounding_chemistry:chemical_dusts:45>*2,<ic2:purified:2>],
    [1.0f,1.0f,0.18f], <thermalfoundation:material:866>,"NONE",6200);
SagMill.addRecipe(
    [<astralsorcery:itemcraftingcomponent:2>*2,<astralsorcery:itemcraftingcomponent:2>,<jaopca:item_dustaquamarine>],
    [1.0f,0.43f,0.84f], <astralsorcery:blockcustomore:1>,"NONE");
SagMill.addRecipe(
    [<rockhounding_chemistry:chemical_dusts:55>],
    [1.0f], <ore:crushedPurifiedYellorium>,"NONE");
SagMill.addRecipe(
    [<rockhounding_chemistry:chemical_items:4>*14,<rockhounding_chemistry:chemical_items:4>*2],
    [1.0f,0.64f], <nuclearcraft:gem:2>,"NONE");
SagMill.addRecipe(
    [<rockhounding_chemistry:chromate_shards:1>],
    [1.0f], <minecraft:redstone>,"NONE");