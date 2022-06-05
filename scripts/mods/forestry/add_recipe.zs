/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.25
此脚本为林业物品部分
*/

#自动收割机
recipes.addShaped(<forestry:farm_crops>, [
    [<tconstruct:clear_glass>, <gregtech:meta_item_1:519>, <tconstruct:clear_glass>],
    [<gregtech:meta_item_1:519>, <gregtech:meta_block_frame_16:4>, <gregtech:meta_item_1:519>],
    [<tconstruct:clear_glass>, <ore:circuitLv>, <tconstruct:clear_glass>]
]);

# 堆肥
recipes.addShaped(<forestry:fertilizer_bio>, [
    [<minecraft:dirt>, <ore:listAllfruit>],
    [null, null]
]);