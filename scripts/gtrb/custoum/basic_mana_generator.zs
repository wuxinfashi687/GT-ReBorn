/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.06.05
此脚本为基础Mana发电机部分
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

var definition as ComponentDefinition = MBDRegistry.getDefinition("gtrb:basic_mana_generator");

var ebf = definition as ControllerDefinition;
# LV发电
ebf.recipeMap.start()
    .duration(2)
    .inputFluids(<liquid:liquid_mana>*50)
    .outputEU(32)
    .buildAndRegister();
