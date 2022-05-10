/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.11
此脚本为搅拌机部分
*/

import mods.gregtech.recipe.RecipeMap;

///移除配方
// 火箭燃料 * 3000
<recipemap:mixer>.findRecipe(
    16, null, [<liquid:oxygen> * 1000, <liquid:dimethylhydrazine> * 1000]
    ).remove();

<recipemap:mixer>.findRecipe(
    16, null, [<liquid:dinitrogen_tetroxide> * 1000, <liquid:dimethylhydrazine> * 1000]
    ).remove();

