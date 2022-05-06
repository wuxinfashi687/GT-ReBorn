/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.02
此脚本为植物魔法自定义机器配方部分
*/

# 基础Mana生产器
recipes.addShaped(<gtrb:basic_mana_machine>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<botania:livingrock>, <gregtech:meta_block_frame_1875:4>, <botania:livingrock>], 
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 基础魔法发电机
recipes.addShaped(<gtrb:basic_magic_generator>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<gregtech:meta_item_1:717>, <ore:frameGtMagicOre>, <gregtech:meta_item_1:717>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 基础魔法合金炉
recipes.addShaped(<gtrb:basic_magic_alloy_furnace>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<ore:craftingFurnace>, <ore:frameGtMagicOre>, <ore:craftingFurnace>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);