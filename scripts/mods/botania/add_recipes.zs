/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.05
此脚本为植物魔法配方部分
*/

import mods.botania.Apothecary;
import mods.botania.ManaInfusion;

# 研究台
Apothecary.addRecipe(<researchtable:table>, [
    <botania:altar>, <botania:specialflower>.withTag({type: "hydroangeas"})
    ]);

# 火红莲
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "endoflame"}), [
    <ore:petalBrown>, <ore:petalBrown>, <ore:petalRed>, <ore:petalLightGray>,
    <ore:dustSteel>, <ore:dustMagicOre>
]);

# 花药台
for i in 0 to 16 {
    recipes.addShaped(<botania:altar>, [
        [<ore:plateMagicOre>, <botania:petal>.definition.makeStack(i), <ore:plateMagicOre>],
        [null, <ore:cobblestone>, null],
        [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
    ]);
}

# 魔力钢转换
recipes.addShapeless(<gregtech:meta_block_compressed_1875:11>, [
    <botania:storage>
]);

recipes.addShapeless(<botania:manaresource>, [
    <gregtech:meta_ingot:30011>
]);

# 魔力钢
ManaInfusion.addInfusion(<botania:manaresource>, <ore:dustSteel>, 5000);

# 魔力钢机械方块
recipes.addShaped(<gtrb:magic_steel_block>, [
    [<ore:plateMagicSteel>, <ore:plateMagicSteel>, <ore:plateMagicSteel>],
    [<ore:plateMagicSteel>, <gregtech:meta_tool:8>, <ore:plateMagicSteel>],
    [<ore:plateMagicSteel>, <ore:plateMagicSteel>, <ore:plateMagicSteel>]
]);
