/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.27
此脚本为研磨配方部分
*/

import mods.gregtech.recipe.RecipeMap;

# 陨石粉
macerator.recipeBuilder()
    .inputs(<gregtech:meta_crushed:30005>*2)
    .outputs([<gregtech:meta_dust_impure:30005>*2, <appliedenergistics2:material:45>])
    .duration(400)
    .EUt(2)
    .buildAndRegister();

<recipemap:macerator>.findRecipe(2, [<metaitem:crushedCoahuilite>], null).remove();
