/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.26
此脚本为格雷机器全局变量部分
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

# 福卢伊克斯钢锭
electric_blast_furnace.recipeBuilder()
    .inputs(<threng:material:2>)
    .outputs(<threng:material>)
    .duration(400)
    .EUt(256)
    .property("temperature", 800)
    .buildAndRegister();