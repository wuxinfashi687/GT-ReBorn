/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.01
此脚本为矿物处理配方部分
*/

import mods.gregtech.recipe.RecipeMap;

# 黑色矿石出油砂
centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_dust:32001>)
    .outputs([<gregtech:meta_dust:271>, <gregtech:meta_dust:1597>])
    .duration(60)
    .EUt(12)
    .buildAndRegister();

# 下界石英和赛特斯石英粉
chemical_bath.recipeBuilder()
    .inputs(<ore:quartzMana>)
    .fluidInputs(<liquid:water>*100)
    .outputs([<gregtech:meta_dust:214>, <minecraft:quartz>])
    .duration(100)
    .EUt(12)
    .buildAndRegister();

# 黑色矿粉出稀土
chemical_bath.recipeBuilder()
    .inputs(<gregtech:meta_dust:32001>*8)
    .fluidInputs(<liquid:sodium_persulfate>*1000)
    .outputs(<gregtech:meta_dust:1598>)
    .duration(100)
    .EUt(384)
    .buildAndRegister();

# 离心月面土
centrifuge.recipeBuilder()
    .inputs(<advancedrocketry:moonturf>)
    .outputs(<gregtech:meta_dust:1598>)
    .fluidOutputs(<liquid:helium_3>*144)
    .duration(100)
    .EUt(96)
    .buildAndRegister();

//添加矿辞
# 魔力钢转换
<ore:ingotManasteel>.add(<gregtech:meta_ingot:30011>);
<ore:blockMagicSteel>.add(<botania:storage>);