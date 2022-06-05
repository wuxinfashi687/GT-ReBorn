/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.06.05
此脚本为基础魔法合金炉部分
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

var definition as ComponentDefinition = MBDRegistry.getDefinition("gtrb:basic_magic_alloy_furnace");

var ebf = definition as ControllerDefinition;
# 粗钢锭
ebf.recipeMap.start()
    .duration(300)
    .inputFluids(<liquid:liquid_mana>*30)
    .inputItems(<ore:ingotIron>)
    .outputItems(<enderio:item_alloy_endergy_ingot>)
    .buildAndRegister();

# 纯净玻璃
ebf.recipeMap.start()
    .duration(200)
    .inputItems(<minecraft:glass>)
    .outputItems(<enderio:block_fused_glass>)
    .inputFluids(<liquid:liquid_mana>*30)
    .buildAndRegister();