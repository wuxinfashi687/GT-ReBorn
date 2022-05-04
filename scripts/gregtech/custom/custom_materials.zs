/* 此脚本由wuxinfashi编辑，未经许可禁止抄袭
created by 2022.05.01
此脚本为自定义格雷材料部分
*/

#loader gregtech
#priority 9000

import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Elements;

//T1矿
# 黑色矿石
MaterialBuilder(32001, "black_ore")
    .ore(2, 2, true)
    .addOreByproducts(<material:oilsands>, <material:coal>)
    .components([<material:oilsands>*1, <material:coal>*1])
    .color(0x000000)
    .build();

# 黄色矿石
MaterialBuilder(32002, "yellow_ore")
    .ore(2, 2, true)
    .color(0xFFFF00)
    .build();

# 蓝色矿石
MaterialBuilder(32003, "blue_ore")
    .ore(2, 2, true)
    .color(0x87CEFA)
    .build();

# 魔力物质矿石
MaterialBuilder(30004, "magic_ore")
    .ore(2, 2, true)
    .ingot()
    .toolStats(10.2, 7.5, 1024, 25)
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .color(0x9400D3)
    .build();

//T2矿
# 陨铁
MaterialBuilder(30005, "coahuilite")
    .ore(1, 1, false)
    .ingot()
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .color(0xDCDCDC)
    .build();

# 玄铁
MaterialBuilder(30006, "darksteel")
    .ore(1, 1, true)
    .ingot()
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .color(0x800000)
    .build();

# 银色物质矿石
MaterialBuilder(30007, "sliver_ore")
    .ore(2, 2, true)
    .color(0xC0C0C0)
    .build();

# 橙色物质矿石
MaterialBuilder(30008, "orange_ore")
    .ore(2, 2, true)
    .color(0xFFA500)
    .build();

# 精灵矿石
MaterialBuilder(30009, "elves_ore")
    .ore(2, 2, true)
    .ingot()
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .color(0x98FB98)
    .build();