/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.01
此脚本为自定义格雷材料部分
*/

#loader gregtech
#priority 1000

import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Elements;

# 黑色矿石
MaterialBuilder(32001, "black_ore")
    .ore(2, 1, true)
    .color(0x000000)
    .build();

#黄色矿石
MaterialBuilder(32002, "yellow_ore")
    .ore(2, 1, true)
    .color(0xFFFF00)
    .build();

#蓝色矿石
MaterialBuilder(32003, "blue_ore")
    .ore(2, 1, true)
    .color(0x87CEFA)
    .build();