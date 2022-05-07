/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.07
此脚本为聚爆压缩机部分
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;

//致密板
var plate_array as IIngredient[] = [
    <gregtech:meta_plate:323>,
    <gregtech:meta_plate:2>,
    <gregtech:meta_plate:113>,
    <gregtech:meta_plate:324>
];

var dense_plate as IIngredient[] = [
    <gregtech:meta_plate_dense:323>,
    <gregtech:meta_plate_dense:2>,
    <gregtech:meta_plate_dense:113>,
    <gregtech:meta_plate_dense:324>
];

//for i in 0 to plate_array.length {
    //var plate_item = plate_array[i];
    //var dense_plate_item = dense_plate[i];

    implosion_compressor.recipeBuilder()
        .inputs([<ore:dustSteel>*9, <gregtech:meta_item_1:460>])
        .outputs([<gregtech:meta_plate_dense:323>, <gregtech:meta_dust_small:275>])
        .duration(600)
        .EUt(384)
        .buildAndRegister();

    implosion_compressor.recipeBuilder()
        .inputs([<ore:dustSteel>*9, <minecraft:tnt>*2])
        .outputs([<gregtech:meta_plate_dense:323>, <gregtech:meta_dust_small:275>])
        .duration(600)
        .EUt(384)
        .buildAndRegister();
//}
