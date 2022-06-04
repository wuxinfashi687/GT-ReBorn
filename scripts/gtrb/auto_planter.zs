/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.30
此脚本为自动种植站配方部分
*/

#loader multiblocked

import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.Recipe;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.tile.Controller;
import mods.multiblocked.functions.IUpdateTick;

import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlock;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

var definition as ComponentDefinition = MBDRegistry.getDefinition("gtrb:auto_planter");

var ebf = definition as ControllerDefinition;

# 自动种植
var seed as IItemStack[] = [
    <harvestcraft:spinachseeditem>,
    <harvestcraft:kiwiseeditem>,
    <harvestcraft:cabbageseeditem>,
    <harvestcraft:cornseeditem>,
    <harvestcraft:cucumberseeditem>,
    <harvestcraft:onionseeditem>,
    <harvestcraft:artichokeseeditem>,
    <harvestcraft:cottonseeditem>,
    <harvestcraft:cactusfruitseeditem>,
    <harvestcraft:elderberryseeditem>,
    <harvestcraft:spiceleafseeditem>,
    <harvestcraft:arrowrootseeditem>,
    <harvestcraft:kohlrabiseeditem>,
    <harvestcraft:mustardseeditem>,
    <harvestcraft:candleberryseeditem>,
    <harvestcraft:beetseeditem>,
    <harvestcraft:beanseeditem>,
    <harvestcraft:eggplantseeditem>,
    <harvestcraft:gigapickleseeditem>,
    <harvestcraft:raspberryseeditem>,
    <harvestcraft:blueberryseeditem>,
    <harvestcraft:chilipepperseeditem>,
    <harvestcraft:grapeseeditem>,
    <harvestcraft:mulberryseeditem>,
    <harvestcraft:lettuceseeditem>,
    <harvestcraft:tomatilloseeditem>,
    <harvestcraft:curryleafseeditem>,
    <harvestcraft:quinoaseeditem>,
    <harvestcraft:milletseeditem>,
    <harvestcraft:rhubarbseeditem>,
    <harvestcraft:gingerseeditem>,
    <harvestcraft:asparagusseeditem>,
    <harvestcraft:cantaloupeseeditem>,
    <harvestcraft:wintersquashseeditem>,
    <harvestcraft:rutabagaseeditem>,
    <harvestcraft:brusselsproutseeditem>,
    <harvestcraft:okraseeditem>,
    <harvestcraft:sesameseedsseeditem>,
    <harvestcraft:cauliflowerseeditem>,
    <harvestcraft:radishseeditem>,
    <harvestcraft:broccoliseeditem>,
    <harvestcraft:zucchiniseeditem>,
    <harvestcraft:tomatoseeditem>,
    <harvestcraft:scallionseeditem>,
    <harvestcraft:juteseeditem>,
    <harvestcraft:sisalseeditem>,
    <harvestcraft:waterchestnutseeditem>,
    <harvestcraft:bambooshootseeditem>,
    <harvestcraft:flaxseeditem>,
    <harvestcraft:celeryseeditem>,
    <harvestcraft:peasseeditem>,
    <harvestcraft:cassavaseeditem>,
    <harvestcraft:peanutseeditem>,
    <harvestcraft:teaseeditem>,
    <harvestcraft:taroseeditem>,
    <harvestcraft:parsnipseeditem>,
    <harvestcraft:soybeanseeditem>,
    <harvestcraft:garlicseeditem>,
    <harvestcraft:coffeeseeditem>, 
    <harvestcraft:oatsseeditem>,
    <harvestcraft:jicamaseeditem>,
    <harvestcraft:strawberryseeditem>,
    <harvestcraft:seaweedseeditem>,
    <harvestcraft:barleyseeditem>,
    <harvestcraft:kenafseeditem>,
    <harvestcraft:whitemushroomseeditem>,
    <harvestcraft:riceseeditem>,
    <harvestcraft:lentilseeditem>,
    <harvestcraft:sweetpotatoseeditem>,
    <harvestcraft:leekseeditem>,
    <harvestcraft:agaveseeditem>,
    <harvestcraft:amaranthseeditem>,
    <harvestcraft:chickpeaseeditem>,
    <harvestcraft:greengrapeseeditem>,
    <harvestcraft:pineappleseeditem>,
    <harvestcraft:blackberryseeditem>,
    <harvestcraft:huckleberryseeditem>,
    <harvestcraft:juniperberryseeditem>,
    <harvestcraft:cranberryseeditem>,
    <harvestcraft:bellpepperseeditem>,
    <harvestcraft:turnipseeditem>,
    <harvestcraft:kaleseeditem>,
    <harvestcraft:ryeseeditem>
];

var f as IItemStack[] = [
    <harvestcraft:spinachitem>, 
    <harvestcraft:kiwiitem>, 
    <harvestcraft:cabbageitem>,
    <harvestcraft:cornitem>,
    <harvestcraft:cucumberitem>,
    <harvestcraft:onionitem>,
    <harvestcraft:artichokeitem>,
    <harvestcraft:cottonitem>,
    <harvestcraft:cactusfruititem>,
    <harvestcraft:elderberryitem>,
    <harvestcraft:spiceleafitem>,
    <harvestcraft:arrowrootitem>,
    <harvestcraft:kohlrabiitem>,
    <harvestcraft:mustarditem>,
    <harvestcraft:candleberryitem>,
    <harvestcraft:beetitem>,
    <harvestcraft:beanitem>,
    <harvestcraft:eggplantitem>,
    <harvestcraft:gigapickleitem>,
    <harvestcraft:raspberryitem>,
    <harvestcraft:blueberryitem>,
    <harvestcraft:chilipepperitem>,
    <harvestcraft:grapeitem>,
    <harvestcraft:mulberryitem>,
    <harvestcraft:lettuceitem>,
    <harvestcraft:tomatilloitem>,
    <harvestcraft:curryleafitem>,
    <harvestcraft:quinoaitem>,
    <harvestcraft:milletitem>,
    <harvestcraft:rhubarbitem>,
    <harvestcraft:gingeritem>,
    <harvestcraft:asparagusitem>,
    <harvestcraft:cantaloupeitem>,
    <harvestcraft:wintersquashitem>,
    <harvestcraft:rutabagaitem>,
    <harvestcraft:brusselsproutitem>,
    <harvestcraft:okraitem>,
    <harvestcraft:sesameseedsitem>,
    <harvestcraft:caulifloweritem>,
    <harvestcraft:radishitem>,
    <harvestcraft:broccoliitem>,
    <harvestcraft:zucchiniitem>,
    <harvestcraft:tomatoitem>,
    <harvestcraft:scallionitem>,
    <harvestcraft:juteitem>,
    <harvestcraft:sisalitem>,
    <harvestcraft:waterchestnutitem>,
    <harvestcraft:bambooshootitem>,
    <harvestcraft:flaxitem>,
    <harvestcraft:celeryitem>,
    <harvestcraft:peasitem>,
    <harvestcraft:cassavaitem>,
    <harvestcraft:peanutitem>,
    <harvestcraft:teaitem>,
    <harvestcraft:taroitem>,
    <harvestcraft:parsnipitem>,
    <harvestcraft:soybeanitem>,
    <harvestcraft:garlicitem>,
    <harvestcraft:coffeeitem>,
    <harvestcraft:oatsitem>,
    <harvestcraft:jicamaitem>,
    <harvestcraft:strawberryitem>,
    <harvestcraft:seaweeditem>,
    <harvestcraft:barleyitem>,
    <harvestcraft:kenafitem>,
    <harvestcraft:whitemushroomitem>,
    <harvestcraft:riceitem>,
    <harvestcraft:lentilitem>,
    <harvestcraft:sweetpotatoitem>,
    <harvestcraft:leekitem>,
    <harvestcraft:agaveitem>,
    <harvestcraft:amaranthitem>,
    <harvestcraft:chickpeaitem>,
    <harvestcraft:greengrapeitem>,
    <harvestcraft:pineappleitem>,
    <harvestcraft:blackberryitem>,
    <harvestcraft:huckleberryitem>,
    <harvestcraft:juniperberryitem>,
    <harvestcraft:cranberryitem>,
    <harvestcraft:bellpepperitem>,
    <harvestcraft:turnipitem>,
    <harvestcraft:kaleitem>,
    <harvestcraft:ryeitem>
];


for index in 0 to seed.length {

    ebf.recipeMap.start()
        .inputItems(seed[index])
        .outputItems(f[index]*2)
        .inputEU(12)
        .duration(120)
        .buildAndRegister();
}

# 检测附近植物
/*ebf.setupRecipe = function(recipeLogic as RecipeLogic, recipe as Recipe) as bool {
    var tile = recipeLogic.controller as Controller;
    var world = tile.world as IWorld;
    var pos = tile.pos as IBlockPos;
    var player = tile.player as IPlayer;
    var x = pos.x as int;
    var y = pos.y as int;
    var z = pos.z as int;
    if (!world.remote)
    {
        var block as IBlock = world.getBlock(x, y-1, z);
        var name as string = block.definition.id;
        player.sendChat(name);
        if ("" == "minecraft:grass")
            return true;
    }
    return false;
} as ISetupRecipe;*/