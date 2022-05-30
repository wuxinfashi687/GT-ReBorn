/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.26
此脚本为AE2配方移除部分
*/

import crafttweaker.item.IItemStack;

# 待移除的配方
var ae2_items as IItemStack[] = [
    <forestry:farm_crops>
];

#循环移除
for i, item in ae2_items {
    recipes.remove(item);
}

# 待移除的配方
var ae2_items2 as IItemStack[] = [
    <threng:material>
];

for i, item in ae2_items2 {
    furnace.remove(item);
}
