/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.02
此脚本为植物魔法自定义机器配方部分
*/

import mods.gregtech.recipe.RecipeMap;

# 基础Mana生产器
recipes.addShaped(<gtrb:basic_mana_machine>, [
    [<botania:livingrock>, <gtrb:basic_botania_card>.reuse(), <botania:livingrock>],
    [<botania:livingrock>, <ore:frameGtMagicOre>, <botania:livingrock>], 
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 基础魔法发电机
recipes.addShaped(<gtrb:basic_magic_generator>, [
    [<botania:livingrock>, <gtrb:basic_botania_card>.reuse(), <botania:livingrock>],
    [<libvulpes:coil0:4>, <ore:frameGtMagicOre>, <libvulpes:coil0:4>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 基础魔法合金炉
recipes.addShaped(<gtrb:basic_magic_alloy_furnace>, [
    [<botania:livingrock>, <gtrb:basic_botania_card>.reuse(), <botania:livingrock>],
    [<ore:craftingFurnace>, <ore:frameGtMagicOre>, <ore:craftingFurnace>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 基础mana离心机
recipes.addShaped(<gtrb:centrifuge>, [
    [<botania:livingrock>, <gtrb:basic_botania_card>.reuse(), <botania:livingrock>],
    [<ore:plateDoubleMagicOre>, <ore:frameGtMagicOre>, <ore:plateDoubleMagicOre>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

# 自动种植站
recipes.addShaped(<gtrb:auto_planter>, [
    [<botania:livingrock>, <gtrb:basic_botania_card>.reuse(), <botania:livingrock>],
    [<botania:livingrock>, <gregtech:machine_casing:1>, <botania:livingrock>],
    [<gregtech:meta_plate:30004>, <botania:livingrock>, <gregtech:meta_plate:30004>]
]);

# 活石机械方块
assembler.recipeBuilder()
    .inputs([<botania:livingrock>*8, <ore:plateMagicOre>*2, <gregtech:machine_casing:1>])
    .notConsumable(<gtrb:botania_auto_control_card>)
    .outputs([<gtrb:basic_living_rock_block>*2])
    .duration(600)
    .EUt(12)
    .buildAndRegister();

# 基础mana输入仓
assembler.recipeBuilder()
    .inputs([<botania:managlass>, <gtrb:basic_living_rock_block>])
    .notConsumable(<gtrb:botania_auto_control_card>)
    .outputs(<gtrb:basic_mana_output_bus>)
    .duration(600)
    .EUt(12)
    .buildAndRegister();

# 基础mana输出总线
assembler.recipeBuilder()
    .inputs([<gtrb:basic_living_rock_block>, <botania:opencrate>])
    .notConsumable(<gtrb:botania_auto_control_card>)
    .circuit(1)
    .outputs(<gtrb:basic_mana_item_output_bus>)
    .duration(600)
    .EUt(12)
    .buildAndRegister();

# 基础mana输入总线
assembler.recipeBuilder()
    .inputs([<gtrb:basic_living_rock_block>, <botania:opencrate>])
    .notConsumable(<gtrb:botania_auto_control_card>)
    .circuit(2)
    .outputs(<gtrb:basic_mana_input_bus>)
    .duration(600)
    .EUt(12)
    .buildAndRegister();

# 活木机械方块
assembler.recipeBuilder()
    .inputs([<botania:livingwood:1>*6, <ore:plateMagicOre>*2, <gregtech:machine_casing:1>])
    .notConsumable(<gtrb:botania_auto_control_card>)
    .outputs(<gtrb:basic_living_wood_block>*2)
    .duration(600)
    .EUt(12)
    .buildAndRegister();

# 大型mana磨粉机
assembler.recipeBuilder()
    .inputs([
        <gregtech:meta_item_1:127>*2, <ore:frameGtMagicOre>, <ore:circuitLv>*2, 
        <gtrb:basic_living_rock_block>, <botania:rune:1>
        ])
    .notConsumable(<gtrb:basic_botania_auto_machine_card>)
    .outputs(<gtrb:large_macerator>)
    .duration(600)
    .EUt(12)
    .buildAndRegister();

# 异构转化台
assembler.recipeBuilder()
    .inputs([
        <botania:managlass>*4, <ore:circuitLv>, <gtrb:basic_living_rock_block>, 
        <ore:plateMagicSteel>*2, <ore:plateMagicOre>
        ])
    .notConsumable(<gtrb:basic_botania_auto_machine_card>)
    .outputs(<gtrb:isomerization_platform>)
    .duration(600)
    .EUt(12)
    .buildAndRegister();

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