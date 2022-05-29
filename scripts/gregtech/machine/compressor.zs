/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.29
此脚本为压缩机部分
*/

import mods.gregtech.recipe.RecipeMap;

# x64红色科技瓶
compressor.recipeBuilder()
    .inputs(<gtrb:red_tech_bottle>*64)
    .outputs(<gtrb:red_tech_bottle_x64>)
    .duration(400)
    .EUt(2)
    .buildAndRegister();

# x64蓝色科技瓶
compressor.recipeBuilder()
    .inputs(<gtrb:blue_tech_bottle>*64)
    .outputs(<gtrb:blue_tech_bottle_x64>)
    .duration(400)
    .EUt(8)
    .buildAndRegister();

# x64黄色科技瓶
compressor.recipeBuilder()
    .inputs(<gtrb:yellow_tech_bottle>*64)
    .outputs(<gtrb:yellow_tech_bottle_x64>)
    .duration(400)
    .EUt(32)
    .buildAndRegister();