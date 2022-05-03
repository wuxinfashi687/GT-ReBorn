/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.04
此脚本为游戏阶段部分
*/

# priority 8998

import mods.recipestages.Recipes.setRecipeStage;
import crafttweaker.item.IItemStack;

# 基础植物学
var basic_botania_items as IItemStack[] = [
    <gtrb:basic_mana_machine>
];

for i, item in basic_botania_items {
    setRecipeStage("basic_botania", item);
}