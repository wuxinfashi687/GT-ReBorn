/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.05
此脚本为植物魔法配方部分
*/

import mods.botania.Apothecary;

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
