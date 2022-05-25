/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.09
此脚本为植物魔法移除配方部分
*/

import mods.gregtech.recipe.RecipeMap;

# 红色科技瓶
chemical_reactor.recipeBuilder()
    .inputs([<ore:dustMagicSteel>, <minecraft:glass_bottle>])
    .fluidInputs([<liquid:dye_red>*100, <liquid:red_alloy>*144])
    .outputs(<gtrb:red_tech_bottle>)
    .duration(160)
    .EUt(18)
    .buildAndRegister();

# 蓝色科技瓶
chemical_reactor.recipeBuilder()
    .inputs([<ore:ingotManasteel>, <minecraft:glass_bottle>])
    .fluidInputs([<liquid:dye_light_blue>*400, <liquid:liquid_mana>*400, <liquid:biomass>*400])
    .outputs(<gtrb:red_tech_bottle>)
    .duration(160)
    .EUt(72)
    .buildAndRegister();