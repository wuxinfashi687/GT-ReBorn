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
    .ore(3, 3, false)
    .addOreByproducts(<material:graphite>, <material:vanadium_magnetite>)
    .components([<material:oilsands>*1, <material:coal>*2])
    .color(0x000000)
    .build();

# 黄色矿石
MaterialBuilder(32002, "yellow_ore")
    .ore(4, 10, false)
    .components([
        <material:iron>*3, <material:copper>*3, <material:tin>*3, <material:gold>*1
        ])
    .addOreByproducts(<material:sphalerite>, <material:ruby>)
    .washedIn(<material:sulfuric_acid>)
    .color(0xFFFF00)
    .build();

# 蓝色矿石
MaterialBuilder(32003, "blue_ore")
    .ore(5, 10, false)
    .components([
        <material:aluminium>*2, <material:nickel>*2, <material:diamond>*1
    ])
    .addOreByproducts(<material:asbestos>, <material:bauxite>, <material:cobaltite>)
    .washedIn(<material:sulfuric_acid>)
    .macerateInto(<material:silver>)
    .color(0x87CEFA)
    .build();

# 魔力物质矿石
MaterialBuilder(30004, "magic_ore")
    .ore(2, 2, true)
    .ingot()
    .fluid()
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
    .ore(2, 2, false)
    .color(0xC0C0C0)
    .build();

# 橙色物质矿石
MaterialBuilder(30008, "orange_ore")
    .ore(2, 2, false)
    .color(0xFFA500)
    .build();

# 精灵矿石
MaterialBuilder(30009, "elves_ore")
    .ore(2, 2, true)
    .ingot()
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .color(0x98FB98)
    .build();

# 火箭防护板
MaterialBuilder(30010, "rocket_plate")
    .flags(["generate_plate"])
    .color(0xB0C4DE)
    .build();

# 注册现有的魔力钢
MaterialBuilder(30011, "magic_steel")
    .ingot()
    .flags(["generate_plate", "generate_bolt_screw","generate_rod", "generate_ring","generate_frame"])
    .color(0x00BFFF)
    .build();

//致密板
# 致密钢板
<material:steel>.addFlags("generate_dense");
# 致密铝板
<material:aluminium>.addFlags("generate_dense");
# 致密不锈钢板
<material:stainless_steel>.addFlags("generate_dense");
# 致密钛板
<material:titanium>.addFlags("generate_dense");
