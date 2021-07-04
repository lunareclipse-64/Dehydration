#priority 100
import mods.botaniatweaks.Agglomeration;
import mods.botania.ElvenTrade;
import mods.botania.RuneAltar;
import mods.botania.Apothecary;
import mods.botania.ManaInfusion;
import mods.botania.Brew;

recipes.addShaped(<botania:hourglass>, 
[[<ore:ingotGold>, <ore:dyeRed>, <ore:ingotGold>], 
[<botania:managlass>, <ore:ingotManasteel>, <botania:managlass>], 
[<ore:ingotGold>, null, <ore:ingotGold>]]);

recipes.addShaped(<botania:altar>, 
[[<minecraft:stone_slab>, null, <minecraft:stone_slab>], 
[<minecraft:stone_slab>, <minecraft:stone>, <minecraft:stone_slab>], 
[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);

recipes.addShaped(<botania:lexicon>, 
[[<ore:paper>, <botania:dye:15>, <ore:paper>], 
[<ore:paper>, <botania:twigwand>.reuse(), <ore:paper>], 
[<ore:paper>, <botania:dye:15>, <ore:paper>]]);

recipes.addShaped(<botania:manaresource:3>, 
[[<botania:livingwood:1>, <primal:copper_strand>, <botania:livingwood:1>], 
[null, <ore:livingwood>, null], 
[<botania:livingwood:1>, null, null]]);

recipes.addShaped(<contenttweaker:empty_manarune>, 
[[<botania:rune:3>.reuse(), null, <botania:rune:1>.reuse()], 
[null, <botania:livingrock:1>, null], 
[<botania:rune:2>.reuse(), null, <botania:rune>.reuse()]]);

recipes.addShaped(<botania:alchemycatalyst>, 
[[<botania:livingrock0slab>, <astralsorcery:itemusabledust>, <botania:livingrock0slab>], 
[<astralsorcery:itemusabledust>, <minecraft:brewing_stand>, <astralsorcery:itemusabledust>], 
[<botania:livingrock0slab>, <contenttweaker:effulgent_crystal>, <botania:livingrock0slab>]]);

recipes.addShaped(<botania:lens>, 
[[null, <botania:manaresource:17>, null],
[<botania:manaresource:17>, <astralsorcery:itemcraftingcomponent:3>, <botania:manaresource:17>], 
[null, <botania:manaresource:17>, null]]);

recipes.addShaped(<botania:prism>, 
[[<minecraft:glass_pane>, <botania:platform:1>, <minecraft:glass_pane>],
[<minecraft:glass_pane>, <contenttweaker:effulgent_crystal>, <minecraft:glass_pane>], 
[<minecraft:glass_pane>, <botania:platform:1>, <minecraft:glass_pane>]]);

//花药台
Apothecary.addRecipe("endoflame",
[<botania:petal:12>,<botania:petal:12>,<botania:petal:4>,<astralsorcery:itemcraftingcomponent:2>,<botania:rune:1>,<ore:dustCoal>,<botania:rune:3>]);

Apothecary.addRecipe("thermalily",
[<botania:petal:14>,<botania:petal:14>,<botania:petal:1>,<astralsorcery:itemcraftingcomponent:2>,<botania:rune:1>,<astralsorcery:itemusabledust>,<botania:rune:2>]);

Apothecary.addRecipe("gourmaryllis",
[<botania:petal:8>,<botania:petal:8>,<botania:petal:4>,<astralsorcery:itemcraftingcomponent:2>,<botania:rune:5>,<thaumcraft:hungry_chest>,<botania:rune:10>]);

Apothecary.addRecipe("munchdew",
[<botania:petal:5>,<botania:petal:5>,<botania:petal:14>,<astralsorcery:itemcraftingcomponent:2>,<botania:rune:6>,<thaumcraft:leaves_silverwood>,<botania:rune:10>]);

Apothecary.addRecipe("narslimmus",
[<botania:petal:5>,<botania:petal:5>,<botania:petal:13>,<astralsorcery:itemcraftingcomponent:2>,<botania:rune>,<toughasnails:jelled_slime>,<botania:rune:5>]);

Apothecary.addRecipe("kekimurus",
[<botania:petal>,<botania:petal>,<botania:petal:12>,<botania:manaresource:8>,<botania:rune:7>,<minecraft:cake>,<botania:rune:10>]);

Apothecary.addRecipe("spectrolus",
[<botania:petal:14>,<botania:petal:13>,<botania:petal:11>,<botania:manaresource:8>,<botania:rune:4>,<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "Tinctura"}]}),<botania:rune:8>]);

Apothecary.addRecipe("rafflowsia",
[<botania:petal:10>,<botania:petal:10>,<botania:petal:13>,<botania:manaresource:8>,<botania:rune:2>,<botania:grassseeds:3>,<botania:rune:15>]);

Apothecary.addRecipe("arcanerose",
[<botania:petal:2>,<botania:petal:2>,<botania:petal:13>,<botania:manaresource:8>,<botania:rune:8>,<actuallyadditions:item_solidified_experience>,<botania:rune:11>]);

Apothecary.addRecipe("entropinnyum",
[<botania:petal:14>,<botania:petal:14>,<botania:petal:7>,<botania:manaresource:5>,<botania:rune:1>,<minecraft:gunpowder>,<botania:rune:13>]);

Apothecary.addRecipe("shulk_me_not",
[<botania:petal:10>,<botania:petal:10>,<botania:petal:8>,<botania:manaresource:5>,<botania:rune:14>,<minecraft:shulker_shell>,<botania:rune:13>]);

Apothecary.addRecipe("dandelifeon",
[<botania:petal:5>,<botania:petal:5>,<botania:petal:6>,<botania:manaresource:5>,<botania:rune:4>,<minecraft:shulker_shell>,<botania:rune:6>]);

Apothecary.addRecipe(<biomesoplenty:sapling_0:5>,
[<minecraft:wheat>,<forestry:fertilizer_bio>]);

Apothecary.addRecipe(<primal:rush_seeds>,
[<ic2:crafting:20>,<minecraft:tallgrass:1>,<minecraft:wheat>,<minecraft:tallgrass:1>]);

Apothecary.addRecipe(<botania:fertilizer>,
[<minecraft:dye:11>,<minecraft:dye:1>,<ic2:crafting:20>,<minecraft:dye:15>]);

Apothecary.addRecipe(<minecraft:sapling:2>,
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}),<minecraft:sapling>,<botania:rune:3>,<thaumcraft:salis_mundus>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]}),<ic2:crafting:20>,<astralsorcery:itemcraftingcomponent:2>]);

Apothecary.addRecipe(<minecraft:sapling:4>,
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}),<minecraft:sapling>,<botania:rune:1>,<thaumcraft:salis_mundus>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]}),<ic2:crafting:20>,<astralsorcery:itemusabledust>]);

Apothecary.addRecipe(<minecraft:sapling:3>,
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}),<minecraft:sapling>,<botania:rune>,<thaumcraft:salis_mundus>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]}),<ic2:crafting:20>,<botania:manaresource:23>]);

Apothecary.addRecipe(<minecraft:sapling:1>,
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}),<minecraft:sapling>,<botania:rune:2>,<thaumcraft:salis_mundus>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]}),<ic2:crafting:20>,<astralsorcery:itemusabledust:1>]);

Apothecary.addRecipe(<botania:grassseeds:4>,
[<minecraft:wheat>,<ic2:crafting:20>,<botania:petal:1>]);

Apothecary.addRecipe(<botania:grassseeds:5>,
[<minecraft:dye:2>,<ic2:crafting:20>,<botania:petal:13>]);

Apothecary.addRecipe(<botania:grassseeds:6>,
[<minecraft:blaze_powder>,<ic2:crafting:20>,<botania:petal:14>]);

Apothecary.addRecipe(<botania:grassseeds:7>,
[<minecraft:prismarine_crystals>,<ic2:crafting:20>,<botania:petal:9>]);

Apothecary.addRecipe(<botania:grassseeds:8>,
[<minecraft:fermented_spider_eye>,<ic2:crafting:20>,<botania:petal:10>]);

Apothecary.addRecipe(<thaumcraft:sapling_greatwood>,
[<minecraft:sapling:1>,<minecraft:sapling:2>,<minecraft:sapling:3>,<minecraft:sapling:4>,<thaumcraft:salis_mundus>]);

//魔力池
ManaInfusion.removeRecipe(<minecraft:nether_wart>);

ManaInfusion.addInfusion(<botania:manaresource:23>,<astralsorcery:itemusabledust>,5000);
ManaInfusion.addInfusion(<minecraft:sapling>,<biomesoplenty:sapling_0:5>,10000);
ManaInfusion.addInfusion(<contenttweaker:mana_crystal>,<contenttweaker:mesh_lump>,10000);
ManaInfusion.addInfusion(<botania:manaresource>,<thaumcraft:ingot>,3846);

ManaInfusion.addAlchemy(<minecraft:prismarine_shard>, <rftools:dimensional_shard>, 16498);

//符文祭坛
RuneAltar.addRecipe(<botania:rune>*2,
[<botania:manaresource:23>,<astralsorcery:itemusabledust>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}),<primal:thatch_wet>,<toughasnails:purified_water_bottle>],5000);

RuneAltar.addRecipe(<botania:rune:1>*2,
[<botania:manaresource:23>,<astralsorcery:itemusabledust>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<ore:blockCharcoal>,<minecraft:obsidian>],5000);

RuneAltar.addRecipe(<botania:rune:2>*2,
[<botania:manaresource:23>,<astralsorcery:itemusabledust>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}),<forestry:loam>,<primal:adobe_brick_dry>],5000);

RuneAltar.addRecipe(<botania:rune:3>*2,
[<botania:manaresource:23>,<astralsorcery:itemusabledust>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),<minecraft:glass>,<minecraft:web>],5000);

RuneAltar.addRecipe(<botania:rune:8>,
[<botania:manaresource>,<astralsorcery:itemcraftingcomponent>,<thaumcraft:plate:2>,<botania:manaresource>,<botania:manaresource:1>,<thaumcraft:nitor_magenta>],15000);

RuneAltar.addRecipe(<minecraft:blaze_rod>,
[<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]})],10000);


ElvenTrade.addRecipe([<contenttweaker:effulgent_crystal>],[<contenttweaker:infused_crystal>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]})]);
ElvenTrade.addRecipe([<contenttweaker:mana_crystal>],[<astralsorcery:itemcraftingcomponent>,<botania:manaresource>]);
ElvenTrade.addRecipe([<botania:manaresource:7>], [<botania:manaresource>,<botania:manaresource>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]})]);
ElvenTrade.addRecipe([<botania:storage:2>], [<botania:storage>,<botania:storage>,<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "praecantatio"}]})]);
ElvenTrade.addRecipe([<contenttweaker:edge_upgrade>],[<contenttweaker:corner_upgrade>,<astralsorcery:itemusabledust:1>]);
ElvenTrade.addRecipe([<contenttweaker:corner_upgrade>],[<contenttweaker:edge_upgrade>,<astralsorcery:itemusabledust>]);
ElvenTrade.addRecipe([<contenttweaker:crystal_nucleus>],[<astralsorcery:itemcraftingcomponent>*3,<contenttweaker:soda>]);
ElvenTrade.addRecipe([<minecraft:dirt>],[<biomesoplenty:dirt:1>]);
ElvenTrade.addRecipe([<minecraft:crafting_table>],[<forestry:wood_pile>,<ore:nuggetIron>]);
ElvenTrade.addRecipe([<minecraft:netherbrick>],[<minecraft:brick>,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]})]);


Agglomeration.removeRecipe(<botania:manaresource:4>,[<botania:manaresource>,<botania:manaresource:2>,<botania:manaresource:1>]);

Agglomeration.addRecipe(<botania:manaresource:4>,
[<botania:manaresource>,<botania:manaresource:2>,<botania:manaresource:1>],
420000,0x0000FF,0x00FF00,
<bloodmagic:ritual_stone:3>,<chisel:lapis:2>,<botania:livingrock:4>,
<bloodmagic:ritual_stone>,<chisel:lapis:2>,<botania:livingrock:4>);

Agglomeration.addRecipe(<modularmachinery:itemmodularium>*3,
[<astralsorcery:itemusabledust>,<thaumcraft:ingot>,<bloodmagic:item_demon_crystal:1>],
60000,0x51437C,0xA1FFF7,
<botania:storage:2>,<chisel:lapis:2>,<botania:livingrock:4>,
<botania:storage:2>,<chisel:lapis:2>,<botania:livingrock:4>);

Agglomeration.addRecipe(<appliedenergistics2:material:20>,
[<logisticspipes:chip_basic>,<ore:itemSilicon>,<contenttweaker:magical_projector>],
100000,0xB0C4DE,0xC0C0C0,
<botania:prism>,<chisel:lapis:2>,<appliedenergistics2:quartz_vibrant_glass>,
<botania:prism>,<chisel:lapis:2>,<appliedenergistics2:quartz_glass>);

Agglomeration.addRecipe(<contenttweaker:ultimate_crystal>*3,
[<contenttweaker:mana_crystal>,<contenttweaker:infused_crystal>,<contenttweaker:effulgent_crystal>,<contenttweaker:vivid_crystal>,<thaumcraft:salis_mundus>],
619573,0xC233FF,0xC233FF,
<rockhounding_chemistry:alloy_blocks_deco:9>,<chisel:lapis:2>,<astralsorcery:blockcustomore:1>,
<rockhounding_chemistry:alloy_blocks_deco:9>,<chisel:lapis:2>,<minecraft:stone>);


Brew.addRecipe([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "motus"}]}), <minecraft:redstone>], "speed");
Brew.addRecipe([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "victus"}]}), <minecraft:glowstone_dust>], "healing");
Brew.addRecipe([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vacuos"}]}), <astralsorcery:itemcraftingcomponent:2>], "clear");
Brew.addRecipe([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "fabrico"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "praemunio"}]}), <ore:dustCopper>], "resistance");
Brew.addRecipe([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aversio"}]}), <minecraft:blaze_powder>], "strength");
Brew.addRecipe([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praemunio"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "desiderium"}]}), <ore:dustGold>], "absorption");
Brew.addRecipe([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "instrumentum"}]}), <minecraft:sugar>], "haste");
Brew.addRecipe([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aer"}]}), <minecraft:sugar>], "jumpBoost");
Brew.addRecipe([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "auram"}]}),<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "victus"}]}), <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "exanimis"}]}), <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust:1>], "overload");

