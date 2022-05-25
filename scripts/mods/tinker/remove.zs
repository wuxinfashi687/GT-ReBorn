/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.25
此脚本为匠魂移除物品部分
*/

import crafttweaker.item.IItemStack;

# 待移除的配方
var tinker_items as IItemStack[] = [
    <tconstruct:smeltery_controller>
];

#循环移除
for i, item in tinker_items {
    recipes.remove(item);
}