/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.11
此脚本为高级火箭移除配方部分
*/


import crafttweaker.item.IItemStack;
import mods.advancedrocketry.PrecisionAssembler;

# 待移除的配方
var ar_items as IItemStack[] = [
    <advancedrocketry:rocketmotor>,
    <advancedrocketry:ic:3>,
    <advancedrocketry:rocketbuilder>,
    <advancedrocketry:fueltank>,
    <advancedrocketry:ic:5>,
    <advancedrocketry:fuelingstation>,
    <advancedrocketry:launchpad>,
    <advancedrocketry:guidancecomputer>,
    <advancedrocketry:structuretower>
];

#循环移除
for i, item in ar_items {
    recipes.remove(item);
}

# 控制芯片
var ar_items1 as IItemStack[] = [
    <advancedrocketry:ic:3>,
    <advancedrocketry:ic:5>,
    <advancedrocketry:ic:1>
];

for i, item in ar_items1 {
    PrecisionAssembler.removeRecipe(item);
}