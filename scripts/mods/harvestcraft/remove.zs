/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.09
此脚本为潘马斯农场移除配方部分
*/

import crafttweaker.item.IItemStack;

# 待移除的配方
var harvestcraft_items as IItemStack[] = [
    <harvestcraft:waterfilter>
];

#循环移除
for i, item in harvestcraft_items {
    recipes.remove(item);
}