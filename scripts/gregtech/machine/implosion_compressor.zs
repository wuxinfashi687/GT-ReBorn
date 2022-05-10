/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.07
此脚本为聚爆压缩机部分
*/

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//致密板
var plate_array as IItemStack[] = [
    <gregtech:meta_plate:323>,
    <gregtech:meta_plate:2>,
    <gregtech:meta_plate:113>,
    <gregtech:meta_plate:324>
];

var dense_plate as IItemStack[] = [
    <gregtech:meta_plate_dense:323>,
    <gregtech:meta_plate_dense:2>,
    <gregtech:meta_plate_dense:113>,
    <gregtech:meta_plate_dense:324>
];

function add_implosion_recipe(outputs as IItemStack, inputs as IItemStack) as void {
    implosion_compressor.recipeBuilder()
        .inputs(inputs)
        .property("explosives", <gregtech:meta_item_1:460>) 
        .outputs([outputs, <gregtech:meta_dust_small:275>])
        .duration(600)
        .EUt(384)
        .buildAndRegister();

    implosion_compressor.recipeBuilder()
        .inputs(inputs)
        .property("explosives", 2) 
        .outputs([outputs, <gregtech:meta_dust_small:275>])
        .duration(600)
        .EUt(384)
        .buildAndRegister();
}

for i in 0 to plate_array.length {
    var plate_item = plate_array[i];
    var dense_plate_item = dense_plate[i];

    add_implosion_recipe(dense_plate_item, plate_item*9);
}
