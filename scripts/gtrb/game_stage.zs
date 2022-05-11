/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.04
此脚本为游戏阶段部分
*/

# priority 8998

import mods.recipestages.Recipes.setRecipeStage;
import crafttweaker.item.IItemStack;

# 基础植物学
var basic_botania_items as IItemStack[] = [
    <gtrb:basic_mana_machine>,
    <gtrb:basic_magic_alloy_furnace>,
    <gtrb:basic_mana_generator>,
    <gtrb:centrifuge>,
    <gtrb:basic_magic_generator>
];

for i, item in basic_botania_items {
    setRecipeStage("basic_botania", item);
}

# 基础魔法控制理论
var botania_auto_control_items as IItemStack[] = [
    <gtrb:basic_mana_item_output_bus>,
    <gtrb:basic_living_rock_block>,
    <gtrb:basic_living_wood_block>,
    <gtrb:basic_mana_input_bus>,
    <gtrb:basic_mana_output_bus>
];

for i, item in botania_auto_control_items {
    setRecipeStage("botania_auto_control", item);
}

# 基础植魔自动化装置
var basic_botania_auto_machine_items as IItemStack[] = [
    <gtrb:large_macerator>,
    <gtrb:basic_mana_generator>,
    <gtrb:isomerization_platform>
];

for i, item in basic_botania_auto_machine_items {
    setRecipeStage("basic_botania_auto_machine", item);
}