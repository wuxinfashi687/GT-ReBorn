/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.05
此脚本为T1阶段GT材料配方部分
*/

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

# 红色合金
recipes.addShaped(<gregtech:meta_dust:2517>, [
    [<ore:dustCopper>, <ore:dustRedstone>, <ore:dustRedstone>],
    [<ore:dustRedstone>, <ore:dustRedstone>, null],
    [null, null, null]
]);

# 木板
recipes.addShaped(<gregtech:meta_plate:1617>, [
    [null, <gregtech:meta_dust:1617>, null],
    [null, <gregtech:meta_dust:1617>, null],
    [null, <gregtech:meta_tool:6>, null]
    ]
);

# 玻璃管
furnace.addRecipe(<gregtech:meta_item_1:517>, <ore:dustGlass>, 1);

# 橡胶板
furnace.addRecipe(<gregtech:meta_ingot:1068>, <ore:dustRubber>, 1);
recipes.addShaped(<gregtech:meta_plate:1068>, [
    [null, <ore:ingotRubber>, null],
    [null, <ore:ingotRubber>, null],
    [null, <gregtech:meta_tool:6>, null]
]);
