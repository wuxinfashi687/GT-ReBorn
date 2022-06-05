/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.26
此脚本为月面土采集工厂配方部分
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

import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;

var definition as ComponentDefinition = MBDRegistry.getDefinition("gtrb:moonturf_collector");

var ebf = definition as ControllerDefinition;
ebf.recipeMap.start()
    .duration(40)
    .inputFluids(<liquid:liquid_mana>*2000)
    .outputItems(<advancedrocketry:moonturf>)
    .inputEU(1024)
    .buildAndRegister();

# 指定月球工作
ebf.setupRecipe = function(recipeLogic as RecipeLogic, recipe as Recipe) as bool {
    var tile = recipeLogic.controller as Controller;
    var world = tile.world as IWorld;
    if (!world.remote) {
        if (world.getDimension() == 3)
        {
            return false;
        }
    }
    return true;
} as ISetupRecipe;