/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.26
此脚本为异构转换台配方部分
*/

#loader multiblocked

import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.Recipe;

import crafttweaker.text.ITextComponent;

var definition as ComponentDefinition = MBDRegistry.getDefinition("gtrb:isomerization_platform");

var ebf = definition as ControllerDefinition;
# 充能赛特斯水晶
ebf.recipeMap.start()
    .duration(300)
    .inputFluids(<liquid:liquid_mana>*80)
    .inputItems(<ore:crystalCertusQuartz>)
    .outputItems(<appliedenergistics2:material:1>)
    .buildAndRegister();