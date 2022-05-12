/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.11
此脚本为高级火箭添加配方部分
*/

import mods.advancedrocketry.PrecisionAssembler;
import mods.gregtech.recipe.RecipeMap;

# 控制芯片
circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitHv>, <botania:rune:1>, <threng:material:6>])
    .fluidInputs(<liquid:soldering_alloy>*72)
    .outputs(<advancedrocketry:ic:3>)
    .duration(200)
    .EUt(384)
    .buildAndRegister();

circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitHv>, <botania:rune:1>, <threng:material:6>])
    .fluidInputs(<liquid:tin>*144)
    .outputs(<advancedrocketry:ic:3>)
    .duration(200)
    .EUt(384)
    .buildAndRegister();

# 液体芯片
circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitHv>, <ore:runeWaterB>, <threng:material:6>])
    .fluidInputs(<liquid:soldering_alloy>*72)
    .outputs(<advancedrocketry:ic:5>)
    .duration(200)
    .EUt(384)
    .buildAndRegister();

circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitHv>, <ore:runeWaterB>, <threng:material:6>])
    .fluidInputs(<liquid:tin>*144)
    .outputs(<advancedrocketry:ic:5>)
    .duration(200)
    .EUt(384)
    .buildAndRegister();

# 跟踪芯片
circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitHv>, <botania:rune:3>, <threng:material:6>])
    .fluidInputs(<liquid:soldering_alloy>*72)
    .outputs(<advancedrocketry:ic:1>)
    .duration(200)
    .EUt(384)
    .buildAndRegister();

circuit_assembler.recipeBuilder()
    .inputs([<ore:circuitHv>, <botania:rune:3>, <threng:material:6>])
    .fluidInputs(<liquid:tin>*144)
    .outputs(<advancedrocketry:ic:1>)
    .duration(200)
    .EUt(384)
    .buildAndRegister();

# 火箭组装机
recipes.addShaped(<advancedrocketry:rocketbuilder>, [
    [<gregtech:meta_item_1:130>, <gregtech:meta_item_1:307>, <gregtech:meta_item_1:175>],
    [<advancedrocketry:ic:3>, <gregtech:machine:989>, <advancedrocketry:ic:3>],
    [<ore:cableGtSingleAluminium>, <gregtech:stone_bricks_small:5>, <ore:cableGtSingleAluminium>]
]);

# 燃油站
recipes.addShaped(<advancedrocketry:fuelingstation>, [
    [<ore:plateSteel>, <gregtech:meta_item_1:307>, <ore:plateSteel>],
    [<advancedrocketry:ic:5>, <gregtech:machine:989>, <advancedrocketry:ic:5>],
    [<gregtech:meta_item_1:130>, <gregtech:meta_item_1:145>, <gregtech:meta_item_1:130>]
]);

# 导航电脑
recipes.addShaped(<advancedrocketry:guidancecomputer>, [
    [<ore:circuitHv>, <gregtech:meta_item_1:130>, <ore:circuitHv>],
    [<advancedrocketry:ic:1>, <gregtech:machine:989>, <advancedrocketry:ic:1>],
    [<ore:circuitHv>, <gregtech:meta_item_1:130>, <ore:circuitHv>]
]);