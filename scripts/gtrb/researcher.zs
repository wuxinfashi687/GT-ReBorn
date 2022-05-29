/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.29
此脚本为研究站配方部分
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

var definition as ComponentDefinition = MBDRegistry.getDefinition("gtrb:researcher");

var ebf = definition as ControllerDefinition;
# 基础植魔凭证
ebf.recipeMap.start()
    .inputItems(<botania:livingrock>*8)
    .outputItems(<gtrb:basic_botania_card>)
    .duration(1800)
    .buildAndRegister();

# 植魔自动控制凭证
ebf.recipeMap.start()
    .duration(1800)
    .inputItems(<gtrb:red_tech_bottle>*64)
    .inputItems(<ore:circuitLv>)
    .outputItems(<gtrb:botania_auto_control_card>)
    .inputEU(16)
    .buildAndRegister();

ebf.recipeMap.start()
    .duration(1800)
    .inputItems(<gtrb:red_tech_bottle_x64>*1)
    .inputItems(<ore:circuitLv>)
    .outputItems(<gtrb:botania_auto_control_card>)
    .inputEU(16)
    .buildAndRegister();

# 基础植魔自动装置凭证
ebf.recipeMap.start()
    .duration(1800)
    .inputItems(<gtrb:red_tech_bottle>*128)
    .inputItems(<ore:circuitLv>)
    .outputItems(<gtrb:basic_botania_auto_machine_card>)
    .inputEU(16)
    .buildAndRegister();

ebf.recipeMap.start()
    .duration(1800)
    .inputItems(<gtrb:red_tech_bottle_x64>*2)
    .inputItems(<ore:circuitLv>)
    .outputItems(<gtrb:basic_botania_auto_machine_card>)
    .inputEU(16)
    .buildAndRegister();