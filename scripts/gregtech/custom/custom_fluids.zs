/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.04
此脚本为自定义格雷流体部分
*/

#loader gregtech
#priority 9001

import mods.gregtech.material.FluidTypes;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;

# 液态Mana
MaterialBuilder(32500, "liquid_mana")
    .fluid(FluidTypes.LIQUID, true)
    .fluidTemp(300)
    .color(0x00BFFF)
    .build();