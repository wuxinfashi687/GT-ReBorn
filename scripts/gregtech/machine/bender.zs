/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.07
此脚本为卷板机部分
*/

import mods.gregtech.recipe.RecipeMap;

///移除配方
// 致密钢板 * 1
<recipemap:bender>.findRecipe(
    96, [<metaitem:plateSteel> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})],
    null)
    .remove();

<recipemap:bender>.findRecipe(
    96, [<metaitem:ingotSteel> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})],
    null)
    .remove();

// 致密不锈钢板 * 1
<recipemap:bender>.findRecipe(
    96, [<metaitem:plateStainlessSteel> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})],
    null)
    .remove();

<recipemap:bender>.findRecipe(
    96, [<metaitem:ingotStainlessSteel> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], 
    null)
    .remove();

// 致密铝板 * 1
<recipemap:bender>.findRecipe(
    96, [<metaitem:plateAluminium> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], 
    null)
    .remove();

<recipemap:bender>.findRecipe(
    96, [<metaitem:ingotAluminium> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], 
    null)
    .remove();

// 致密钛板 * 1
<recipemap:bender>.findRecipe(
    96, [<metaitem:ingotTitanium> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], 
    null)
    .remove();

<recipemap:bender>.findRecipe(
    96, [<metaitem:plateTitanium> * 9, <metaitem:circuit.integrated>.withTag({Configuration: 9})], 
    null)
    .remove();
