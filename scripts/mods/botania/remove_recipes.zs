/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.01
此脚本为植物魔法移除配方部分
*/

import crafttweaker.item.IItemStack;
import mods.botania.ManaInfusion;

# 待移除的配方
var botania_items as IItemStack[] = [
    <botania:biomestonea:13>,
    <botania:altar>
];

#循环移除
for i, item in botania_items {
    recipes.remove(item);
}

# 魔力池配方移除
ManaInfusion.removeRecipe(<botania:quartz:1>);