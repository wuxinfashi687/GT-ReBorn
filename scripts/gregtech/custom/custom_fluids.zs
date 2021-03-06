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

# 巫妖王流体
MaterialBuilder(32501, "faioebfuufha")
    .fluid(FluidTypes.LIQUID, false)
    .fluidTemp(300)
    .color(0x5F9EA0)
    .build();

# 红色科技溶液
MaterialBuilder(32502, "red_tech_liquid")
    .fluid(FluidTypes.LIQUID, true)
    .fluidTemp(300)
    .color(0xDC143C)
    .build();