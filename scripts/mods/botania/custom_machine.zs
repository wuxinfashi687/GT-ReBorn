/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.02
此脚本为植物魔法自定义机器配方部分
*/

# 基础Mana生产器
recipes.addShaped(<gtrb:basic_mana_machine>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<botania:livingrock>, <ore:frameGtMagicOre>, <botania:livingrock>], 
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 基础魔法发电机
recipes.addShaped(<gtrb:basic_magic_generator>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<libvulpes:coil0:4>, <ore:frameGtMagicOre>, <libvulpes:coil0:4>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 基础魔法合金炉
recipes.addShaped(<gtrb:basic_magic_alloy_furnace>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<ore:craftingFurnace>, <ore:frameGtMagicOre>, <ore:craftingFurnace>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 基础mana离心机
recipes.addShaped(<gtrb:centrifuge>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<ore:plateDoubleMagicOre>, <ore:frameGtMagicOre>, <ore:plateDoubleMagicOre>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 活石机械方块
recipes.addShaped(<gtrb:basic_living_rock_block>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<ore:plateMagicOre>, <gregtech:machine:986>, <ore:plateMagicOre>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 基础mana输入仓
recipes.addShaped(<gtrb:basic_mana_output_bus>, [
    [null, <botania:managlass>, null],
    [null, <gtrb:basic_living_rock_block>, null],
    [null, null, null]
]);

# 基础mana输出总线
recipes.addShaped(<gtrb:basic_mana_item_output_bus>, [
    [null, <gtrb:basic_living_rock_block>, null],
    [null, <botania:opencrate>, null],
    [null, null, null]
]);

# 基础mana输入总线
recipes.addShaped(<gtrb:basic_mana_input_bus>, [
    [null, <botania:opencrate>, null],
    [null, <gtrb:basic_living_rock_block>, null],
    [null, null, null]
]);

# 活木机械方块
recipes.addShaped(<gtrb:basic_living_wood_block>, [
    [<botania:livingwood:1>, <botania:livingwood:1>, <botania:livingwood:1>],
    [<ore:plateMagicOre>, <gregtech:machine:986>, <ore:plateMagicOre>],
    [<botania:livingwood:1>, <botania:livingwood:1>, <botania:livingwood:1>]
]);

# 大型mana磨粉机
recipes.addShaped(<gtrb:large_macerator>, [
    [<gregtech:meta_item_1:127>, <ore:frameGtMagicOre>, <gregtech:meta_item_1:127>],
    [<ore:plateMagicSteel>, <gtrb:basic_living_rock_block>, <ore:plateMagicSteel>],
    [<ore:circuitLv>, <botania:rune:1>, <ore:circuitLv>]
]);

# 异构转化台
recipes.addShaped(<gtrb:isomerization_platform>, [
    [<botania:managlass>, <ore:circuitLv>, <botania:managlass>],
    [<ore:plateMagicSteel>, <gtrb:basic_living_rock_block>, <ore:plateMagicSteel>],
    [<botania:managlass>, <ore:plateMagicOre>, <botania:managlass>]
]);

# 自动凝矿工厂
recipes.addShaped(<gtrb:automatic_condensation_plant>, [
    [<ore:circuitHv>, <botania:rune:5>, <ore:circuitHv>],
    [<ore:frameGtMagicSteel>, <gtrb:magic_steel_block>, <ore:frameGtMagicSteel>],
    [<botania:spark>, <botania:rune:5>, <botania:spark>]
]);

# 埃克森美孚化工厂
recipes.addShaped(<gtrb:exxonmobil_chemical_plant>, [
    [<ore:platePolytetrafluoroethylene>, <gregtech:meta_item_1:129>, <ore:platePolytetrafluoroethylene>],
    [<gregtech:cable_single:41>, <gregtech:machine:988>, <gregtech:cable_single:41>],
    [<gregtech:meta_item_1:174>, <gregtech:meta_item_1:129>, <gregtech:meta_item_1:174>]
]);