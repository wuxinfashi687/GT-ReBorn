/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.10
此脚本为组装机配方部分
*/

import mods.gregtech.recipe.RecipeMap;

# 火箭防护板
assembler.recipeBuilder()
    .inputs([
        <ore:plateDenseSteel>*4, <ore:plateDenseStainlessSteel>*4,
        <ore:plateDenseAluminium>*4, <ore:plateDenseTitanium>
        ])
    .fluidInputs(<liquid:liquid_mana>*3000)
    .outputs(<gregtech:meta_plate:30010>)
    .duration(1200)
    .EUt(505)
    .buildAndRegister();
