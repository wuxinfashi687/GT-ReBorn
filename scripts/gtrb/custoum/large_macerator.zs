/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.06.05
此脚本为大型Mana磨粉机部分
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

var definition as ComponentDefinition = MBDRegistry.getDefinition("gtrb:large_macerator");

# 赛特斯石英磨粉
var ebf = definition as ControllerDefinition;
ebf.recipeMap.start()
    .duration(60)
    .inputFluids(<liquid:liquid_mana>*50)
    .inputItems(<appliedenergistics2:material>)
    .outputItems(<appliedenergistics2:material:2>*2)
    .buildAndRegister();
