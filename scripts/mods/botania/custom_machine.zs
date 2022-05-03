/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.02
此脚本为植物魔法自定义机器配方部分
*/

import mods.botania.Apothecary;

#研究台
Apothecary.addRecipe(<researchtable:table>, [
    <botania:altar>, <botania:specialflower>.withTag({type: "hydroangeas"})
    ]);

#基础Mana生产器
recipes.addShaped(<gtrb:basic_mana_machine>, [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<botania:livingrock>, <gregtech:meta_block_frame_1875:4>, <botania:livingrock>], 
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);