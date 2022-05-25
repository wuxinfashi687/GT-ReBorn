/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.25
此脚本为林业删除物品部分
*/

import crafttweaker.item.IItemStack;

# 待移除的配方
var forestry_items as IItemStack[] = [
    <forestry:farm_crops>
];

#循环移除
for i, item in forestry_items {
    recipes.remove(item);
}